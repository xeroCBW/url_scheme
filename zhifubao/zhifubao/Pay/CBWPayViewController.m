//
//  CBWPayViewController.m
//  zhifubao
//
//  Created by 陈博文 on 16/6/2.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "CBWPayViewController.h"
#import "CBWPayDetailViewController.h"

@implementation CBWPayViewController


-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    self.title = @"支付";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    cell.textLabel.text = @"点我进入下一个界面";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CBWPayDetailViewController *payDetailViewController = [[CBWPayDetailViewController alloc]init];
    [self.navigationController pushViewController:payDetailViewController animated:YES];
}


@end
