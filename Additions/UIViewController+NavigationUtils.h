//
//  UIViewController+NavigationUtils.h
//  DPFoundation
//
//  Created by Pierre Dulac on 16/06/11.
//  Copyright 2011 Pierre Dulac. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIViewController (NavigationUtils)

- (IBAction)dismissModalViewControllerAnimatedWithSender:(id)sender;

@property (nonatomic, weak, readonly) UIViewController* containerController;

@end
