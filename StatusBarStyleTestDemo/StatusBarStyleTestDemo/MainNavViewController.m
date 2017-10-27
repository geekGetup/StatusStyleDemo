//
//  MainNavViewController.m
//  StatusBarStyleTestDemo
//
//  Created by 乐家 on 2017/10/27.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "MainNavViewController.h"

@interface MainNavViewController ()

@end

@implementation MainNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    UIViewController *vc = self.topViewController;
    return [vc preferredStatusBarStyle];
}

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
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
