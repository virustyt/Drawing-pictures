//
//  ModalViewController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "ModalViewController.h"
#import "UIColor+MyColors.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.layer.shadowRadius = 4;
    self.view.layer.shadowOpacity = 1.0;
    self.view.layer.shadowOffset = CGSizeZero;
    self.view.layer.shadowColor = UIColor.quarterBlack.CGColor;
    self.view.layer.cornerRadius = 40.0;
    self.view.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
     self.view.backgroundColor = UIColor.whiteColor;
}

@end
