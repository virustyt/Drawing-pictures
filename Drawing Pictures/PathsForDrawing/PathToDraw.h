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
@property (readonly,nonatomic) CGPathRef pathOne;
@property (readonly,nonatomic) CGPathRef pathTwo;
@property (readonly,nonatomic) CGPathRef pathThree;
@end

@interface PathToDraw : NSObject
@property (class,readonly,nonatomic) PathToDraw* shared;
@property id<PathTemplate> DrawPaths;
@end
#endif /* PathToDraw_h */
