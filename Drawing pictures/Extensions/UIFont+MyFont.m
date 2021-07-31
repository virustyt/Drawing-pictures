//
//  UIFont+MyFont.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import "UIFont+MyFont.h"

@implementation UIFont (MyFont)
+(UIFont*) montserratWithSize:(CGFloat) size andType:(TypeOfMontserrat) typeOfMontserrat{
    NSString *fontType = [NSString new];
    switch (typeOfMontserrat) {
        case Regular:
            fontType = @"Montserrat-regular";
            break;
        case Medium:
            fontType = @"Montserrat-medium";
            break;
    }
    
    return [UIFont fontWithName:fontType size:size];
}
@end
