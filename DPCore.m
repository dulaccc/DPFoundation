//
//  DPCore.m
//  DPFoundation
//
//  Created by Pierre Dulac on 05/08/10.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//

#import "DPCore.h"

#import <QuartzCore/QuartzCore.h>


#define ASK_FOR_RATING_MINIMUM_TIME_BETWEEN		172800		// 2 days

static NSString* kFirstLaunch			= @"FirstLaunch";
static NSString* kOldUser				= @"OldUser";


@implementation DPCore

+ (instancetype)sharedCore {
    static DPCore *_sharedCore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCore = [[DPCore alloc] init];
    });
    
    return _sharedCore;
}

- (id)init {
	if (self = [super init]) {
	}
	
	return self;
}

- (void)configureAppearance {
}

- (void)unsetAppearance {
}

- (void)registerDefaults {
	[[NSUserDefaults standardUserDefaults] registerDefaults:
	 [NSDictionary dictionaryWithObjectsAndKeys:
	  [NSNumber numberWithBool:YES], kFirstLaunch, 
	  [NSNumber numberWithBool:YES], kOldUser, nil]];
}

- (void)firstLaunchIsOver {
	[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kFirstLaunch];
}

- (BOOL)isFirstLaunch {
	return [[NSUserDefaults standardUserDefaults] boolForKey:kFirstLaunch];
}

- (void)registerNewUser {
	[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kOldUser];
}

- (BOOL)isOldUser {
	return [[NSUserDefaults standardUserDefaults] boolForKey:kOldUser];
}


#pragma mark - Date formmatters

+ (NSDateFormatter *)sharedDateFormatter {
    static NSDateFormatter *_sharedDateFormatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDateFormatter = [[NSDateFormatter alloc] init];
        [_sharedDateFormatter setDateStyle:NSDateFormatterMediumStyle];
    });
    
    return _sharedDateFormatter;
}


#pragma mark - Core Data

+ (NSManagedObjectContext*)managedObjectContextFromAppDelegate
{
    id appDelegate = [[UIApplication sharedApplication] delegate];
	if ([appDelegate respondsToSelector:@selector(managedObjectContext)]) {
		return [appDelegate performSelector:@selector(managedObjectContext)];
	}
	return nil;
}


#pragma mark - Time helpers

- (NSString *)smartTime:(NSDate*)fromDate {
	NSTimeInterval seconds = [fromDate timeIntervalSinceNow];
	NSInteger value = 0;
	NSString* label = nil;
	
	if (seconds < 0) {
		seconds = -seconds;
	} 
	
	if (seconds < 15) {
    	return NSLocalizedString(@"now", nil);
	}
	else if (seconds < 60) {
		value = seconds;
    	label = NSLocalizedString(@"sec", nil);
	}
    else if (seconds < (60*60)) {
		value = round(seconds / 60);
    	label = NSLocalizedString(@"min", nil);
	}
    else if (seconds < (60*60*24)) {
		value = round(seconds / (60*60));
    	label = NSLocalizedString(@"h", nil);
	}
    else {
		value = round(seconds / (60*60*24));
    	label = NSLocalizedString(@"days", nil);
	}
	
	return label = [NSString stringWithFormat:@"%d %@", value, label];
}


#pragma mark -
#pragma mark UIAlertView delegate methods & Context object support

- (id)keyForAlertView:(UIAlertView*)alertView {
	return [NSString stringWithFormat:@"%p", alertView];
}

- (void)addToContextObject:(id)object forAlertView:(UIAlertView*)alertView {
	if (!_alertViewContext) {
		_alertViewContext = [[NSMutableDictionary alloc] init];
	}
	
	[_alertViewContext setObject:object forKey:[self keyForAlertView:alertView]];
}

- (void)removeObjectFromContextForAlertView:(UIAlertView*)alertView {
	[_alertViewContext removeObjectForKey:[self keyForAlertView:alertView]];
}

- (id)objectFromContextForAlertView:(UIAlertView*)alertView {
	return [_alertViewContext objectForKey:[self keyForAlertView:alertView]];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	switch (alertView.tag) {
	};
}


#pragma mark - Helpers

- (NSString *)applicationDocumentsDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
}

@end
