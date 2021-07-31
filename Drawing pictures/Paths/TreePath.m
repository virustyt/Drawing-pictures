//
//  TreePath.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <Foundation/Foundation.h>
#import "TreePath.h"

@implementation TreePath

+(CGPathRef) pathOne {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(233.19,85.76)];
    [path addCurveToPoint:CGPointMake(220.5,62) controlPoint1: CGPointMake(237,68.49) controlPoint2: CGPointMake(229.61,62)];
    [path addCurveToPoint:CGPointMake(215.97,62.55) controlPoint1: CGPointMake(218.93,62) controlPoint2: CGPointMake(217.41,62.19)];
    [path addCurveToPoint:CGPointMake(199.5,49) controlPoint1: CGPointMake(215.41,54.99) controlPoint2: CGPointMake(208.25,49)];
    [path addCurveToPoint:CGPointMake(191.6,50.77) controlPoint1: CGPointMake(196.64,49) controlPoint2: CGPointMake(193.94,49.64)];
    [path addCurveToPoint:CGPointMake(180.5,47) controlPoint1: CGPointMake(188.67,48.43) controlPoint2: CGPointMake(184.77,47)];
    [path addCurveToPoint:CGPointMake(175.97,47.55) controlPoint1: CGPointMake(178.93,47) controlPoint2: CGPointMake(177.41,47.19)];
    [path addCurveToPoint:CGPointMake(159.5,34) controlPoint1: CGPointMake(175.41,39.99) controlPoint2: CGPointMake(168.25,34)];
    [path addCurveToPoint:CGPointMake(145.59,40.7) controlPoint1: CGPointMake(153.65,34) controlPoint2: CGPointMake(148.52,36.67)];
    [path addCurveToPoint:CGPointMake(140.5,40) controlPoint1: CGPointMake(143.98,40.25) controlPoint2: CGPointMake(142.28,40)];
    [path addCurveToPoint:CGPointMake(130.81,42.77) controlPoint1: CGPointMake(136.88,40) controlPoint2: CGPointMake(133.53,41.03)];
    [path addCurveToPoint:CGPointMake(125.5,42) controlPoint1: CGPointMake(129.14,42.27) controlPoint2: CGPointMake(127.36,42)];
    [path addCurveToPoint:CGPointMake(111.59,48.7) controlPoint1: CGPointMake(119.65,42) controlPoint2: CGPointMake(114.52,44.67)];
    [path addCurveToPoint:CGPointMake(106.5,48) controlPoint1: CGPointMake(109.98,48.25) controlPoint2: CGPointMake(108.28,48)];
    [path addCurveToPoint:CGPointMake(90,62.5) controlPoint1: CGPointMake(97.39,48) controlPoint2: CGPointMake(90,54.49)];
    [path addCurveToPoint:CGPointMake(90.01,63.02) controlPoint1: CGPointMake(90,62.68) controlPoint2: CGPointMake(90,62.85)];
    [path addCurveToPoint:CGPointMake(88.59,64.7) controlPoint1: CGPointMake(89.49,63.55) controlPoint2: CGPointMake(89.02,64.11)];
    [path addCurveToPoint:CGPointMake(83.5,64) controlPoint1: CGPointMake(86.98,64.25) controlPoint2: CGPointMake(85.28,64)];
    [path addCurveToPoint:CGPointMake(67,78.5) controlPoint1: CGPointMake(74.39,64) controlPoint2: CGPointMake(67,70.49)];
    [path addCurveToPoint:CGPointMake(68.58,84.71) controlPoint1: CGPointMake(67,80.72) controlPoint2: CGPointMake(67.57,82.83)];
    [path addCurveToPoint:CGPointMake(66,92.5) controlPoint1: CGPointMake(66.95,86.96) controlPoint2: CGPointMake(66,89.63)];
    [path addCurveToPoint:CGPointMake(67.19,97.92) controlPoint1: CGPointMake(66,94.42) controlPoint2: CGPointMake(66.42,96.25)];
    [path addCurveToPoint:CGPointMake(64,106.5) controlPoint1: CGPointMake(65.19,100.33) controlPoint2: CGPointMake(64,103.29)];
    [path addCurveToPoint:CGPointMake(65.58,112.71) controlPoint1: CGPointMake(64,108.72) controlPoint2: CGPointMake(64.57,110.83)];
    [path addCurveToPoint:CGPointMake(63,120.5) controlPoint1: CGPointMake(63.95,114.96) controlPoint2: CGPointMake(63,117.63)];
    [path addCurveToPoint:CGPointMake(79.5,135) controlPoint1: CGPointMake(63,128.51) controlPoint2: CGPointMake(70.39,135)];
    [path addCurveToPoint:CGPointMake(81.68,134.88) controlPoint1: CGPointMake(80.24,135) controlPoint2: CGPointMake(80.96,134.96)];
    [path addCurveToPoint:CGPointMake(96.5,143) controlPoint1: CGPointMake(84.36,139.69) controlPoint2: CGPointMake(89.99,143)];
    [path addCurveToPoint:CGPointMake(104.35,141.26) controlPoint1: CGPointMake(99.34,143) controlPoint2: CGPointMake(102.02,142.37)];
    [path addCurveToPoint:CGPointMake(119.5,150) controlPoint1: CGPointMake(106.89,146.4) controlPoint2: CGPointMake(112.72,150)];
    [path addCurveToPoint:CGPointMake(121.68,149.88) controlPoint1: CGPointMake(120.24,150) controlPoint2: CGPointMake(120.96,149.96)];
    [path addCurveToPoint:CGPointMake(136.5,158) controlPoint1: CGPointMake(124.36,154.69) controlPoint2: CGPointMake(129.99,158)];
    [path addCurveToPoint:CGPointMake(145,155.93) controlPoint1: CGPointMake(139.61,158) controlPoint2: CGPointMake(142.52,157.24)];
    [path addCurveToPoint:CGPointMake(149.66,157.6) controlPoint1: CGPointMake(146.43,156.69) controlPoint2: CGPointMake(147.99,157.26)];
    [path addCurveToPoint:CGPointMake(162.5,163) controlPoint1: CGPointMake(152.68,160.9) controlPoint2: CGPointMake(157.31,163)];
    [path addCurveToPoint:CGPointMake(170.35,161.26) controlPoint1: CGPointMake(165.34,163) controlPoint2: CGPointMake(168.02,162.37)];
    [path addCurveToPoint:CGPointMake(185.5,170) controlPoint1: CGPointMake(172.89,166.4) controlPoint2: CGPointMake(178.72,170)];
    [path addCurveToPoint:CGPointMake(187.68,169.88) controlPoint1: CGPointMake(186.24,170) controlPoint2: CGPointMake(186.96,169.96)];
    [path addCurveToPoint:CGPointMake(202.5,178) controlPoint1: CGPointMake(190.36,174.69) controlPoint2: CGPointMake(195.99,178)];
    [path addCurveToPoint:CGPointMake(211,175.93) controlPoint1: CGPointMake(205.61,178) controlPoint2: CGPointMake(208.52,177.24)];
    [path addCurveToPoint:CGPointMake(219.5,178) controlPoint1: CGPointMake(213.48,177.24) controlPoint2: CGPointMake(216.39,178)];
    [path addCurveToPoint:CGPointMake(236,163.5) controlPoint1: CGPointMake(228.61,178) controlPoint2: CGPointMake(236,171.51)];
    [path addCurveToPoint:CGPointMake(235.99,162.99) controlPoint1: CGPointMake(236,163.33) controlPoint2: CGPointMake(236,163.16)];
    [path addCurveToPoint:CGPointMake(236.5,163) controlPoint1: CGPointMake(236.16,163) controlPoint2: CGPointMake(236.33,163)];
    [path addCurveToPoint:CGPointMake(245,160.93) controlPoint1: CGPointMake(239.61,163) controlPoint2: CGPointMake(242.52,162.24)];
    [path addCurveToPoint:CGPointMake(253.5,163) controlPoint1: CGPointMake(247.48,162.24) controlPoint2: CGPointMake(250.39,163)];
    [path addCurveToPoint:CGPointMake(270,148.5) controlPoint1: CGPointMake(262.61,163) controlPoint2: CGPointMake(270,156.51)];
    [path addCurveToPoint:CGPointMake(269.66,145.56) controlPoint1: CGPointMake(270,147.49) controlPoint2: CGPointMake(269.88,146.51)];
    [path addCurveToPoint:CGPointMake(277,133.5) controlPoint1: CGPointMake(274.09,142.96) controlPoint2: CGPointMake(277,138.53)];
    [path addCurveToPoint:CGPointMake(273.19,124.24) controlPoint1: CGPointMake(277,129.98) controlPoint2: CGPointMake(275.57,126.75)];
    [path addCurveToPoint:CGPointMake(280,112.5) controlPoint1: CGPointMake(277.32,121.6) controlPoint2: CGPointMake(280,117.33)];
    [path addCurveToPoint:CGPointMake(263.5,98) controlPoint1: CGPointMake(280,104.49) controlPoint2: CGPointMake(272.61,98)];
    [path addCurveToPoint:CGPointMake(258.96,98.55) controlPoint1: CGPointMake(261.93,98) controlPoint2: CGPointMake(260.41,98.19)];
    [path addCurveToPoint:CGPointMake(242.5,85) controlPoint1: CGPointMake(258.41,90.99) controlPoint2: CGPointMake(251.25,85)];
    [path addCurveToPoint:CGPointMake(234.6,86.77) controlPoint1: CGPointMake(239.64,85) controlPoint2: CGPointMake(236.94,85.64)];
    [path addCurveToPoint:CGPointMake(233.19,85.76) controlPoint1: CGPointMake(234.15,86.41) controlPoint2: CGPointMake(233.68,86.08)];
    return path.CGPath;
}

