//
//  FirstViewController.m
//  TestHandoff
//
//  Created by Willy Liu on 2015/3/9.
//  Copyright (c) 2015年 KKBOX. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self _setUserActivity];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)_setUserActivity {
	NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:@"com.kkbox.TestHandoff.view"];
	activity.title = @"Viewing";
	activity.userInfo = @{@"viewController": @"FirstViewController"};
	self.userActivity = activity;
	[self.userActivity becomeCurrent];
}

- (void)updateUserActivityState:(NSUserActivity *)activity
{
	[activity addUserInfoEntriesFromDictionary:@{@"viewController": @"FirstViewController"}];
	[super updateUserActivityState:activity];
}
@end
