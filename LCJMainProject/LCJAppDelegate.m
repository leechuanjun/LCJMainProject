//
//  LCJAppDelegate.m
//  LCJMainProject
//
//  Created by lichuanjun on 2017/10/31.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "LCJAppDelegate.h"
#import "LCJHomeViewController.h"
#import "LCJAdvancedViewController.h"
#import "LCJProfileViewController.h"


@interface LCJAppDelegate ()

@end

@implementation LCJAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self loadRootViewController];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)loadRootViewController{
    //初始化
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.tabBar.tintColor = LCJCommonTextColor;
    
    LCJHomeViewController *homeVC = [[LCJHomeViewController alloc] init];
    LCJNavigationController *homeNaviVC = [[LCJNavigationController alloc] initWithRootViewController:homeVC];
    homeNaviVC.tabBarItem.title = @"首页";
    homeNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"home"];
    homeNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"homeSel"];
    
    LCJAdvancedViewController *advancedVC = [[LCJAdvancedViewController alloc] init];
    LCJNavigationController *advancedNaviVC = [[LCJNavigationController alloc] initWithRootViewController:advancedVC];
    advancedNaviVC.tabBarItem.title = @"高级";
    advancedNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"relation"];
    advancedNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"relationSel"];
    
    LCJProfileViewController *meVC = [[LCJProfileViewController alloc] init];
    LCJNavigationController *meNaviVC = [[LCJNavigationController alloc] initWithRootViewController:meVC];
    meNaviVC.tabBarItem.title = @"我";
    meNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"me"];
    meNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"meSel"];
    
    tabBarVC.viewControllers = @[homeNaviVC, advancedNaviVC, meNaviVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.viewController = tabBarVC;
    self.window.rootViewController = self.viewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}

@end
