//
//  SineCurveSegment.h
//  SineCurves
//
//  Created by Saadi on 4/8/11.
//  Copyright 2011 Tintash. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


#define VERTICES_PER_SEGMENT 300
#define CURVE_Y_OFFSET  120

@interface SineCurveSegment: CCNode {
    
    float theeta;
    float amplitude;
    
    int order;
    
    
    NSMutableArray *vertices;
    
}

- (id) initWithDictionary:(NSDictionary*) parameters;
- (void) make;

@end
