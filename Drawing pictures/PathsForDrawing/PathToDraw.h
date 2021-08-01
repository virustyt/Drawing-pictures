//
//  PathToDraw.h
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

@import UIKit;
#ifndef PathToDraw_h
#define PathToDraw_h

@protocol PathTemplate <NSObject>
@required
@property (class,readonly,nonatomic) CGPathRef pathOne;
@property (class,readonly,nonatomic) CGPathRef pathTwo;
@property (class,readonly,nonatomic) CGPathRef pathThree;
@end

@interface PathToDraw : NSObject
@property (class,readonly,nonatomic) PathToDraw* shared;
@property id<PathTemplate> DrawPaths;
@end
#endif /* PathToDraw_h */
