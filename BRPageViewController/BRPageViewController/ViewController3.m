//
//  ViewController3.m
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:30];
    label.text = @"界面3";
    [self.view addSubview:label];

}


@end
