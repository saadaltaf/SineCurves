//
//  CurveScene.m
//  SineCurves
//
//  Created by Saadi on 4/8/11.
//  Copyright 2011 Tintash. All rights reserved.
//

#import "CurveScene.h"
#import "SineCurveSegment.h"


@implementation CurveScene

- (id) init {
    self = [super init];
    
    if (self) {
        [self addChild:[CurveLayer node]];
    }
    
    return self;
}

@end

@implementation CurveLayer


- (id) init {
    self = [super init];
    
    if (self) {
        
        NSString *curvesPath = [[NSBundle mainBundle] pathForResource:@"Curves" ofType:@"plist"];
        NSDictionary *curveDict = [NSDictionary dictionaryWithContentsOfFile:curvesPath];
        NSArray *curvesArray = [curveDict objectForKey:@"curves"];
        NSArray *firstLevel =  [[curvesArray objectAtIndex:0] objectForKey:@"segments"];
    
        SineCurveSegment *segment = [[SineCurveSegment alloc] initWithDictionary:[firstLevel objectAtIndex:0]];
        
        [segment make];
        
        [self addChild:segment];
        
        [segment release];
    }
    
    return self;
}


@end