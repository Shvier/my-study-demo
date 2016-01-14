//
//  HomeViewController.m
//  LoginSystem
//
//  Created by Shvier on 16/1/14.
//  Copyright © 2016年 Shvier. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)dealloc {
    [_homeView release];
    [super dealloc];
}

- (void)loadView {
    _homeView = [[HomeView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view = _homeView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat totalWidth = self.view.frame.size.width;
    CGFloat totalHeight = self.view.frame.size.height;
    
    for (int i = 0; i < 11; i ++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, i * totalHeight, totalWidth, totalHeight)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i + 1]];
        [_homeView.scrollView addSubview:imageView];
        [imageView release];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
