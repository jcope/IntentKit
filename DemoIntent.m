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
        //[self.view addSubview:_app.view];
    }
    return self;
}
-(INKViewController*)createDemoApp{
    return [[INKViewController alloc] init];
}
#pragma mark -
#pragma mark DemmoApp Delegate
-(NSString*)appName{
    return @"IntentKit";
}
-(NSString*)appDetail{
    return @"IntentKit is an easier way to handle third-party URL schemes in iOS apps.";
}
-(UIImage*)appImage{
    return [UIImage imageNamed:@"IntentScreenShot.png"];
}
-(BOOL)launchAppFromViewController:(UIViewController *)viewController{
    NSLog(@"Launching IntentKit");
    _homeVC = viewController;
    [_homeVC.view addSubview:_app.view];
    return YES;
}
-(void)closeApp{
    [_app.view removeFromSuperview];
}
@end
