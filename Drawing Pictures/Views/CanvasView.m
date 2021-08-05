//
//  CanvasView.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 01.08.2021.
//

#import "CanvasView.h"


@implementation CanvasView

-(CAShapeLayer*) shapeLayerOne{
    if (_shapeLayerOne){
        return _shapeLayerOne;
    } else {
        CAShapeLayer *layer = [CAShapeLayer new];
        layer.strokeColor = UIColor.blackColor.CGColor;
        layer.lineWidth = 1.0;
        layer.fillColor = nil;
        _shapeLayerOne = layer;
        return layer;
    }
}

-(CAShapeLayer*) shapeLayerTwo{
    if (_shapeLayerTwo){
        return _shapeLayerTwo;
    } else {
        CAShapeLayer *layer = [CAShapeLayer new];
        layer.strokeColor = UIColor.blackColor.CGColor;
        layer.lineWidth = 1.0;
        layer.fillColor = nil;
        _shapeLayerTwo = layer;
        return layer;
    }
}


-(CAShapeLayer*) shapeLayerThree{
    if (_shapeLayerThree){
        return _shapeLayerThree;
    } else {
        CAShapeLayer *layer = [CAShapeLayer new];
        layer.strokeColor = UIColor.blackColor.CGColor;
        layer.lineWidth = 1.0;
        layer.fillColor = nil;
        _shapeLayerThree = layer;
        return layer;
    }
}

-(NSMutableArray*) allShapeLayers {
    return [NSMutableArray arrayWithObjects:self.shapeLayerOne,self.shapeLayerTwo,self.shapeLayerThree, nil];
}

-(void) setup {
    self.backgroundColor = UIColor.whiteColor;
    self.layer.shadowColor = UIColor.chillSky.CGColor;
    self.layer.shadowRadius = 4.0;
    self.layer.shadowOpacity = 1.0;
    self.layer.shadowOffset = CGSizeZero;
    self.layer.cornerRadius = 80;
    
    [self.layer addSublayer:self.shapeLayerOne];
    [self.layer addSublayer:self.shapeLayerTwo];
    [self.layer addSublayer:self.shapeLayerThree];
}

-(void) provideColors:(NSMutableArray *)colors {
    while ([colors count] != 3){
        [colors addObject:UIColor.blackColor];
    }
    for (int index = 0; index < [colors count]; index++){
        if ([self.allShapeLayers[index] isKindOfClass:CAShapeLayer.class]
            && [colors[index] isKindOfClass:UIColor.class])
        ((CAShapeLayer*) self.allShapeLayers[index]).strokeColor = ((UIColor*) colors[index]).CGColor;
    }
}

-(void) prepare:(id<PathTemplate>) path{
    self.shapeLayerOne.path = path.pathOne;
    self.shapeLayerTwo.path = path.pathTwo;
    self.shapeLayerThree.path = path.pathThree;
}

-(instancetype) init{
    self = [super initWithFrame:CGRectZero];
    if(self){
        [self setup];
    }
    return self;
}

-(instancetype) initWithCoder:(NSCoder *)coder {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"init(coder:) has not been implemented" userInfo:nil];
}
@end
