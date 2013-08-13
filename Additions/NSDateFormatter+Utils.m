//
//  NSDateFormatter+Utils.m
//  DPFoundation
//
//  Created by Pierre Dulac on 26/08/10.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import "NSDateFormatter+Utils.h"


@implementation NSDateFormatter (Utils)

- (void)configureDateStyleFullWithShortSymbols {
	[self setDateStyle:NSDateFormatterFullStyle];
	
	NSString* dateFormat = [self.dateFormat copy];
	dateFormat = [dateFormat stringByReplacingOccurrencesOfString:@"EEEE" withString:@"EEE"];
	dateFormat = [dateFormat stringByReplacingOccurrencesOfString:@"MMMM" withString:@"MMM"];
	
	[self setDateStyle:NSDateFormatterNoStyle];
	[self setDateFormat:dateFormat];
}

- (NSString*)stringWithSmartRecognitionFromDate:(NSDate *)date {
	NSDate* today		= [NSDate date];
	NSDate* yesterday	= [NSDate dateWithTimeIntervalSinceNow:-86400]; // 86400 is the seconds in one day
	
	/* NB: the 10 first characters are the calendar date mm/dd/yyyy */
	NSString* todayString		= [[today description] substringToIndex:10];
	NSString* yesterdayString	= [[yesterday description] substringToIndex:10];
	NSString* dateString		= [[date description] substringToIndex:10];
	
	NSString* smartString = nil;
	if ([dateString isEqualToString:todayString]) {
		smartString = NSLocalizedString(@"Today", @"");
	} else if ([dateString isEqualToString:yesterdayString]) {
		smartString = NSLocalizedString(@"Yesterday", @"");
	} else {
		smartString = [self stringFromDate:date];
	}
	
	return smartString;
}

@end
