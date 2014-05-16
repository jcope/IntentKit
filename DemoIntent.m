//
//  DemoIntent.m
//  iOS8
//
//  Created by Jeremy Cope on 5/13/14.
//  Copyright (c) 2014 Emma Technologies, L.L.C. All rights reserved.
//

#import "DemoIntent.h"
#import "INKViewController.h"

@interface DemoIntent ()
@property UIViewController* homeVC;
@property INKViewController* app;
@end

@implementation DemoIntent

- (id)init{
    if (self = [super init]) {
        _app = [self createDemoApp];
    }
    return self;
}
-(INKViewController*)createDemoApp{
    INKViewController* app = [[INKViewController alloc] init];
    //Readjust the navigation items
    //Move the app's 'setting' button to the right
    app.navigationItem.rightBarButtonItem = app.navigationItem.leftBarButtonItem;
    app.navigationItem.leftBarButtonItem = nil;
    
    return app;
}
#pragma mark - DemmoApp Delegate
-(NSString*)appName{
    return @"IntentKit";
}
-(NSString*)appDetail{
    return @"IntentKit is an easier way to handle third-party URL schemes in iOS apps.";
}
-(UIImage*)appImage{
    return [UIImage imageNamed:@"IntentScreenShot.png"];
}
-(UIViewController*)mainViewController{
    return _app;
}
@end
