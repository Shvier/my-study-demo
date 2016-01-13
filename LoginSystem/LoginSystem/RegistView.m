//
//  RegistView.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "RegistView.h"

@implementation RegistView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)dealloc {
    [_usernameText release];
    [_passwordText release];
    [_confirmpwdText release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat totalWidth = frame.size.width;
        
        CGFloat offsetHeight = 200;
        CGFloat textFieldWidth = totalWidth - 150;
        CGFloat textFieldHeight = 40;
        
        _usernameText = [[UITextField alloc] initWithFrame:CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight, textFieldWidth, textFieldHeight)];
        _passwordText = [[UITextField alloc] initWithFrame:CGRectMake((totalWidth - textFieldWidth) / 2, textFieldHeight + offsetHeight + 15, textFieldWidth, textFieldHeight)];
        _confirmpwdText = [[UITextField alloc] initWithFrame:CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight + textFieldHeight * 2 + 30, textFieldWidth, textFieldHeight)];
        
        _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _backButton.frame = CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight + textFieldHeight * 3 + 45, textFieldWidth, textFieldHeight);
        
        [self addSubview:_usernameText];
        [self addSubview:_passwordText];
        [self addSubview:_confirmpwdText];
        [self addSubview:_backButton];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame usernamePlaceholder:(NSString *)usernamePlaceholder passwordPlaceholder:(NSString *)passwordPlaceholder confirmpwdPlaceholder:(NSString *)confirmpwdPlaceholder font:(UIFont *)font borderStyle:(UITextBorderStyle)borderStyle backTitle:(NSString *)backTitle secureTextEntry:(BOOL)secureTextEntry {
    self = [self initWithFrame:frame];
    if (self) {
        _usernameText.placeholder = usernamePlaceholder;
        _usernameText.font = font;
        _usernameText.borderStyle = borderStyle;
        _usernameText.keyboardType = UIKeyboardTypePhonePad;
        
        _passwordText.placeholder = passwordPlaceholder;
        _passwordText.font = font;
        _passwordText.borderStyle = borderStyle;
        _passwordText.secureTextEntry = secureTextEntry;
        
        _confirmpwdText.placeholder = confirmpwdPlaceholder;
        _confirmpwdText.font = font;
        _confirmpwdText.borderStyle = borderStyle;
        _confirmpwdText.secureTextEntry = secureTextEntry;
        
        [_backButton setTitle:backTitle forState:UIControlStateNormal];
        _backButton.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
