//
//  UIImage+Generators.h
//  DPFoundation
//
//  Created by Pierre Dulac on 11/08/10.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//


@interface UIImage (Generators)

/**
 * Create an image from a color
 */
+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius insets:(UIEdgeInsets)insets;
+ (UIImage *)imageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *) circularImageWithColor:(UIColor *)color size:(CGSize)size;

/**
 * Create an image from a bezier path
 */
+ (UIImage *)imageWithBezierPath:(UIBezierPath *)bezierPath color:(UIColor *)color rect:(CGRect)rect;
+ (UIImage *)imageWithBezierPath:(UIBezierPath *)bezierPath color:(UIColor *)color;

@end
