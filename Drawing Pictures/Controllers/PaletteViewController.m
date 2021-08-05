//
//  PaletteViewController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "PaletteViewController.h"

@interface PaletteViewController ()
@property (strong,nonatomic) NSMutableArray* colors;
@property (strong,nonatomic) NSMutableArray* selectedColors;
@property (strong,nonatomic) NSTimer* timer;
@property (readwrite,strong,nonatomic) UIStackView* topRow;
@property (readwrite,strong,nonatomic) UIStackView* botRow;
@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.saveButton];
    [NSLayoutConstraint activateConstraints:@[
        [self.saveButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20.0],
        [self.saveButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40.0]
    ]];
    
    UIStackView *verticalStack = [UIStackView new];
    verticalStack.translatesAutoresizingMaskIntoConstraints = false;
    
    if ([self.colors count] >=6 ){
        for (int i = 0; i < 6; i++){
            [self.topRow addArrangedSubview:[self buildButton:self.colors[i]]];
            
        }
        for (long i = [self.colors count] - 6; i < [self.colors count]; i++){
            [self.botRow addArrangedSubview:[self buildButton:self.colors[i]]];
            
        }
    }
    
    [verticalStack addArrangedSubview:self.topRow];
    [verticalStack addArrangedSubview:self.botRow];
    
    [verticalStack setAxis:UILayoutConstraintAxisVertical];
    [verticalStack setSpacing:20.0];
    
    [self.view addSubview:verticalStack];
    
    [NSLayoutConstraint activateConstraints:@[
        [verticalStack.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:17.0],
        [verticalStack.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-18.0],
        [verticalStack.topAnchor constraintEqualToAnchor:self.saveButton.bottomAnchor constant:30]
    ]];
}

-(NSMutableArray*) selectedColors{
    if (_selectedColors){
        return _selectedColors;
    } else {
        NSMutableArray *array = [NSMutableArray new];
        _selectedColors = array;
        return array;
    }
}

-(ActionButton*) saveButton {
    if(_saveButton){
        return _saveButton;
    } else {
        ActionButton* button = [[ActionButton alloc] init];
        [button setTitle:@"Save" forState:UIControlStateNormal];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        _saveButton = button;
        return button;
    }
}

-(UIStackView*) topRow{
    if (_topRow){
        return _topRow;
    } else {
        UIStackView* stack = [UIStackView new];
        stack.axis = UILayoutConstraintAxisHorizontal;
        stack.distribution = UIStackViewDistributionEqualSpacing;
        stack.alignment = UIStackViewAlignmentCenter;
        _topRow = stack;
        return stack;
    }
}

-(UIStackView*) botRow{
    if (_botRow){
        return _botRow;
    } else {
        UIStackView* stack = [UIStackView new];
        stack.axis = UILayoutConstraintAxisHorizontal;
        stack.distribution = UIStackViewDistributionEqualSpacing;
        stack.alignment = UIStackViewAlignmentCenter;
        _botRow = stack;
        return stack;
    }
}

-(NSMutableArray*) colors{
    NSArray *arrayOfColors = @[
        [UIColor colorWithRed:0.886 green:0.106 blue:0.173 alpha:1],
        [UIColor colorWithRed:0.243 green:0.09 blue:0.8 alpha:1],
        [UIColor colorWithRed:0 green:0.486 blue:0.216 alpha:1],
        [UIColor colorWithRed:0.502 green:0.502 blue:0.502 alpha:1],
        [UIColor colorWithRed:0.616 green:0.369 blue:0.918 alpha:1],
        [UIColor colorWithRed:1 green:0.478 blue:0.408 alpha:1],
        [UIColor colorWithRed:1 green:0.678 blue:0.329 alpha:1],
        [UIColor colorWithRed:0 green:0.682 blue:0.929 alpha:1],
        [UIColor colorWithRed:1 green:0.467 blue:0.635 alpha:1],
        [UIColor colorWithRed:0 green:0.18 blue:0.235 alpha:1],
        [UIColor colorWithRed:0.055 green:0.216 blue:0.094 alpha:1],
        [UIColor colorWithRed:0.38 green:0.059 blue:0.063 alpha:1]
    ];
    return [arrayOfColors mutableCopy];
}
 
-(PaletteControl*) buildButton:(UIColor *)color{
    PaletteControl *likeButton = [[PaletteControl alloc] init:color];
    [likeButton addTarget:self action:@selector(paletteButtonHandler:) forControlEvents:UIControlEventTouchUpInside];
    return likeButton;
}

-(void) setupBackgrounTimer{
    if (self.timer) {
        [self.timer invalidate];
    }
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:false block:^(NSTimer* timer){
        self.view.backgroundColor = UIColor.whiteColor;
        [timer invalidate];
    }];
    self.timer = timer;
    [NSRunLoop.currentRunLoop addTimer:timer forMode:NSRunLoopCommonModes];
}

-(void) saveAction:(ActionButton*) sender{
    self.callback(self.selectedColors);
}

-(void) paletteButtonHandler:(PaletteControl*) selectedPaletteControl{
    if (selectedPaletteControl.isOn){
        for (id color in self.selectedColors){
            if ([color isKindOfClass:UIColor.class]){
                if ([(UIColor*) color isEqual: selectedPaletteControl.subviews[0].backgroundColor]){
                    [self.selectedColors removeObject:color];
                }
            }
        }
    } else {
        if ([self.selectedColors count] == 3){
            UIColor *firstSelectedColor = [self.selectedColors firstObject];
            NSArray *allPaletteControls =[[self.topRow arrangedSubviews] arrayByAddingObjectsFromArray:
                                          [self.botRow arrangedSubviews]];
            
            for (id paletteControl in allPaletteControls){
                if([paletteControl isKindOfClass:PaletteControl.class]){
                    if ( [((PaletteControl*) paletteControl).subviews[0].backgroundColor isEqual: firstSelectedColor]){
                        ((PaletteControl*) paletteControl).isOn = false;
                    }
                }
            }
            [self.selectedColors removeObjectAtIndex:0];
        }
        [self.selectedColors addObject:selectedPaletteControl.subviews[0].backgroundColor];
        NSLog(@"%lu, %lu", (unsigned long)[self.selectedColors count],(unsigned long)[selectedPaletteControl.subviews count]);
        self.view.backgroundColor = selectedPaletteControl.subviews[0].backgroundColor;
        [self setupBackgrounTimer];
    }
}
@end
