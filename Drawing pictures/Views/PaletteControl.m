//
//  PaletteView.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import "PaletteControl.h"

@interface PaletteControl ()
@property NSLayoutConstraint* smallWidthContraint;
@property NSLayoutConstraint* smallHeightContraint;

@property NSLayoutConstraint* wideWidthContraint;
@property NSLayoutConstraint* wideHeightContraint;

@property (readwrite) UIColor* color;
@end

@implementation PaletteControl

-(CGSize) intrinsicContentSize {
    return CGSizeMake(40.0, 40.0);
}

-(void) setIsOn:(BOOL)isOn {
    self.isOn = isOn;
    if (isOn) {
        [self select];
    } else {
        [self deselect];
    }
}

-(instancetype) init:(UIColor*) color{
    self = [super init];
    if (self) {
        self.color = color;
        self.isOn = false;
        [self setup];
    }
    return self;
}

-(instancetype) initWithCoder:(NSCoder *)coder {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"init(coder:) has not been implemented" userInfo:nil];
}

-(void) select {
    [NSLayoutConstraint activateConstraints:@[
            self.wideWidthContraint,
            self.wideHeightContraint
        ]];
    [NSLayoutConstraint deactivateConstraints:@[
        self.smallWidthContraint,
        self.smallHeightContraint
    ]];
    [UIView animateWithDuration:0.2 animations:^{
            [self layoutIfNeeded];
    }];
}

-(void) deselect {
    [NSLayoutConstraint deactivateConstraints:@[
            self.wideWidthContraint,
            self.wideHeightContraint
        ]];
    [NSLayoutConstraint activateConstraints:@[
        self.smallWidthContraint,
        self.smallHeightContraint
    ]];
    [UIView animateWithDuration:0.2 animations:^{
            [self layoutIfNeeded];
    }];
}

-(void) setup {
    ColorOnPaletteView *colorOnButtonView = [[ColorOnPaletteView alloc]
                                            initWithColor:UIColor.blackColor];
    
    self.smallWidthContraint = [colorOnButtonView.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:0.6];
    self.smallHeightContraint = [colorOnButtonView.heightAnchor constraintEqualToAnchor:self.heightAnchor multiplier:0.6];
    self.wideWidthContraint = [colorOnButtonView.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:0.9];
    self.wideHeightContraint = [colorOnButtonView.heightAnchor constraintEqualToAnchor:self.heightAnchor multiplier:0.9];
    
    [self addSubview:colorOnButtonView];
    
    [NSLayoutConstraint activateConstraints:@[
        self.smallWidthContraint,
        self.smallHeightContraint,
        [colorOnButtonView.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
        [colorOnButtonView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
    
    self.backgroundColor = UIColor.whiteColor;
    self.layer.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor;
    self.layer.shadowRadius = 2.0;
    self.layer.shadowOpacity = 1.0;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.cornerRadius = 10;
}

-(UIView*) hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    if ([self pointInside:point withEvent:event]) {
        return self;
    }
    return [super hitTest:point withEvent:event];
}

-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    self.isOn = !self.isOn;
}
@end
