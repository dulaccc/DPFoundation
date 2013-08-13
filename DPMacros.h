//
//  DPMacros.h
//  MaPolitique
//
//  Created by Pierre Dulac on 05/08/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//


/* Memory */
#define DP_RELEASE_SAFELY(__POINTER) { [__POINTER release]; __POINTER = nil; }
#define DP_INVALIDATE_TIMER(__TIMER) { [__TIMER invalidate]; __TIMER = nil; }

/* Styles */
#define RGBCOLOR(r,g,b)       [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a)    [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

/* Utilities */
#define DP_PRINT_FRAME(__FRAME) { NSLog(@"frame: %f, %f, %f, %f", __FRAME.origin.x, __FRAME.origin.y, __FRAME.size.width, __FRAME.size.height); }

/* TestFlight */
//#define NSLog(__FORMAT__, ...) TFLog((@"%s [Line %d] " __FORMAT__), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

/*
 *  System Versioning Preprocessor Macros
 */ 
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
