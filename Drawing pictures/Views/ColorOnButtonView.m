//
//  ColorView.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "ColorOnButtonView.h"

@implementation ColorOnButtonView

-(instancetype) initWithColor:(UIColor*) color{
    self = [super init];
    if(self) {
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.backgroundColor = color;
        self.layer.cornerRadius = 8.0;
    }
    return self;
}

@end
