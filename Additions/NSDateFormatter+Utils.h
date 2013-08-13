//
//  NSDateFormatter+Utils.h
//  DPFoundation
//
//  Created by Pierre Dulac on 26/08/10.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDateFormatter (Utils)

/* like "jeu. 23 mars 2010 */
- (void)configureDateStyleFullWithShortSymbols;

/* print "today" and "yesterday" if it is the case */
- (NSString*)stringWithSmartRecognitionFromDate:(NSDate *)date;

@end
