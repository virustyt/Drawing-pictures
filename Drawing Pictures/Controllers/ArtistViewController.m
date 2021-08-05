//
//  ArtisiViewController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "ArtistViewController.h"

static const NSTimeInterval interval = 1/60;
static const CGFloat (^step)(NSTimeInterval) =
^(NSTimeInterval interval){ return ((CGFloat) (1/(60.0*(double)interval))); };

@interface ArtistViewController ()
@property (strong,nonatomic) CanvasView* canvasView;
@property (strong,nonatomic) ActionButton* paletteBatton;
@property (strong,nonatomic) ActionButton* timerButton;
@property (strong,nonatomic) ActionButton* drawResetButton;
@property (strong,nonatomic) ActionButton* shareButton;
@property (strong,nonatomic) PaletteViewController *paletteViewController;
@property (strong,nonatomic) TimerViewController *timerViewController;
@property (strong,nonatomic) UIBarButtonItem *rightBarButtonItem;
@property (strong,nonatomic) DrawingsViewController* drawingViewController;
@end

@implementation ArtistViewController

-(DrawingsViewController*) drawingViewController{
    if(_drawingViewController){
        return _drawingViewController;
    } else {
        DrawingsViewController *controller = [DrawingsViewController new];
        _drawingViewController = controller;
        return controller;
    }
}

-(CanvasView*) canvasView {
    if (_canvasView) {
        return _canvasView;
    } else {
        CanvasView *view = [[CanvasView alloc] init];
        view.translatesAutoresizingMaskIntoConstraints = false;
        [[view.heightAnchor constraintEqualToConstant:300.0] setActive:true];
        [[view.widthAnchor constraintEqualToConstant:300.0] setActive:true];
        _canvasView = view;
        return view;
    }
}

-(ActionButton*) paletteBatton{
    if(_paletteBatton) {
        return _paletteBatton;
    } else {
        ActionButton *button = [ActionButton new];
        [button setTitle:@"Open palette" forState:UIControlStateNormal];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(paletteAction:) forControlEvents:UIControlEventTouchUpInside];
        _paletteBatton = button;
        return button;
    }
}

-(ActionButton*) timerButton{
    if(_timerButton) {
        return _timerButton;
    } else {
        ActionButton *button = [ActionButton new];
        [button setTitle:@"Open timer" forState:UIControlStateNormal];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(timerAction:) forControlEvents:UIControlEventTouchUpInside];
        _timerButton = button;
        return button;
    }
}

-(ActionButton*) drawResetButton{
    if(_drawResetButton) {
        return _drawResetButton;
    } else {
        ActionButton *button = [ActionButton new];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(drawResetAction:) forControlEvents:UIControlEventTouchUpInside];
        _drawResetButton = button;
        return button;
    }
}

-(ActionButton*) shareButton{
    if(_shareButton) {
        return _shareButton;
    } else {
        ActionButton *button = [ActionButton new];
        [button setTitle:@"Share" forState:UIControlStateNormal];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(shareImage) forControlEvents:UIControlEventTouchUpInside];
        _shareButton = button;
        return button;
    }
}

-(PaletteViewController*) paletteViewController{
    if(_paletteViewController) {
        return _paletteViewController;
    } else {
        PaletteViewController *controller = [PaletteViewController new];
        controller.callback = ^(NSMutableArray *colors) {
            __weak ArtistViewController *weakSelf = self;
            [weakSelf.canvasView provideColors:colors];
            [weakSelf hideChild:weakSelf.paletteViewController];
        };
        _paletteViewController = controller;
        return controller;
    }
}

-(TimerViewController*) timerViewController{
    if(_timerViewController) {
        return _timerViewController;
    } else {
        TimerViewController *controller = [TimerViewController new];
        controller.callback = ^(Float64 time) {
            __weak ArtistViewController *weakSelf = self;
            weakSelf.time = time;
            [weakSelf hideChild:weakSelf.timerViewController];
        };
        _timerViewController = controller;
        return controller;
    }
}


-(UIBarButtonItem*) rightBarButtonItem{
    if(_rightBarButtonItem) {
        return _rightBarButtonItem;
    } else {
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Drawings" style:UIBarButtonItemStylePlain target:self action:@selector(showDrawings)];
        
        UIFont *font = [UIFont montserratWithSize:17.0 andType:Regular];
        NSDictionary *attributes = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
        [item setTitleTextAttributes:attributes forState:UIControlStateNormal];
        [item setTitleTextAttributes:attributes forState:UIControlStateHighlighted];
        _rightBarButtonItem = item;
        return item;
    }
}


