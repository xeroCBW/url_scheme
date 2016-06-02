//
//  AppDelegate.m
//  zhifubao
//
//  Created by 陈博文 on 16/6/2.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "AppDelegate.h"
#import "CBWPayDetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    // 1.获取主控制器
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;\
    
    
    //进入首页
    if ([url.absoluteString containsString:@"index"]) {
        
        tabBarController.selectedIndex = 0;
    }
    
    //进入支付详情页面
    if ([url.absoluteString containsString:@"payDetail"]) {
        
        tabBarController.selectedIndex = 1;
        UINavigationController *payNavVc = tabBarController.childViewControllers.lastObject;
        CBWPayDetailViewController *payDetailViewController = [[CBWPayDetailViewController alloc]init];
        [payNavVc pushViewController:payDetailViewController animated:NO];
    }
    
   
    
    return YES;
}

@end
