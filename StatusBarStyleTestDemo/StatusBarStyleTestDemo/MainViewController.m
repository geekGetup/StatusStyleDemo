//
//  MainViewController.m
//  StatusBarStyleTestDemo
//
//  Created by 乐家 on 2017/10/27.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "MainViewController.h"
#import "TestOneViewController.h"
#import "TestThreeViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主页";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
}

- (void)setupUI {
    UIButton *pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [self.view addSubview:pushBtn];
    pushBtn.frame = (CGRect){
        .origin = CGPointMake(100, 80),
        .size = CGSizeMake(100, 44),
    };
    [pushBtn addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *modalBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [modalBtn setTitle:@"modal" forState:UIControlStateNormal];
    [self.view addSubview:modalBtn];
    modalBtn.frame = (CGRect){
        .origin = CGPointMake(100, 150),
        .size = CGSizeMake(100, 44),
    };
    [modalBtn addTarget:self action:@selector(modalVC) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushVC {
    TestOneViewController *vc = [[TestOneViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)modalVC {
    TestThreeViewController *vc = [[TestThreeViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    if (self.statusBarStyle) {
        return UIStatusBarStyleDefault;
    } else {
        return UIStatusBarStyleLightContent;
    }
}

@end
