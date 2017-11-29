//
//  AppDelegate.m
//  Shout
//
//  Created by 泥红 on 2017/11/29.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "AppDelegate.h"
#import "RGMessageVC.h"
#import "RGConnectVC.h"
#import "RGMapVC.h"
#import "RGMineVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /*********************************************
     *                  Custom                    *
     *********************************************/
    self.tabBarController = [[UITabBarController alloc]init];
    UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:[[RGMessageVC alloc]init]];
    nav1.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"信息" image:nil selectedImage:nil];
    UINavigationController *nav2 = [[UINavigationController alloc]initWithRootViewController:[[RGConnectVC alloc]init]];
    nav2.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"联系人" image:nil selectedImage:nil];
    UINavigationController *nav3 = [[UINavigationController alloc]initWithRootViewController:[[RGMapVC alloc]init]];
    nav3.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"地图" image:nil selectedImage:nil];
    UINavigationController *nav4 = [[UINavigationController alloc]initWithRootViewController:[[RGMineVC alloc]init]];
    nav4.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:nil selectedImage:nil];
    self.tabBarController.viewControllers = @[nav1,nav2,nav3,nav4];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
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


@end
