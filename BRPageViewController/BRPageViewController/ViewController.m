//
//  ViewController.m
//  BRPageViewController
//
//  Created by 任波 on 2017/6/29.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "ViewController.h"
#import "BRMainViewController.h"

#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    BRMainViewController *mainVC = [[BRMainViewController alloc]init];
    mainVC.viewControllers = @[[ViewController1 new], [ViewController2 new], [ViewController3 new]];
    mainVC.selectedIndex = 1;
    [self presentViewController:mainVC animated:YES completion:nil];
}


@end
