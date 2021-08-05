//
//  ViewController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 03.08.2021.
//

#import "TimerViewController.h"
#include "ActionButton.h"

@interface TimerViewController ()
@property (strong,nonatomic) ActionButton *saveButton;
@property (strong,nonatomic) UILabel *leftTimeLabel;
@property (strong,nonatomic) UILabel *rightTimeLabel;
@property (strong,nonatomic) UILabel *centerTimeLabel;
@property (strong,nonatomic) UISlider *sliderView;
@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.sliderView];
    [self.view addSubview:self.leftTimeLabel];
    [self.view addSubview:self.rightTimeLabel];
    [self.view addSubview:self.centerTimeLabel];
    [self.view addSubview:self.saveButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.saveButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20.0],
        [self.saveButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40.0],
        
        [self.sliderView.topAnchor constraintEqualToAnchor:self.saveButton.bottomAnchor constant:30.0],
        [self.sliderView.leadingAnchor constraintEqualToAnchor:self.leftTimeLabel.trailingAnchor constant:20.0],
        [self.sliderView.trailingAnchor constraintEqualToAnchor:self.rightTimeLabel.leadingAnchor constant:-20.0],
        
        [self.leftTimeLabel.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
        [self.leftTimeLabel.centerYAnchor constraintEqualToAnchor:self.sliderView.centerYAnchor],
        
        [self.rightTimeLabel.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-20.0],
        [self.rightTimeLabel.centerYAnchor constraintEqualToAnchor:self.sliderView.centerYAnchor],
        
        [self.centerTimeLabel.centerXAnchor constraintEqualToAnchor:self.sliderView.centerXAnchor],
        [self.centerTimeLabel.topAnchor constraintEqualToAnchor:self.sliderView.bottomAnchor constant:25.0],
        ]];
}

-(ActionButton*) saveButton {
    if (_saveButton) {
        return _saveButton;
    } else {
        ActionButton *button = [[ActionButton alloc] init];
        [button setTitle:@"Save" forState:UIControlStateNormal];
        button.translatesAutoresizingMaskIntoConstraints = false;
        [button addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        _saveButton = button;
        return button;
    }
}

-(UILabel*) leftTimeLabel{
    if (_leftTimeLabel) {
        return _leftTimeLabel;
    } else {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"1.0";
        label.translatesAutoresizingMaskIntoConstraints = false;
        _leftTimeLabel = label;
        return label;
    }
}

-(UILabel*) rightTimeLabel{
    if (_rightTimeLabel) {
        return _rightTimeLabel;
    } else {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"5.0";
        label.translatesAutoresizingMaskIntoConstraints = false;
        _rightTimeLabel = label;
        return label;
    }
}


-(UILabel*) centerTimeLabel{
    if (_centerTimeLabel) {
        return _centerTimeLabel;
    } else {
        UILabel *label = [[UILabel alloc] init];
        label.text = @"1.00";
        label.translatesAutoresizingMaskIntoConstraints = false;
        _centerTimeLabel = label;
        return label;
    }
}

-(UISlider*) sliderView {
    if (_sliderView) {
        return _sliderView;
    } else {
        UISlider *slider = [[UISlider alloc] init];
        slider.minimumValue = 1.0;
        slider.maximumValue = 5.0;
        slider.tintColor = UIColor.lightGreenSea;
        slider.translatesAutoresizingMaskIntoConstraints = false;
        [slider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
        _sliderView = slider;
        return slider;
    }
}

-(void) saveAction: (ActionButton*) sender {
    self.callback(self.sliderView.value);
}

-(void) sliderValueChanged {
    self.centerTimeLabel.text = [[NSString alloc] initWithFormat:@"%.2f", self.sliderView.value];
}
@end
