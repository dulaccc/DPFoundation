//
//  UILabel+SizeUtils.m
//  DPFoundation
//
//  Created by Pierre Dulac on 17/06/13.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//

#import "UILabel+SizeUtils.h"


@implementation UILabel (SizeUtils)

- (CGSize)sizeToFitMaxWidth:(CGFloat)maxWidth
{
	return [self.text sizeWithFont:self.font
				 constrainedToSize:CGSizeMake(maxWidth, CGFLOAT_MAX)
					 lineBreakMode:self.lineBreakMode];
}

- (CGFloat)widthToFit
{
	return [self widthToFitMaxWidth:CGFLOAT_MAX];
}

- (CGFloat)widthToFitMaxWidth:(CGFloat)maxWidth
{
	return [self sizeToFitMaxWidth:maxWidth].width;
}

@end