+(CGPathRef) pathTwo {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint: CGPointMake(102, 270.5)];
    [path addCurveToPoint: CGPointMake(163.5, 207.5) controlPoint1: CGPointMake(121.83, 264.67) controlPoint2: CGPointMake(161.9, 243.9)];
    [path addCurveToPoint: CGPointMake(153.5, 160.5) controlPoint1: CGPointMake(165.1, 171.1) controlPoint2: CGPointMake(157.5, 161)];
    [path moveToPoint: CGPointMake(245.5, 276)];
    [path addCurveToPoint: CGPointMake(192, 247) controlPoint1: CGPointMake(227.17, 275) controlPoint2: CGPointMake(190.8, 267.8)];
    [path addCurveToPoint: CGPointMake(203, 188.5) controlPoint1: CGPointMake(193.2, 226.2) controlPoint2: CGPointMake(199.83, 199.33)];
    [path addCurveToPoint: CGPointMake(212.5, 176.5) controlPoint1: CGPointMake(205.17, 184.17) controlPoint2: CGPointMake(210.1, 175.7)];
    [path moveToPoint: CGPointMake(178.5, 185)];
    [path addCurveToPoint: CGPointMake(171, 234) controlPoint1: CGPointMake(177, 200.17) controlPoint2: CGPointMake(173.4, 231.2)];
    [path moveToPoint: CGPointMake(183.5, 259.5)];
    [path addCurveToPoint: CGPointMake(188.5, 188.5) controlPoint1: CGPointMake(183.5, 251.5) controlPoint2: CGPointMake(182.5, 203)];
    [path moveToPoint: CGPointMake(165, 227.5)];
    [path addCurveToPoint: CGPointMake(144.5, 256.5) controlPoint1: CGPointMake(152, 246.5) controlPoint2: CGPointMake(150.5, 251)];
    return path.CGPath;
}

