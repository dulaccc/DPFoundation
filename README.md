# DPFoundation
*A minimal set of tools and additions to help you with any iOS app.*


## Core
Define a `DPCore` class, useful through the `sharedCore` singleton method.
Usually, you will subclass this one to make your own *core* with a similar code :

**YourCore.h**

```objective-c
#import "DPCore.h"

@interface YourCore : DPCore
@end
```

**YourCore.m**

```objective-c
#import "YourCore.h"

@implementation YourCore

+ (instancetype)sharedCore {
    static YourCore *_sharedCore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedCore = [[YourCore alloc] init];
    });
    
    return _sharedCore;
}

- (void)configureAppearance
{
    // your own custom UIAppearance calls
    // ... 
}

@end
```

## Useful macros

The most useful macros are the `RGBCOLOR` and `RGBACOLOR` ones. I can't live without it ;)


## Foundation additions

### NSDateFormatter+Utils
Methods to get a `NSString` from a `NSDate` instance, with the little addition that it uses "Today", "Yesterday" and "Tomorrow" when it can.


## UIKit Additions

### UIColor+Variants
Generate lighter/darker color from a `UIColor` instance.

### UIImage+Generators
Generate `UIImage` from a `UIColor` instance, or `UIBezierPath` instance too.

### UILabel+SizeUtils
Little helper to size a `UILabel` (**deprecated** due to the progressive use of Auto Layout).

### UITableViewCell+Positions
Begin the support for cell position property.

### UIView+Utils
Useful to get the first responder `UIView` instance from a view hierarchy.

### UIView+Generators
Generate a `UIView` from a `UIBezierPath` instance.

### UIViewController+NavigationUtils
Little helper method `dismissModalViewControllerAnimatedWithSender:` for storyboard use.
