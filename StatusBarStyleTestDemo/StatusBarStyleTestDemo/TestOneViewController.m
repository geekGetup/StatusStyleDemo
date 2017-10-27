//
//  TestOneViewController.m
//  StatusBarStyleTestDemo
//
//  Created by 乐家 on 2017/10/27.
//  Copyright © 2017年 lejiakeji. All rights reserved.
//

#import "TestOneViewController.h"
#import "TestTwoViewController.h"
@interface TestOneViewController ()

@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试一";
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)setupUI {
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    TestTwoViewController *vc = [[TestTwoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (BOOL)statusBarStyle {
    return 1;
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
