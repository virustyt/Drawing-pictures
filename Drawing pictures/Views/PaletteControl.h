//
//  PaletteView.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

@import UIKit;
#import "ColorOnPaletteView.h"

#ifndef PaletteView_h
#define PaletteView_h
@interface PaletteControl : UIControl
@property (readonly) UIView* colorView;
@property (nonatomic) bool isOn;
-(void) setup;
-(instancetype) init:(UIColor*) color;
@end
#endif /* PaletteView_h */
