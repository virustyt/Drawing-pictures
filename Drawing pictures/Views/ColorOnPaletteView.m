//
//  ColorView.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "ColorOnPaletteView.h"

@implementation ColorOnPaletteView

-(instancetype) initWithColor:(UIColor*) color{
    self = [super init];
    if(self) {
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.backgroundColor = color;
        self.layer.cornerRadius = 8.0;
    }
    return self;
}

-(instancetype) initWithCoder:(NSCoder *)coder {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"init(coder:) has not been implemented" userInfo:nil];
}
@end
