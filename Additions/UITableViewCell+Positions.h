//
//  UITableViewCell+Positions.h
//  DPFoundation
//
//  Created by Pierre Dulac on 28/08/10.
//  Copyright 2013 Pierre Dulac. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, UITableViewCellPosition) {
	UITableViewCellPositionNone,
	UITableViewCellPositionTop,
	UITableViewCellPositionMiddle,
	UITableViewCellPositionBottom,
};

@interface UITableViewCell (Positions)

@end
