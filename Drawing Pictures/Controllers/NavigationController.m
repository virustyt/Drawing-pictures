//
//  NavigationController.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 03.08.2021.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setTranslucent:false];
    self.navigationBar.barTintColor = UIColor.whiteColor;
    
    UIFont *font = [UIFont montserratWithSize:17.0 andType:Regular];
    
    NSDictionary *forAtributedString = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    
    [self.navigationBar setTitleTextAttributes:forAtributedString];
}



@end
