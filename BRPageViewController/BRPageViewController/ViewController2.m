//
//  ViewController2.m
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:30];
    label.text = @"界面2";
    [self.view addSubview:label];
}

@end
