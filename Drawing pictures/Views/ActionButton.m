//
//  ActionButton.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <Foundation/Foundation.h>
#include "ActionButton.h"

#import "UIFont+MyFont.h"
#import "UIColor+MyColors.h"

@implementation ActionButton

-(void)setup {
    [self setTitleColor:UIColor.lightGreenSea forState:UIControlStateNormal];
    self.backgroundColor = UIColor.whiteColor;
    self.layer.shadowColor = UIColor.quarterBlack.CGColor;
    self.layer.shadowRadius = 1;
    self.layer.shadowOffset = CGSizeZero;
    [self setContentEdgeInsets:UIEdgeInsetsMake(5.0, 21.0, 5.0, 21.0)];
    UIFont *font = [UIFont montserratWithSize:18.0 andType:Medium];
    self.titleLabel.font = font;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
        self.showsTouchWhenHighlighted = true;
        self.layer.cornerRadius = 10.0;
    }
    return self;
}

-(instancetype) initWithCoder:(NSCoder *)coder {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"init(coder:) has not been implemented" userInfo:nil];
}

-(void) setHighlightedWithDissolve:(BOOL)highlighted  {
    [self setHighlighted:highlighted];
    [UIView transitionWithView:self
                    duration:0.2
                    options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^(void){
        if (self.isHighlighted){
            self.layer.shadowRadius = 2.0;
            self.layer.shadowColor = UIColor.lightGreenSea.CGColor;
        } else {
            self.layer.shadowRadius = 1.0;
            self.layer.shadowColor = UIColor.quarterBlack.CGColor;
        }
    }
                    completion:^(bool v){}];
}
@end
