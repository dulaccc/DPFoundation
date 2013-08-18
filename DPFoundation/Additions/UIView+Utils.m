//
//  UIView+Utils.m
//  DPFoundation
//
//  Created by Pierre Dulac on 09/07/13.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import "UIView+Utils.h"


@implementation UIView (Utils)

- (void)removeAllSubviews {
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

- (UIView *)findViewThatIsFirstResponder
{
    if (self.isFirstResponder) {
        return self;
    }
    
    for (UIView *subView in self.subviews) {
        UIView *firstResponder = [subView findViewThatIsFirstResponder];
        if (firstResponder != nil) {
            return firstResponder;
        }
    }
    
    return nil;
}

@end
