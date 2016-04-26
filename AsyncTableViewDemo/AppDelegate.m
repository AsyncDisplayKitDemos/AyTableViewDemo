//
//  AppDelegate.m
//  AsyncTableViewDemo
//
//  Created by Andrew on 16/4/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UINavigationController alloc] init];
    
    [self pushNewViewControllerAnimated:NO];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)pushNewViewControllerAnimated:(BOOL)animated
{
    UINavigationController *navController = (UINavigationController *)self.window.rootViewController;
    
    UIViewController *viewController = [[ViewController alloc] init];
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Push Another Copy" style:UIBarButtonItemStylePlain target:self action:@selector(pushNewViewController)];
    
    [navController pushViewController:viewController animated:animated];
}

- (void)pushNewViewController
{
    [self pushNewViewControllerAnimated:YES];
}

@end
