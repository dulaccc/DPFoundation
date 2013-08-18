//
//  UILabel+SizeUtils.h
//  DPFoundation
//
//  Created by Pierre Dulac on 17/06/13.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SizeUtils)

- (CGSize)sizeToFitMaxWidth:(CGFloat)maxWidth;
- (CGFloat)widthToFit;
- (CGFloat)widthToFitMaxWidth:(CGFloat)maxWidth;

@end
