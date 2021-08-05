//
//  UIView+ToPNGDataMethod.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import "UIView+ToPNGDataMethod.h"

@implementation UIView (ToPNGDataMethod)
-(NSData*) asImage {
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithBounds:self.bounds];
    return [renderer PNGDataWithActions:^(UIGraphicsImageRendererContext *context){
        [self.layer renderInContext:context.CGContext];
    }];
}
@end
