//
//  BRTitleScrollView.m
//  BRPageViewController
//
//  Created by 任波 on 2017/7/3.
//  Copyright © 2017年 renb. All rights reserved.
//

#import "BRTitleScrollView.h"

#define BUTTONS_SPACE 8.0f // Space between buttons
const static CGFloat MARK_LINE_HEIGHT = 2.0f;

@interface BRTitleScrollView ()

@end

@implementation BRTitleScrollView

- (instancetype)initWithButtons:(NSArray<UIButton *> *)buttons {
    if (self = [super init]) {
        CGFloat x = 0.5f * BUTTONS_SPACE;
        for (UIButton *button in buttons) {
            button.frame = CGRectMake(x, 0, button.bounds.size.width, button.bounds.size.height);
            x += button.bounds.size.width + BUTTONS_SPACE;
        }
        _titleButtons = buttons;
        
        self.scrollsToTop = NO;
    }
    return self;
}

- (void)setup {
    
    self.backgroundColor = [UIColor yellowColor];
    self.bounces = NO;
    self.showsHorizontalScrollIndicator = NO;
    
    [self setupTitleButtons];
    [self setupMarkLine];
    [self updateContentSize];
}

- (void)setupTitleButtons {
    for (UIButton *button in _titleButtons) {
        [self addSubview:button];
    }
}

- (void)setupMarkLine {
    
    UIButton *button = _titleButtons.firstObject;
    CGFloat y = CGRectGetMaxY(button.frame);
    CGFloat width = button.frame.size.width;
    _markLine = [[UIView alloc] initWithFrame:CGRectMake(0, y, width + BUTTONS_SPACE, MARK_LINE_HEIGHT)];
    _markLine.backgroundColor = [UIColor redColor];
    [self addSubview:_markLine];
}

- (void)updateContentSize {
    CGRect lastButtonFrame = _titleButtons.lastObject.frame;
    CGFloat markLine_height = CGRectGetHeight(_markLine.frame);
    CGFloat content_width = CGRectGetMaxX(lastButtonFrame) + BUTTONS_SPACE * 0.5f;
    CGFloat content_height = CGRectGetHeight(lastButtonFrame) + markLine_height;
    self.contentSize = CGSizeMake(content_width, content_height);
    
    // Update mark line frame
    // Mark line always in the bottom
    CGFloat markLine_x = _markLine.frame.origin.x;
    CGFloat markLine_y = content_height - markLine_height;
    CGFloat markLine_width = _markLine.frame.size.width;
    
    _markLine.frame = CGRectMake(markLine_x, markLine_y, markLine_width, markLine_height);
}

@end
