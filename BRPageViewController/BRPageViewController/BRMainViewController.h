//
//  BRMainViewController.h
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BRTitleScrollView;
@interface BRMainViewController : UIViewController

@property (nonatomic, copy) NSArray <__kindof UIViewController *> *viewControllers;
@property (nonatomic) NSUInteger selectedIndex;

/**
 Hide or show title scroll view.
 
 Parameters:
 
 hide: Specify YES to hide the title scroll view or NO to show it
 */
- (void)hideTitleScrollView:(BOOL)hide;

@end
