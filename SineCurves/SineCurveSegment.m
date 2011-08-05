//
//  SineCurveSegment.m
//  SineCurves
//
//  Created by Saadi on 4/8/11.
//  Copyright 2011 Tintash. All rights reserved.
//

#import "SineCurveSegment.h"


@implementation SineCurveSegment

- (id) initWithDictionary:(NSDictionary *)parameters {
    self = [super init];
    
    if (self) {
        
        theeta =    [[parameters objectForKey:@"theeta"] floatValue];
        theeta = CC_DEGREES_TO_RADIANS(theeta);
        
        amplitude = [[parameters objectForKey:@"amplitude"] floatValue];
        order =     [[parameters objectForKey:@"order"] intValue];
        
        vertices = [[NSMutableArray alloc] init];
        
    }
    
    return self;
}

- (void) dealloc {
    [vertices release];
    [super dealloc];
}

- (void) make {
    
    for (int i = 0; i < VERTICES_PER_SEGMENT; i++) {
        float value = amplitude * pow(sin(theeta*i/VERTICES_PER_SEGMENT), order) + 120;
        [vertices addObject:[NSNumber numberWithFloat:value]];
 
    }
    
}

- (void) draw {

    CGPoint startPoint = ccp (position_.x, [[vertices objectAtIndex:0] floatValue]);
    
    for (int j = 1; j < VERTICES_PER_SEGMENT; j++) {
        CGPoint endPoint = ccp (position_.x+j, [[vertices objectAtIndex:j] floatValue]);
        //glLoadIdentity();
        //glColor4f(1.0f, 0.0f, 0.0f, 1.0f);
        ccDrawLine(startPoint, endPoint);
        startPoint = endPoint;
    }
}


@end
