//
//  ViewController.m
//  AutoLayout
//
//  Created by 张博 on 16/6/29.
//  Copyright © 2016年 张博. All rights reserved.
//

#import "ViewController.h"
#import "AtuoFillScreenUtils.h"
#import "DemoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self setUpViews];
    [AtuoFillScreenUtils autoLayoutFillScreen:self.view];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpViews {
    
    UIButton *loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 20, 320-10*2, 44)];
    [loginBtn setTitle:@"login" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [loginBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [loginBtn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:loginBtn];
    
    UIButton *registerBtn = [[UIButton alloc]initWithFrame:CGRectMake(10, 84, 320-10*2, 44)];
    [registerBtn setTitle:@"register" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [registerBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [registerBtn setBackgroundColor:[UIColor cyanColor]];
    [self.view addSubview:registerBtn];
    
    UIButton *pushBtn = [[UIButton alloc]initWithFrame:CGRectMake(276, 536, 44, 44)];
    pushBtn.backgroundColor = [UIColor cyanColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [pushBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    [pushBtn addTarget:self action:@selector(pushDemoViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width-44)/2, (self.view.frame.size.height-44)/2, 44, 44)];
//    [btn setTitle:@"login" forState:UIControlStateNormal];
//        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//        [btn.titleLabel setFont:[UIFont systemFontOfSize:14]];
//        [btn setBackgroundColor:[UIColor cyanColor]];
//        [self.view addSubview:btn];
//    NSLog(@"x:%f,y:%f,width:%f,height:%f",btn.frame.origin.x,btn.frame.origin.y,btn.frame.size.width,btn.frame.size.height);
    
}

- (void)pushDemoViewController {
    DemoViewController * demoVC = [DemoViewController new];
    [self presentViewController:demoVC animated:YES completion:^{
        
    }];
}


@end
