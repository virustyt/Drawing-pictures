//
//  DrawingsViewController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 03.08.2021.
//

#import "DrawingsViewController.h"

@interface DrawingsViewController ()
@property (strong,nonatomic) DrawButton *planetButton;
@property (strong,nonatomic) DrawButton *headButton;
@property (strong,nonatomic) DrawButton *treeButton;
@property (strong,nonatomic) DrawButton *landscapeButton;
@end

@implementation DrawingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIStackView *stack = [[UIStackView alloc] init];
    stack.axis = UILayoutConstraintAxisVertical;
    stack.spacing = 15;
    stack.translatesAutoresizingMaskIntoConstraints = false;
    
    [stack addSubview:self.planetButton];
    [stack addSubview:self.headButton];
    [stack addSubview:self.treeButton];
    [stack addSubview:self.landscapeButton];
    [self.view addSubview:stack];
    
    [NSLayoutConstraint activateConstraints:@[
        [stack.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:50.0],
        [stack.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor]
        ]];
    self.navigationItem.title = @"Drawings";
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setUpHoghLights];
}

-(DrawButton*) planetButton {
    if (_planetButton){
        return _planetButton;
    } else {
        DrawButton *button = [[DrawButton alloc] init];
        [button setTitle:@"Planet" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(handlerButton:) forControlEvents:UIControlEventTouchUpInside];
        return button;
    }
}

-(DrawButton*) headButton {
    if (_headButton){
        return _headButton;
    } else {
        DrawButton *button = [[DrawButton alloc] init];
        [button setTitle:@"Planet" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(handlerButton:) forControlEvents:UIControlEventTouchUpInside];
        return button;
    }
}

-(DrawButton*) treeButton {
    if (_treeButton){
        return _treeButton;
    } else {
        DrawButton *button = [[DrawButton alloc] init];
        [button setTitle:@"Planet" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(handlerButton:) forControlEvents:UIControlEventTouchUpInside];
        return button;
    }
}

-(DrawButton*) landscapeButton {
    if (_landscapeButton){
        return _landscapeButton;
    } else {
        DrawButton *button = [[DrawButton alloc] init];
        [button setTitle:@"Planet" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(handlerButton:) forControlEvents:UIControlEventTouchUpInside];
        return button;
    }
}

-(void)handlerButton:(DrawButton*) button{
    if ([button isEqual:self.headButton]){
        PathToDraw.shared.DrawPaths = [[HeadPath alloc] init];
    } else if ([button isEqual:self.landscapeButton]) {
        PathToDraw.shared.DrawPaths = [[LandscapePath alloc] init];
    } else if ([button isEqual:self.planetButton]){
        PathToDraw.shared.DrawPaths = [[PlanetPath alloc] init];
    } else {
        PathToDraw.shared.DrawPaths = [[TreePath alloc] init];
    }
    
    [self.headButton setHighlighted:false];
    [self.planetButton setHighlighted:false];
    [self.treeButton setHighlighted:false];
    [self.landscapeButton setHighlighted:false];
    [self.navigationController popViewControllerAnimated:true];
}

-(void) setUpHoghLights{
    if ([PathToDraw.shared.DrawPaths isEqual:HeadPath.class]){
        [self.headButton setHighlighted:true];
    } else if ([PathToDraw.shared.DrawPaths isEqual:LandscapePath.class]){
        [self.landscapeButton setHighlighted:true];
    } else if ([PathToDraw.shared.DrawPaths isEqual:TreePath.class]){
        [self.treeButton setHighlighted:true];
    } else {
        [self.planetButton setHighlighted:true];
    }
}
@end
