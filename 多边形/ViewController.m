//
//  ViewController.m
//  多边形
//
//  Created by 林_同 on 2017/10/10.
//  Copyright © 2017年 林_同. All rights reserved.
//

#import "ViewController.h"
#import "ShapeButton.h"
#import "cyanView.h"
#import "purpleView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cyanView *cyan = [[cyanView alloc] initWithFrame:CGRectMake(50, 300, 300, 300)];
    cyan.backgroundColor = [UIColor cyanColor];
    cyan.userInteractionEnabled = YES;
    
    purpleView *puple = [[purpleView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    puple.backgroundColor = [UIColor purpleColor];
    puple.userInteractionEnabled = YES;
    
    ShapeButton *btn = [[ShapeButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor orangeColor];

    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    btn.shapePath = path;
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:cyan];
    [cyan addSubview:puple];
    [puple addSubview:btn];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchhhhhhhhhhh");
}

- (void)btnAction{
    NSLog(@"点击事件");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
