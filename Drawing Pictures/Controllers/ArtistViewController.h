//
//  ArtisiViewController.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "ActionButton.h"
#import "PaletteViewController.h"
#import "TimerViewController.h"
#import "DrawingsViewController.h"

#import "UIFont+MyFont.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,State) {
    Idle,
    Drawing,
    Done
};

@interface ArtistViewController : UIViewController

@property NSTimer* timer;
@property NSTimeInterval time;
@property State state;
@property NSDate* fierDate;

@end

NS_ASSUME_NONNULL_END