// MARK: - UIViewController overrides
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationItem setTitle:@"Lets draw!"];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self.view addSubview:self.canvasView];
    [self.view addSubview:self.paletteBatton];
    [self.view addSubview:self.timerButton];
    [self.view addSubview:self.drawResetButton];
    [self.view addSubview:self.shareButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.canvasView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:40.0],
        
        [self.paletteBatton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
        [self.paletteBatton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50.0],
        
        [self.drawResetButton.leadingAnchor constraintEqualToAnchor:self.paletteBatton.trailingAnchor constant:60.0],
        [self.drawResetButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50.0],
        
        [self.timerButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
        [self.timerButton.topAnchor constraintEqualToAnchor:self.paletteBatton.bottomAnchor constant:20.0],
        
        [self.shareButton.trailingAnchor constraintLessThanOrEqualToAnchor:self.drawResetButton.trailingAnchor],
        [self.shareButton.topAnchor constraintEqualToAnchor:self.drawResetButton.bottomAnchor constant:20.0]
    ]];
    
    self.navigationItem.rightBarButtonItem = self.rightBarButtonItem;
    
    [self setupIdleState];
}

-(instancetype) init{
    self = [super init];
    if(self) {
        self.time = 1.0;
        self.state = Idle;
    }
    return self;
}

// MARK: - Private interface
-(void) paletteAction:(ActionButton*) sender{
    [self showChild:self.paletteViewController];
}

-(void) timerAction:(ActionButton*) sender{
    [self showChild:self.timerViewController];
}

-(void) drawResetAction:(ActionButton*) sender{
    if(self.state == Idle) {
        [self.canvasView prepare:PathToDraw.shared.DrawPaths];
        [self setupDrawState];
        [self.timer invalidate];
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:interval repeats:true block:^(NSTimer *timer){
            
            __weak ArtistViewController *weakSelf = self;
            if(weakSelf.fierDate){
                if (NSDate.now.timeIntervalSince1970 - weakSelf.fierDate.timeIntervalSince1970 <= weakSelf.time){
                    weakSelf.canvasView.shapeLayerOne.strokeEnd += step(weakSelf.time);
                    weakSelf.canvasView.shapeLayerTwo.strokeEnd += step(weakSelf.time);
                    weakSelf.canvasView.shapeLayerThree.strokeEnd += step(weakSelf.time);
                }else {
                    [weakSelf.timer invalidate];
                    [weakSelf setupDoneState];
                }
            }
        }];
        self.timer = timer;
        self.fierDate = NSDate.now;
        [NSRunLoop.currentRunLoop addTimer:timer forMode:NSRunLoopCommonModes];
    } else {
        [self setupIdleState];
    }
}

-(void) showDrawings{
    [self.navigationController pushViewController:self.drawingViewController animated:true];
}

-(void) shareImage{
    if([self.canvasView asImage]){
        UIActivityViewController *activity = [[UIActivityViewController alloc] initWithActivityItems:@[[self.canvasView asImage]] applicationActivities:nil];
        
        [self presentViewController:activity animated:true completion:^(void){}];
    }
}

-(void)showChild:(UIViewController*) controller{
    controller.view.translatesAutoresizingMaskIntoConstraints = false;
    [self addChildViewController:controller];
    [self.view addSubview:controller.view];
    
    [NSLayoutConstraint activateConstraints:@[
            [controller.view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
            [controller.view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
            [controller.view.topAnchor constraintEqualToAnchor:self.view.centerYAnchor],
            [controller.view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
        ]];
    [controller didMoveToParentViewController:self];
}

-(void) hideChild:(UIViewController*) controller{
    [controller willMoveToParentViewController:nil];
    [controller.view removeFromSuperview];
    [controller removeFromParentViewController];
}

// MARK: - Drawing Logic
-(void)setupIdleState{
    self.state = Idle;
    
    [self.drawResetButton setTitle:@"Draw" forState:UIControlStateNormal];
    
    [self.timerButton setEnabled:true];
    [self.paletteBatton setEnabled:true];
    [self.shareButton setEnabled:true];
    
    [self.timerButton setAlpha:1.0];
    [self.paletteBatton setAlpha:1.0];
    [self.shareButton setAlpha:0.5];
    
    self.canvasView.shapeLayerOne.strokeEnd = 0.0;
    self.canvasView.shapeLayerTwo.strokeEnd = 0.0;
    self.canvasView.shapeLayerThree.strokeEnd = 0.0;
}

-(void)setupDrawState{
    self.state = Drawing;
    
    [self.timerButton setEnabled:false];
    [self.paletteBatton setEnabled:false];
    [self.shareButton setEnabled:false];
    
    [self.timerButton setAlpha:0.5];
    [self.paletteBatton setAlpha:0.5];
    [self.shareButton setAlpha:0.5];
}

-(void)setupDoneState{
    self.state = Done;
    
    [self.drawResetButton setTitle:@"Reset" forState:UIControlStateNormal];
    
    [self.drawResetButton setEnabled:true];
    [self.shareButton setEnabled:true];
    
    [self.drawResetButton setAlpha:1.0];
    [self.shareButton setAlpha:1.0];
}
@end
