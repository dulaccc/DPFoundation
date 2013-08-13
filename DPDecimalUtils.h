//
//  DPDecimalUtils.h
//  DPFoundation
//
//  Created by Pierre Dulac on 05/08/10.
//  Copyright (c) 2013 Pierre Dulac. All rights reserved.
//


// Macros
#import "DPDecimalUtils.h"

NSDecimal DPDecimalFromString(NSString *stringRepresentation);
NSDecimal DPDecimalFromInteger(NSInteger i);

NSDecimal DPDecimalAdd(NSDecimal leftOperand, NSDecimal rightOperand);
NSDecimal DPDecimalSubtract(NSDecimal leftOperand, NSDecimal rightOperand);
NSDecimal DPDecimalMultiply(NSDecimal leftOperand, NSDecimal rightOperand);
NSDecimal DPDecimalDivide(NSDecimal numerator, NSDecimal denominator);

BOOL DPDecimalGreaterThan(NSDecimal leftOperand, NSDecimal rightOperand);
BOOL DPDecimalGreaterThanOrEqualTo(NSDecimal leftOperand, NSDecimal rightOperand);
BOOL DPDecimalLessThan(NSDecimal leftOperand, NSDecimal rightOperand);
BOOL DPDecimalLessThanOrEqualTo(NSDecimal leftOperand, NSDecimal rightOperand);
BOOL DPDecimalEquals(NSDecimal leftOperand, NSDecimal rightOperand);
