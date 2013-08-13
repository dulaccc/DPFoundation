//
//  UIImage+Generators.m
//  DPFoundation
//
//  Created by Pierre Dulac on 11/08/10.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//

#import "UIImage+Generators.h"


@implementation UIImage (Generators)

CGFloat edgeSizeFromCornerRadius(CGFloat cornerRadius) {
    return cornerRadius * 2 + 1;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    return [UIImage imageWithColor:color cornerRadius:0];
}

+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius
{
    return [UIImage imageWithColor:color cornerRadius:cornerRadius insets:UIEdgeInsetsZero];
}

+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius insets:(UIEdgeInsets)insets
{
	CGFloat minEdgeSize = edgeSizeFromCornerRadius(cornerRadius);
    CGRect outterRect = CGRectMake(0, 0, insets.left + minEdgeSize + insets.right, insets.top + minEdgeSize + insets.bottom);
	CGRect rect = UIEdgeInsetsInsetRect(outterRect, insets);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    roundedRect.lineWidth = 0;
    UIGraphicsBeginImageContextWithOptions(outterRect.size, NO, 0.0f);
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(insets.top + cornerRadius,
															   insets.left + cornerRadius,
															   insets.bottom + cornerRadius,
															   insets.right + cornerRadius)];
}

+ (UIImage *)circularImageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:rect];
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [color setStroke];
    [circle addClip];
    [circle fill];
    [circle stroke];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)imageWithBezierPath:(UIBezierPath *)bezierPath color:(UIColor *)color
{
	return [UIImage imageWithBezierPath:bezierPath color:color rect:bezierPath.bounds];
}

+ (UIImage *)imageWithBezierPath:(UIBezierPath *)bezierPath color:(UIColor *)color rect:(CGRect)rect
{
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    [color setFill];
    [color setStroke];
    [bezierPath addClip];
    [bezierPath fill];
    [bezierPath stroke];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
