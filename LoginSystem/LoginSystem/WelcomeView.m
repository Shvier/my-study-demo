//
//  WelcomeView.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "WelcomeView.h"

@implementation WelcomeView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
    [_welcomeLabel release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat totalWidth = frame.size.width;
        
        CGFloat offsetHeight = 100;
        CGFloat labelWidth = totalWidth - 150;
        CGFloat labelHeight = 40;
        
        _welcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake((totalWidth - labelWidth) / 2, offsetHeight, labelWidth, labelHeight)];
        _backButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _backButton.frame = CGRectMake((totalWidth - labelWidth) / 2, offsetHeight + labelHeight + 15, labelWidth, labelHeight);
        
        [self addSubview:_welcomeLabel];
        [self addSubview:_backButton];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame welcomeText:(NSString *)welcomeText font:(UIFont *)font title:(NSString *)title {
    self = [self initWithFrame:frame];
    if (self) {
        _welcomeLabel.text = welcomeText;
        _welcomeLabel.font = font;
        _welcomeLabel.textAlignment = NSTextAlignmentCenter;
        
        [_backButton setTitle:title forState:UIControlStateNormal];
//        _backButton.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
