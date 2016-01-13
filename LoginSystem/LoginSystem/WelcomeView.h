//
//  WelcomeView.h
//  LoginSystem
//
//  Created by Shvier on 16/1/13.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WelcomeView : UIView

@property (retain, nonatomic) UILabel *welcomeLabel;
@property (retain, nonatomic) UIButton *backButton;

- (instancetype)initWithFrame:(CGRect)frame welcomeText:(NSString *)welcomeText font:(UIFont *)font title:(NSString *)title;

@end
