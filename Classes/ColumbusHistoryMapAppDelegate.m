//
//  ColumbusHistoryMapAppDelegate.m
//  ColumbusHistoryMap
//
//  Created by Christopher Judd on 2/26/10. (cjudd@juddsolutions.com)
//  Copyright Judd Solutions 2010. All rights reserved.
//

#import "ColumbusHistoryMapAppDelegate.h"
#import "ColumbusHistoryMapViewController.h"

@implementation ColumbusHistoryMapAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
