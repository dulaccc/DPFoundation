//
//  DPCore.h
//  MaPolitique
//
//  Created by Pierre Dulac on 05/08/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>


@interface DPCore : NSObject <UIAlertViewDelegate>
{
	//RHAddressBook* _addressBook;
	
	NSMutableDictionary* _alertViewContext; // in order to keep object in a context
	NSMutableDictionary* _callbackContext;
}


/* statique method to retrieve a the shared core */
+ (instancetype)sharedCore;

/* UIAppearance API */
- (void)configureAppearance;
- (void)unsetAppearance;

/* detect first launch */
- (void)registerDefaults; // called in -applicationDidFinishLaunching:
- (void)firstLaunchIsOver; // called in -applicationWillTerminate:
- (BOOL)isFirstLaunch;
- (void)registerNewUser;
- (BOOL)isOldUser;

/* alert view context to retain objects */
- (void)addToContextObject:(id)object forAlertView:(UIAlertView*)alertView;
- (void)removeObjectFromContextForAlertView:(UIAlertView*)alertView;
- (id)objectFromContextForAlertView:(UIAlertView*)alertView;

/* date formatter helper */
+ (NSDateFormatter *)sharedDateFormatter;

/* core data helpers */
+ (NSManagedObjectContext*)managedObjectContextFromAppDelegate;

/* Smart Time */
- (NSString*)smartTime:(NSDate*)fromDate;

/* file manager helpers */
- (NSString *)applicationDocumentsDirectory;

@end
