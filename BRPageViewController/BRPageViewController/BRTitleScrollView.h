//
//  BRTitleScrollView.h
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRTitleScrollView : UIScrollView
@property (nonatomic, strong) NSArray <UIButton *> *titleButtons;
@property (nonatomic, strong) UIView *markLine; // to mark the title

- (instancetype)initWithButtons:(NSArray <UIButton *> *)buttons;

/**
 Setup this view.
 Call this method ONLY after initWithButtons: method
 */
- (void)setup;

/**
 Update content size after update buttons, mark line
 */
- (void)updateContentSize;

@end
