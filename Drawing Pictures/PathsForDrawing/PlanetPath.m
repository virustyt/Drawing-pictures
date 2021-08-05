//
//  PlanetPath.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <Foundation/Foundation.h>
#import "PlanetPath.h"

@implementation PlanetPath

-(CGPathRef) pathOne{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint: CGPointMake(60.5, 154)];
    [path addLineToPoint:  CGPointMake(51.5, 158)];
    [path addLineToPoint:  CGPointMake(42.5, 165)];
    [path addLineToPoint:  CGPointMake(34, 173)];
    [path addLineToPoint:  CGPointMake(28, 181)];
    [path addLineToPoint:  CGPointMake(26, 189)];
    [path addLineToPoint:  CGPointMake(27, 197)];
    [path addLineToPoint:  CGPointMake(31, 203.5)];
    [path addLineToPoint:  CGPointMake(38, 209)];
    [path addLineToPoint:  CGPointMake(48.5, 213.5)];
    [path addLineToPoint:  CGPointMake(59.5, 216)];
    [path addLineToPoint:  CGPointMake(71, 217)];
    [path addLineToPoint:  CGPointMake(82, 217.5)];
    [path addLineToPoint:  CGPointMake(88.5, 217.3)];
    [path moveToPoint: CGPointMake(60.5, 154)];
    [path addLineToPoint:  CGPointMake(61, 147)];
    [path addLineToPoint:  CGPointMake(63.5, 134.5)];
    [path addLineToPoint:  CGPointMake(67, 124)];
    [path addLineToPoint:  CGPointMake(71.5, 112.5)];
    [path addLineToPoint:  CGPointMake(77, 104)];
    [path addLineToPoint:  CGPointMake(84, 94.5)];
    [path addLineToPoint:  CGPointMake(92, 87)];
    [path addLineToPoint:  CGPointMake(100, 81.5)];
    [path addLineToPoint:  CGPointMake(108.5, 76.5)];
    [path  addCurveToPoint:  CGPointMake(120, 71.5) controlPoint1: CGPointMake(112.17, 75) controlPoint2: CGPointMake(119.6, 71.9)];
    [path  addCurveToPoint:  CGPointMake(131, 68) controlPoint1: CGPointMake(120.4, 71.1) controlPoint2: CGPointMake(127.5, 69)];
    [path addLineToPoint:  CGPointMake(147.5, 66.5)];
    [path addLineToPoint:  CGPointMake(161.5, 67.5)];
    [path addLineToPoint:  CGPointMake(175.5, 70)];
    [path addLineToPoint:  CGPointMake(188, 75)];
    [path addLineToPoint:  CGPointMake(200, 82.5)];
    [path addLineToPoint:  CGPointMake(208.5, 89.5)];
    [path addLineToPoint:  CGPointMake(215.5, 96.5)];
    [path addLineToPoint:  CGPointMake(221.5, 103.5)];
    [path moveToPoint: CGPointMake(60.5, 154)];
    [path addLineToPoint:  CGPointMake(60.5, 160.5)];
    [path addLineToPoint:  CGPointMake(61.5, 168)];
    [path moveToPoint: CGPointMake(221.5, 103.5)];
    [path addLineToPoint:  CGPointMake(230.5, 102)];
    [path addLineToPoint:  CGPointMake(242.5, 101.5)];
    [path addLineToPoint:  CGPointMake(254, 103)];
    [path addLineToPoint:  CGPointMake(264.5, 107)];
    [path addLineToPoint:  CGPointMake(271.5, 112.5)];
    [path addLineToPoint:  CGPointMake(274, 120)];
    [path addLineToPoint:  CGPointMake(273.5, 129)];
    [path addLineToPoint:  CGPointMake(270, 137.5)];
    [path addLineToPoint:  CGPointMake(259.5, 151)];
    [path addLineToPoint:  CGPointMake(251, 159.5)];
    [path addLineToPoint:  CGPointMake(238, 169.5)];
    [path addLineToPoint:  CGPointMake(234.67, 171.5)];
    [path moveToPoint: CGPointMake(221.5, 103.5)];
    [path addLineToPoint:  CGPointMake(225, 108.5)];
    [path addLineToPoint:  CGPointMake(228, 115)];
    [path moveToPoint: CGPointMake(61.5, 168)];
    [path addLineToPoint:  CGPointMake(57.5, 170.5)];
    [path addLineToPoint:  CGPointMake(54, 175)];
    [path addLineToPoint:  CGPointMake(52.5, 180)];
    [path addLineToPoint:  CGPointMake(53, 185)];
    [path addLineToPoint:  CGPointMake(55.5, 189)];
    [path addLineToPoint:  CGPointMake(60.5, 192)];
    [path addLineToPoint:  CGPointMake(68, 195)];
    [path addLineToPoint:  CGPointMake(70.5, 195.47)];
    [path moveToPoint: CGPointMake(61.5, 168)];
    [path addLineToPoint:  CGPointMake(64, 176.5)];
    [path addLineToPoint:  CGPointMake(66.5, 185)];
    [path addLineToPoint:  CGPointMake(70.5, 195.47)];
    [path moveToPoint: CGPointMake(228, 115)];
    [path addLineToPoint:  CGPointMake(234.5, 115)];
    [path addLineToPoint:  CGPointMake(242.5, 118)];
    [path addLineToPoint:  CGPointMake(245.5, 122)];
    [path addLineToPoint:  CGPointMake(246, 128)];
    [path addLineToPoint:  CGPointMake(244.5, 133.5)];
    [path addLineToPoint:  CGPointMake(240.5, 139)];
    [path addLineToPoint:  CGPointMake(236.83, 143)];
    [path moveToPoint: CGPointMake(228, 115)];
    [path addLineToPoint:  CGPointMake(231, 122)];
    [path addLineToPoint:  CGPointMake(234.67, 133.5)];
    [path addLineToPoint:  CGPointMake(236.83, 143)];
    [path moveToPoint: CGPointMake(88.5, 217.3)];
    [path addLineToPoint:  CGPointMake(98.5, 217)];
    [path addLineToPoint:  CGPointMake(119.5, 214.5)];
    [path addLineToPoint:  CGPointMake(137, 211)];
    [path addLineToPoint:  CGPointMake(152.5, 207)];
    [path addLineToPoint:  CGPointMake(172, 201)];
    [path addLineToPoint:  CGPointMake(191.5, 193.5)];
    [path addLineToPoint:  CGPointMake(207, 186.5)];
    [path addLineToPoint:  CGPointMake(223, 178.5)];
    [path addLineToPoint:  CGPointMake(234.67, 171.5)];
    [path moveToPoint: CGPointMake(88.5, 217.3)];
    [path addLineToPoint:  CGPointMake(93.5, 223)];
    [path addLineToPoint:  CGPointMake(101.5, 229)];
    [path addLineToPoint:  CGPointMake(110.5, 233.5)];
    [path addLineToPoint:  CGPointMake(119.5, 237)];
    [path addLineToPoint:  CGPointMake(130.5, 240.5)];
    [path addLineToPoint:  CGPointMake(143, 242.5)];
    [path addLineToPoint:  CGPointMake(155, 242.5)];
    [path addLineToPoint:  CGPointMake(166, 241.5)];
    [path addLineToPoint:  CGPointMake(175.5, 239)];
    [path addLineToPoint:  CGPointMake(183, 236)];
    [path addLineToPoint:  CGPointMake(192.5, 231.5)];
    [path addLineToPoint:  CGPointMake(200, 226.5)];
    [path addLineToPoint:  CGPointMake(206, 222)];
    [path addLineToPoint:  CGPointMake(214, 213.5)];
    [path addLineToPoint:  CGPointMake(222, 203.5)];
    [path addLineToPoint:  CGPointMake(227.5, 194)];
    [path addLineToPoint:  CGPointMake(232.5, 182)];
    [path addLineToPoint:  CGPointMake(234.67, 171.5)];
    [path moveToPoint: CGPointMake(236.83, 143)];
    [path addLineToPoint:  CGPointMake(235, 145)];
    [path addLineToPoint:  CGPointMake(230, 150)];
    [path addLineToPoint:  CGPointMake(224, 154.5)];
    [path addLineToPoint:  CGPointMake(216.5, 159.5)];
    [path addLineToPoint:  CGPointMake(209.5, 164)];
    [path addLineToPoint:  CGPointMake(202.5, 168)];
    [path addLineToPoint:  CGPointMake(195.5, 171.5)];
    [path addLineToPoint:  CGPointMake(186.5, 176)];
    [path addLineToPoint:  CGPointMake(175, 181)];
    [path addLineToPoint:  CGPointMake(163.5, 185)];
    [path addLineToPoint:  CGPointMake(151.5, 188.5)];
    [path addLineToPoint:  CGPointMake(140, 191.5)];
    [path addLineToPoint:  CGPointMake(128, 194)];
    [path addLineToPoint:  CGPointMake(116, 196)];
    [path addLineToPoint:  CGPointMake(104, 197)];
    [path addLineToPoint:  CGPointMake(92.5, 197.5)];
    [path addLineToPoint:  CGPointMake(83.5, 197)];
    [path addLineToPoint:  CGPointMake(76, 196.5)];
    [path addLineToPoint:  CGPointMake(70.5, 195.47)];
        
    return path.CGPath;
}
-(CGPathRef) pathTwo{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint: CGPointMake(156, 114.5)];
    [path addLineToPoint:  CGPointMake(162, 111.5)];
    [path addLineToPoint:  CGPointMake(171.5, 106)];
    [path addLineToPoint:  CGPointMake(181, 99)];
    [path addLineToPoint:  CGPointMake(187.5, 92)];
    [path addLineToPoint:  CGPointMake(191.5, 85)];
    [path addLineToPoint:  CGPointMake(194, 79)];
    [path moveToPoint: CGPointMake(109.5, 93)];
    [path addLineToPoint:  CGPointMake(102.5, 92.5)];
    [path addLineToPoint:  CGPointMake(96.5, 90.5)];
    [path addLineToPoint:  CGPointMake(91.5, 87.5)];
    [path moveToPoint: CGPointMake(120, 91.5)];
    [path addLineToPoint:  CGPointMake(127.5, 89.5)];
    [path addLineToPoint:  CGPointMake(135.5, 87)];
    [path addLineToPoint:  CGPointMake(143.5, 82.5)];
    [path  addCurveToPoint:  CGPointMake(151, 77) controlPoint1: CGPointMake(145.83, 80.83) controlPoint2: CGPointMake(150.6, 77.4)];
    [path  addCurveToPoint:  CGPointMake(155.5, 72) controlPoint1: CGPointMake(151.4, 76.6) controlPoint2: CGPointMake(154.17, 73.5)];
    [path addLineToPoint:  CGPointMake(157.5, 67.5)];
    [path moveToPoint: CGPointMake(97.5, 108.5)];
    [path addLineToPoint:  CGPointMake(102, 109.5)];
    [path addLineToPoint:  CGPointMake(109.5, 109.5)];
    [path addLineToPoint:  CGPointMake(117.5, 108.5)];
    [path addLineToPoint:  CGPointMake(124.5, 107)];
    [path addLineToPoint:  CGPointMake(133, 105)];
    [path moveToPoint: CGPointMake(103, 128)];
    [path  addCurveToPoint:  CGPointMake(107, 127.5) controlPoint1: CGPointMake(103.4, 128) controlPoint2: CGPointMake(105.83, 127.67)];
    [path addLineToPoint:  CGPointMake(111.5, 127)];
    [path addLineToPoint:  CGPointMake(115.5, 126)];
    [path moveToPoint: CGPointMake(94.5, 127.5)];
    [path addLineToPoint:  CGPointMake(87, 127)];
    [path addLineToPoint:  CGPointMake(80, 124.5)];
    [path  addCurveToPoint:  CGPointMake(73.5, 121.5) controlPoint1: CGPointMake(78, 123.5) controlPoint2: CGPointMake(73.9, 121.5)];
    [path  addCurveToPoint:  CGPointMake(69, 119) controlPoint1: CGPointMake(73.1, 121.5) controlPoint2: CGPointMake(70.33, 119.83)];
    [path moveToPoint: CGPointMake(86.5, 166.5)];
    [path addLineToPoint:  CGPointMake(78.5, 165)];
    [path addLineToPoint:  CGPointMake(69.5, 161.5)];
    [path addLineToPoint:  CGPointMake(60.5, 156)];
    [path moveToPoint: CGPointMake(106.5, 166.5)];
    [path addLineToPoint:  CGPointMake(112, 166.5)];
    [path addLineToPoint:  CGPointMake(116.5, 166)];
    [path addLineToPoint:  CGPointMake(125.5, 164.5)];
    [path addLineToPoint:  CGPointMake(136, 162)];
    [path addLineToPoint:  CGPointMake(145.5, 159.5)];
    [path addLineToPoint:  CGPointMake(155, 156.5)];
    [path addLineToPoint:  CGPointMake(164.5, 153.5)];
    [path addLineToPoint:  CGPointMake(174.5, 149)];
    [path addLineToPoint:  CGPointMake(184, 144.5)];
    [path addLineToPoint:  CGPointMake(192, 139.5)];
    [path addLineToPoint:  CGPointMake(198, 135.5)];
    [path addLineToPoint:  CGPointMake(203.5, 132)];
    [path moveToPoint: CGPointMake(212, 124)];
    [path addLineToPoint:  CGPointMake(216, 119)];
    [path addLineToPoint:  CGPointMake(219.5, 113)];
    [path addLineToPoint:  CGPointMake(222.5, 105.5)];
    [path moveToPoint: CGPointMake(125.5, 145)];
    [path addLineToPoint:  CGPointMake(133.5, 143)];
    [path addLineToPoint:  CGPointMake(146.5, 139)];
    [path addLineToPoint:  CGPointMake(155, 136)];
    [path addLineToPoint:  CGPointMake(164, 132)];
    [path addLineToPoint:  CGPointMake(171.5, 128.5)];
    [path addLineToPoint:  CGPointMake(178, 125)];
    [path moveToPoint: CGPointMake(86.5, 184)];
    [path addLineToPoint:  CGPointMake(93.5, 184.5)];
    [path addLineToPoint:  CGPointMake(101, 184.5)];
    [path addLineToPoint:  CGPointMake(109, 183.5)];
    [path moveToPoint: CGPointMake(190.5, 159.5)];
    [path addLineToPoint:  CGPointMake(196.5, 157.5)];
    [path addLineToPoint:  CGPointMake(204, 153)];
    [path addLineToPoint:  CGPointMake(213, 146)];
    [path addLineToPoint:  CGPointMake(219, 141.5)];
    [path addLineToPoint:  CGPointMake(223, 137)];
    [path moveToPoint: CGPointMake(167, 213.5)];
    [path addLineToPoint:  CGPointMake(171.5, 212.5)];
    [path addLineToPoint:  CGPointMake(180.5, 209)];
    [path addLineToPoint:  CGPointMake(188.5, 205.5)];
    [path addLineToPoint:  CGPointMake(195, 202.5)];
    [path addLineToPoint:  CGPointMake(201, 199.5)];
    [path addLineToPoint:  CGPointMake(203.5, 196.5)];
    [path moveToPoint: CGPointMake(208.5, 209)];
    [path addLineToPoint:  CGPointMake(214.5, 205.5)];
    [path addLineToPoint:  CGPointMake(220, 201.5)];
    [path addLineToPoint:  CGPointMake(227.5, 194)];
    [path moveToPoint: CGPointMake(198, 215)];
    [path addLineToPoint:  CGPointMake(190.5, 218.5)];
    [path addLineToPoint:  CGPointMake(180, 222.5)];
    [path addLineToPoint:  CGPointMake(170, 226)];
    [path addLineToPoint:  CGPointMake(159, 229)];
    [path addLineToPoint:  CGPointMake(148.5, 231.5)];
    [path addLineToPoint:  CGPointMake(134.5, 233)];
    [path addLineToPoint:  CGPointMake(121, 233.5)];
    [path addLineToPoint:  CGPointMake(109.5, 233)];
   
    return path.CGPath;
}
-(CGPathRef) pathThree{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint: CGPointMake(252.5, 181)];
    [path addLineToPoint:  CGPointMake(257.5, 177.5)];
    [path addLineToPoint:  CGPointMake(264.5, 178)];
    [path addLineToPoint:  CGPointMake(269, 181.5)];
    [path addLineToPoint:  CGPointMake(270.5, 186.5)];
    [path addLineToPoint:  CGPointMake(269.5, 191)];
    [path addLineToPoint:  CGPointMake(266.5, 195.5)];
    [path addLineToPoint:  CGPointMake(261.5, 197)];
    [path addLineToPoint:  CGPointMake(255.5, 196)];
    [path addLineToPoint:  CGPointMake(251.5, 192)];
    [path addLineToPoint:  CGPointMake(250, 187)];
    [path addLineToPoint:  CGPointMake(252.5, 181)];
    [path closePath];
    [path moveToPoint: CGPointMake(240, 211)];
    [path addLineToPoint:  CGPointMake(242, 209)];
    [path addLineToPoint:  CGPointMake(244.5, 209)];
    [path addLineToPoint:  CGPointMake(246.5, 210.5)];
    [path addLineToPoint:  CGPointMake(247, 213)];
    [path addLineToPoint:  CGPointMake(246, 215)];
    [path addLineToPoint:  CGPointMake(243.5, 216)];
    [path addLineToPoint:  CGPointMake(241, 215.5)];
    [path addLineToPoint:  CGPointMake(239.5, 213.5)];
    [path addLineToPoint:  CGPointMake(240, 211)];
    [path closePath];
    [path moveToPoint: CGPointMake(74.5, 242)];
    [path addLineToPoint:  CGPointMake(76.5, 241)];
    [path addLineToPoint:  CGPointMake(79.5, 242)];
    [path  addCurveToPoint:  CGPointMake(81, 244.5) controlPoint1: CGPointMake(80, 242.67) controlPoint2: CGPointMake(81, 244.1)];
    [path  addCurveToPoint:  CGPointMake(81, 247.5) controlPoint1: CGPointMake(81, 244.9) controlPoint2: CGPointMake(81.17, 246.83)];
    [path addLineToPoint:  CGPointMake(78.5, 249)];
    [path addLineToPoint:  CGPointMake(75, 249)];
    [path addLineToPoint:  CGPointMake(73.5, 247)];
    [path addLineToPoint:  CGPointMake(73, 244.5)];
    [path addLineToPoint:  CGPointMake(74.5, 242)];
    [path closePath];
    [path moveToPoint: CGPointMake(35.5, 76.5)];
    [path  addCurveToPoint:  CGPointMake(41.5, 72) controlPoint1: CGPointMake(37.33, 75) controlPoint2: CGPointMake(41.1, 72)];
    [path addLineToPoint:  CGPointMake(48, 71)];
    [path addLineToPoint:  CGPointMake(54.5, 73)];
    [path addLineToPoint:  CGPointMake(60.5, 80)];
    [path addLineToPoint:  CGPointMake(61, 89.5)];
    [path addLineToPoint:  CGPointMake(57, 97)];
    [path addLineToPoint:  CGPointMake(48.5, 101)];
    [path addLineToPoint:  CGPointMake(39.5, 99)];
    [path addLineToPoint:  CGPointMake(33.5, 94.5)];
    [path addLineToPoint:  CGPointMake(31.5, 85.5)];
    [path addLineToPoint:  CGPointMake(35.5, 76.5)];
    [path closePath];
    [path moveToPoint: CGPointMake(217, 51)];
    [path  addCurveToPoint:  CGPointMake(222.5, 50) controlPoint1: CGPointMake(218, 50.67) controlPoint2: CGPointMake(222.1, 50)];
    [path addLineToPoint:  CGPointMake(227, 53)];
    [path addLineToPoint:  CGPointMake(227.5, 58)];
    [path addLineToPoint:  CGPointMake(225.5, 62)];
    [path addLineToPoint:  CGPointMake(220.5, 63.5)];
    [path addLineToPoint:  CGPointMake(215.5, 61)];
    [path addLineToPoint:  CGPointMake(214, 55.5)];
    [path addLineToPoint:  CGPointMake(217, 51)];
    [path closePath];

    return path.CGPath;
}

@end