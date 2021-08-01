//
//  PaletteViewController.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import <UIKit/UIKit.h>
#import "PaletteControl.h"
#import "ActionButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaletteViewController : UIViewController

@property void(^callback)(NSMutableArray*);
@property (strong,nonatomic) ActionButton* saveButton;
@property (readonly,strong,nonatomic) UIStackView* topRow;
@property (readonly,strong,nonatomic) UIStackView* botRow;
-(PaletteControl*) buildButton:(UIColor*) color;
-(void)setupBackgrounTimer;

@end

NS_ASSUME_NONNULL_END
