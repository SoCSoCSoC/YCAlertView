//
//  ViewController.m
//  YCAlertView
//
//  Created by zyc on 2017/11/1.
//  Copyright © 2017年 YC. All rights reserved.
//

#import "ViewController.h"
#import "YCAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(20, 200, 50, 50);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
}

-(void)btnClick{

    YCAlertView *alertview = [[YCAlertView alloc] initWithFrame:CGRectMake(0, 0, 250, 170) withTitle:@"" alertMessage:@"该操作会注销IP：211.100.57.197  中国，北京 Chrome的登录状态，请确认。" confrimBolck:^{
        NSLog(@"点击了确认");
    } cancelBlock:^{
        NSLog(@"点击了取消");
    }];
    [alertview show];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
