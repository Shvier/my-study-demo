//
//  LoginView.m
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

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
        _passwordText = [[UITextField alloc] initWithFrame:CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight + textFieldHeight + 15, textFieldWidth, textFieldHeight)];
        
        _loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _loginButton.frame = CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight + textFieldHeight * 2 + 30, textFieldWidth, textFieldHeight);
        
        _registButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _registButton.frame = CGRectMake((totalWidth - textFieldWidth) / 2, offsetHeight + textFieldHeight * 3 + 45, textFieldWidth, textFieldHeight);
        
        [self addSubview:_usernameText];
        [self addSubview:_passwordText];
        [self addSubview:_loginButton];
//        [self addSubview:_registButton];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame usernamePlaceholder:(NSString *)usernamePlaceholder passwordPlaceholder:(NSString *)passwordPlaceholder font:(UIFont *)font borderStyle:(UITextBorderStyle)borderStyle secureTextEntry:(BOOL)secureTextEntry usernameKeyboardType:(UIKeyboardType)usernameKeyboardType passwordKeyboardType:(UIKeyboardType)passwordKeyboardType loginTitle:(NSString *)loginTitle registTitle:(NSString *)registTitle{
    self = [self initWithFrame:frame];
    if (self) {
        _usernameText.placeholder = usernamePlaceholder;
        _usernameText.font = font;
        _usernameText.borderStyle = borderStyle;
        _usernameText.keyboardType = usernameKeyboardType;
        _passwordText.placeholder = passwordPlaceholder;
        _passwordText.font = font;
        _passwordText.borderStyle = borderStyle;
        _passwordText.secureTextEntry = secureTextEntry;
        _passwordText.keyboardType = passwordKeyboardType;
        
        [_loginButton setTitle:loginTitle forState:UIControlStateNormal];
        [_registButton setTitle:registTitle forState:UIControlStateNormal];
        _loginButton.backgroundColor = [UIColor greenColor];
        _registButton.backgroundColor = [UIColor grayColor];
    }
    return self;
}

@end
