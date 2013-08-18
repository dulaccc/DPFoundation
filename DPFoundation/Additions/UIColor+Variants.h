//
//  UIColor+Variants.h
//  DPFoundation
//
//  Created by Pierre Dulac on 02/09/10.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIColor (Variants)

- (UIColor *)lighterColor;
- (UIColor *)lighterColorWithRange:(float)range;
- (UIColor *)darkerColor;
- (UIColor *)darkerColorWithRange:(float)range;

@end
