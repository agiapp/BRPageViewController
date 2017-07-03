//
//  ViewController1.m
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    label.font = [UIFont systemFontOfSize:30];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"界面1";
    [self.view addSubview:label];
    
}


@end
