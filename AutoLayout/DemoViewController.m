//
//  DemoViewController.m
//  AutoLayout
//
//  Created by 张博 on 16/7/4.
//  Copyright © 2016年 张博. All rights reserved.
//

#import "DemoViewController.h"
#import "AtuoFillScreenUtils.h"
@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    [self setUpViews];
    //[AtuoFillScreenUtils autoLayoutFillScreen:self.view];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Btn Test equal spacing

- (void)setUpViews {
    float Spacing = 28.8;
    for (NSInteger i = 0; i < 4; i++) {
        UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(Spacing+i*(44)+(Spacing *i), 0, 44, 44)];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [btn setTitle:[NSString stringWithFormat:@"Btn-%ld",(long)i] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor redColor];
        [self.view addSubview:btn];
        NSLog(@"x:%f,y:%f,width:%f,height:%f",btn.frame.origin.x,btn.frame.origin.y,btn.frame.size.width,btn.frame.size.height);
        
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
