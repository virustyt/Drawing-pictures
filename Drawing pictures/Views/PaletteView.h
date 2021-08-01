//
//  PaletteView.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

@import UIKit;
#import "ColorOnButtonView.h"

#ifndef PaletteView_h
#define PaletteView_h
@interface PaletteView : UIControl
@property (readonly) UIView* colorView;
@property (nonatomic) bool isOn;
-(void) setup;
@end
#endif /* PaletteView_h */
