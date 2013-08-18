//
//  UIView+Generators.m
//  DPFoundation
//
//  Created by Pierre Dulac on 09/07/13.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import "UIView+Generators.h"

#import <QuartzCore/QuartzCore.h>


@implementation UIView (Generators)

+ (instancetype)viewWithBezierPath:(UIBezierPath *)bezierPath rect:(CGRect)rect
{
	UIView *view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = [UIColor whiteColor];  // default background color
	CAShapeLayer *maskLayer = [CAShapeLayer layer];
	maskLayer.path = bezierPath.CGPath;
	view.layer.mask = maskLayer;
	return view;
}

@end
