//
//  UIViewController+NavigationUtils.m
//  DPFoundation
//
//  Created by Pierre Dulac on 16/06/11.
//  Copyright 2011 Pierre Dulac. All rights reserved.
//

#import "UIViewController+NavigationUtils.h"


@implementation UIViewController (NavigationUtils)

- (IBAction)dismissModalViewControllerAnimatedWithSender:(id)sender 
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UIViewController*)containerController
{
    UIViewController* parent = self.parentViewController;
    while ([parent parentViewController] != nil) {
        parent = [parent parentViewController];
    }
    
    return parent;
}

@end
