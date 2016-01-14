//
//  HomeView.m
//  LoginSystem
//
//  Created by Shvier on 16/1/14.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
    [_header release];
    [_scrollView release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat totalWidth = frame.size.width;
        CGFloat totalHeight = frame.size.height;
        
        _header = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, totalWidth, totalHeight - 450)];
        _header.image = [UIImage imageNamed:@"header.jpg"];
        [self addSubview:_header];
        
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20 + totalHeight - 450, totalWidth, 450)];
        _scrollView.contentSize = CGSizeMake(totalWidth, totalHeight * 11);
        [self addSubview:_scrollView];
    }
    return self;
}

@end
