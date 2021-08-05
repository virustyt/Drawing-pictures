//
//  ViewController.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 03.08.2021.
//

#import "ModalViewController.h"
#import "UIColor+MyColors.h"
@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface TimerViewController : ModalViewController
@property void (^callback)(Float64);
@end

NS_ASSUME_NONNULL_END
