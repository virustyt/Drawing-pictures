//
//  CanvasView.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import <UIKit/UIKit.h>
#import "PathToDraw.h"
#import "UIColor+MyColors.h"

NS_ASSUME_NONNULL_BEGIN

@interface CanvasView : UIView
@property (strong,nonatomic) CAShapeLayer *shapeLayerOne;
@property (strong,nonatomic) CAShapeLayer *shapeLayerTwo;
@property (strong,nonatomic) CAShapeLayer *shapeLayerThree;
@property (strong,nonatomic,readonly) NSMutableArray *allShapeLayers;
-(void) setup;
-(void) provideColors: (NSMutableArray*) colors;
-(void) prepare: (PathToDraw*) path;
@end
NS_ASSUME_NONNULL_END