+(CGPathRef) pathThree {
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint: CGPointMake(119.5, 263.5)];
    [path addCurveToPoint: CGPointMake(86, 268.81) controlPoint1: CGPointMake(111.5, 255) controlPoint2: CGPointMake(96.4, 255.61)];
    [path moveToPoint: CGPointMake(59.5, 275)];
    [path addCurveToPoint: CGPointMake(83.5, 268) controlPoint1: CGPointMake(62.83, 271.17) controlPoint2: CGPointMake(72.3, 264.4)];
    [path addCurveToPoint: CGPointMake(94, 272) controlPoint1: CGPointMake(94.7, 271.6) controlPoint2: CGPointMake(95.17, 272.17)];
    [path moveToPoint: CGPointMake(198, 260.5)];
    [path addCurveToPoint: CGPointMake(221.5, 260.5) controlPoint1: CGPointMake(203, 257.73) controlPoint2: CGPointMake(214.7, 253.85)];
    [path addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(223.78, 262.73) controlPoint2: CGPointMake(225.48, 264.74)];
    [path moveToPoint: CGPointMake(230, 273.5)];
    [path addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(230, 272.46) controlPoint2: CGPointMake(229.25, 269.99)];
    [path moveToPoint: CGPointMake(226.74, 266.5)];
    [path addCurveToPoint: CGPointMake(261.5, 268) controlPoint1: CGPointMake(238.33, 263.33) controlPoint2: CGPointMake(261.5, 259.2)];
    [path addCurveToPoint: CGPointMake(244.5, 276) controlPoint1: CGPointMake(261.5, 276.8) controlPoint2: CGPointMake(245.83, 275.17)];
    return path.CGPath;
}

@end
