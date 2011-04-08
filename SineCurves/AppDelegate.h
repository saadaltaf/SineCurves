//
//  AppDelegate.h
//  SineCurves
//
//  Created by Saadi on 4/8/11.
//  Copyright Tintash 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
