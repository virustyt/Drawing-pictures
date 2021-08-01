//
//  HeadPath.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <Foundation/Foundation.h>
#include "HeadPath.h"


@implementation HeadPath

-(CGPathRef) pathOne {
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(61.5, 29)];
    [path addLineToPoint:CGPointMake(77, 89)];
    [path addLineToPoint:CGPointMake(89, 121)];
    [path addLineToPoint:CGPointMake(106.5, 131.5)];
    [path addLineToPoint:CGPointMake(133.5, 154)];
    [path addLineToPoint:CGPointMake(157, 159.5)];
    [path addLineToPoint:CGPointMake(193, 142)];
    [path addLineToPoint:CGPointMake(220, 112)];
    [path addLineToPoint:CGPointMake(228.5, 100)];
    [path addLineToPoint:CGPointMake(230.5, 50.5)];
    [path addLineToPoint:CGPointMake(218.5, 89)];
    [path addLineToPoint:CGPointMake(202, 43.5)];
    [path addLineToPoint:CGPointMake(191, 60.5)];
    [path addLineToPoint:CGPointMake(189, 83.5)];
    [path addLineToPoint:CGPointMake(193, 96)];
    return path.CGPath;
}
-(CGPathRef) pathTwo {
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(184, 100)];
    [path addLineToPoint:CGPointMake(175.5, 98.5)];
    [path addLineToPoint:CGPointMake(166, 100.5)];
    [path addLineToPoint:CGPointMake(158, 101.5)];
    [path addLineToPoint:CGPointMake(148.5, 100.5)];
    [path addLineToPoint:CGPointMake(140, 99)];
    [path addLineToPoint:CGPointMake(133.5, 98.5)];
    [path addLineToPoint:CGPointMake(126, 100)];
    [path addLineToPoint:CGPointMake(121.5, 102)];
    [path addLineToPoint:CGPointMake(127.5, 104.5)];
    [path addLineToPoint:CGPointMake(132, 108)];
    [path addLineToPoint:CGPointMake(136.5, 113)];
    [path addLineToPoint:CGPointMake(142.5, 115.5)];
    [path addLineToPoint:CGPointMake(150, 116.5)];
    [path addLineToPoint:CGPointMake(157, 115.5)];
    [path addLineToPoint:CGPointMake(164.5, 116.5)];
    [path addLineToPoint:CGPointMake(170.5, 115.5)];
    [path addLineToPoint:CGPointMake(177, 111.5)];
    [path addLineToPoint:CGPointMake(184, 103.5)];
    [path addLineToPoint:CGPointMake(188.5, 97.5)];
    [path addLineToPoint:CGPointMake(180.5, 96.5)];
    [path addLineToPoint:CGPointMake(171.5, 95.5)];
    [path addLineToPoint:CGPointMake(162.5, 93.5)];
    [path addLineToPoint:CGPointMake(154, 93)];
    [path addLineToPoint:CGPointMake(144, 94.5)];
    [path addLineToPoint:CGPointMake(135, 96.5)];
    [path addLineToPoint:CGPointMake(125, 97.5)];
    [path addLineToPoint:CGPointMake(118, 97)];
    [path addLineToPoint:CGPointMake(127.5, 91)];
    [path addLineToPoint:CGPointMake(136.5, 84.5)];
    [path addLineToPoint:CGPointMake(142.5, 81)];
    [path addLineToPoint:CGPointMake(147.5, 82.5)];
    [path addLineToPoint:CGPointMake(153, 84.5)];
    [path addLineToPoint:CGPointMake(159.5, 83.5)];
    [path addLineToPoint:CGPointMake(166, 82.5)];
    [path addLineToPoint:CGPointMake(174.5, 84.5)];
    [path addLineToPoint:CGPointMake(179.5, 89.5)];
    [path addLineToPoint:CGPointMake(187, 94)];
    return path.CGPath;
}
-(CGPathRef) pathThree {
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(189, 102.5)];
    [path addLineToPoint:CGPointMake(194, 108.5)];
    [path addLineToPoint:CGPointMake(196.5, 115)];
    [path addLineToPoint:CGPointMake(193, 124)];
    [path addLineToPoint:CGPointMake(186, 132.5)];
    [path addLineToPoint:CGPointMake(177, 139.5)];
    [path addLineToPoint:CGPointMake(167.5, 132.5)];
    [path addLineToPoint:CGPointMake(157, 128.5)];
    [path addLineToPoint:CGPointMake(135.5, 132.5)];
    [path addLineToPoint:CGPointMake(127.5, 142)];
    [path addLineToPoint:CGPointMake(121, 154.5)];
    [path addLineToPoint:CGPointMake(109.5, 147.5)];
    [path addLineToPoint:CGPointMake(101.5, 137.5)];
    [path addLineToPoint:CGPointMake(93, 128.5)];
    [path addLineToPoint:CGPointMake(86, 199)];
    [path addLineToPoint:CGPointMake(74.5, 207.5)];
    [path addLineToPoint:CGPointMake(63.5, 214.5)];
    [path addLineToPoint:CGPointMake(81, 221)];
    [path addLineToPoint:CGPointMake(94.5, 229.5)];
    [path addLineToPoint:CGPointMake(105, 243.5)];
    [path addLineToPoint:CGPointMake(119, 261)];
    [path addLineToPoint:CGPointMake(138, 279)];
    [path addLineToPoint:CGPointMake(157, 285.5)];
    [path addLineToPoint:CGPointMake(186, 277.5)];
    [path addLineToPoint:CGPointMake(199.5, 261)];
    [path addLineToPoint:CGPointMake(209.5, 239.5)];
    [path addLineToPoint:CGPointMake(219, 223.5)];
    [path addLineToPoint:CGPointMake(233.5, 217)];
    [path addLineToPoint:CGPointMake(230.5, 201.5)];
    [path addLineToPoint:CGPointMake(221, 173)];
    [path addLineToPoint:CGPointMake(219, 150)];
    [path addLineToPoint:CGPointMake(212, 137.5)];
    [path addLineToPoint:CGPointMake(204, 145.5)];
    [path addLineToPoint:CGPointMake(196.5, 154.5)];
    [path addLineToPoint:CGPointMake(180, 170.5)];
    [path addLineToPoint:CGPointMake(170, 185)];
    [path addLineToPoint:CGPointMake(161.5, 206.5)];
    [path addLineToPoint:CGPointMake(158.5, 232.5)];
    return path.CGPath;
}

@end

