//
//  ViewController.m
//  使用 openURL 处理
//
//  Created by 陈博文 on 16/6/2.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    [self openIndex];

}

//打开 app
- (void)openApp{
    //打开 app 默认是打开app 首页的
    //如果你将打开的 app 已经运行了,那它将直接跳到运行的那个页面
    
    NSURL *url = [NSURL URLWithString:@"zhifubao://"];
    [[UIApplication sharedApplication]openURL:url];
    
}

//打开首页
- (void)openIndex{
    
    NSURL *url = [NSURL URLWithString:@"zhifubao://index/"];
    [[UIApplication sharedApplication]openURL:url];
}

 //打开支付界面
- (void)openPay{
    
    NSURL *url = [NSURL URLWithString:@"zhifubao://pay/"];
    [[UIApplication sharedApplication]openURL:url];
}

  //打开支付详情
- (void)openPayDetail{
  
    NSURL *url = [NSURL URLWithString:@"zhifubao://pay/payDetail/"];
    [[UIApplication sharedApplication]openURL:url];

}


@end
