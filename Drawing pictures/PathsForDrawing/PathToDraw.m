//
//  PathToDraw.m
//  Drawing pictures
//
//  Created by Vladimir Oleinikov on 31.07.2021.
//

#import <Foundation/Foundation.h>
#import "PathToDraw.h"
#import "HeadPath.h"

@implementation PathToDraw

+(PathToDraw*) shared{
    static PathToDraw *path = nil;
    if(path == nil) {
        path = [[PathToDraw alloc]init];
    }
    return path;
}

-(instancetype)init{
    self = [super init];
    if (self) {
        self.DrawPaths = [[HeadPath alloc]init];
    }
    return self;
}

@end
