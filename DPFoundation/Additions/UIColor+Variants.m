//
//  UIColor+Variants.m
//  DPFoundation
//
//  Created by Pierre Dulac on 02/09/10.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import "UIColor+Variants.h"

#import "DPMacros.h"


@implementation UIColor (Variants)

- (UIColor *)lighterColor
{
	return [self lighterColorWithRange:0.2];
}

- (UIColor *)lighterColorWithRange:(float)range
{
    float r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + range, 1.0)
                               green:MIN(g + range, 1.0)
                                blue:MIN(b + range, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor
{
    return [self darkerColorWithRange:0.2];
}

- (UIColor *)darkerColorWithRange:(float)range
{
	float r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MAX(r - range, 0.0)
                               green:MAX(g - range, 0.0)
                                blue:MAX(b - range, 0.0)
                               alpha:a];
    return nil;
}

@end
