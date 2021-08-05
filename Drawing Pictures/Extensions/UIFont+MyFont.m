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
            fontType = @"Montserrat-Regular";
            break;
        case Medium:
            fontType = @"Montserrat-Medium";
            break;
    }
    
    if ([UIFont fontWithName:fontType size:size]){
        return [UIFont fontWithName:fontType size:size];
    } else {
        return [UIFont systemFontOfSize:size];
    }
}
@end
