//
//  UIFont+MyFont.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,TypeOfMontserrat){
    Regular,
    Medium
};

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (MyFont)
+(UIFont*) montserratWithSize:(CGFloat) size andType:(TypeOfMontserrat) typeOfMontserrat;
@end

NS_ASSUME_NONNULL_END
