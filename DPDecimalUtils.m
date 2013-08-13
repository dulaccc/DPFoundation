//
//  DPDecimalUtils.m
//  DPFoundation
//
//  Created by Pierre Dulac on 05/08/10.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//


// Macros
#import "DPDecimalUtils.h"


#pragma mark - NSDecimal creation

NSDecimal DPDecimalFromString(NSString *stringRepresentation)
{
    NSDecimal result;
    NSScanner *theScanner = [[NSScanner alloc] initWithString:stringRepresentation];
    [theScanner scanDecimal:&result];
    
    return result;
}

NSDecimal DPDecimalFromInteger(NSInteger i)
{
    return [[NSNumber numberWithInteger:i] decimalValue]; 
}


#pragma mark - NSDecimal computation

NSDecimal DPDecimalAdd(NSDecimal leftOperand, NSDecimal rightOperand)
{
    NSDecimal result;
    NSDecimalAdd(&result, &leftOperand, &rightOperand, NSRoundBankers);
    return result;
}

NSDecimal DPDecimalSubtract(NSDecimal leftOperand, NSDecimal rightOperand)
{
    NSDecimal result;
    NSDecimalSubtract(&result, &leftOperand, &rightOperand, NSRoundBankers);
    return result;
}

NSDecimal DPDecimalMultiply(NSDecimal leftOperand, NSDecimal rightOperand)
{
    NSDecimal result;
    NSDecimalMultiply(&result, &leftOperand, &rightOperand, NSRoundBankers);
    return result;
}

NSDecimal DPDecimalDivide(NSDecimal numerator, NSDecimal denominator)
{
    NSDecimal result;
    NSDecimalDivide(&result, &numerator, &denominator, NSRoundBankers);
    return result;
}


#pragma mark - NSDecimal comparison

BOOL DPDecimalGreaterThan(NSDecimal leftOperand, NSDecimal rightOperand)
{
    return (NSDecimalCompare(&leftOperand, &rightOperand) == NSOrderedDescending);
}

BOOL DPDecimalGreaterThanOrEqualTo(NSDecimal leftOperand, NSDecimal rightOperand)
{
    return (NSDecimalCompare(&leftOperand, &rightOperand) != NSOrderedAscending);
}

BOOL DPDecimalLessThan(NSDecimal leftOperand, NSDecimal rightOperand)
{
    return (NSDecimalCompare(&leftOperand, &rightOperand) == NSOrderedAscending);
}

BOOL DPDecimalLessThanOrEqualTo(NSDecimal leftOperand, NSDecimal rightOperand)
{
    return (NSDecimalCompare(&leftOperand, &rightOperand) != NSOrderedDescending);
}

BOOL DPDecimalEquals(NSDecimal leftOperand, NSDecimal rightOperand)
{
    return (NSDecimalCompare(&leftOperand, &rightOperand) == NSOrderedSame);        
}
