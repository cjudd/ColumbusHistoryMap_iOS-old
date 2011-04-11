//
//  ColumbusHistoryMapAppDelegate.h
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/26/10. (cjudd@juddsolutions.com)
//  Copyright Judd Solutions 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ColumbusHistoryMapViewController;

@interface ColumbusHistoryMapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ColumbusHistoryMapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ColumbusHistoryMapViewController *viewController;

@end

