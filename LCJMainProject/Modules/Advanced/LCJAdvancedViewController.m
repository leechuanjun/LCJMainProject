//
//  LCJAdvancedViewController.m
//  LCJMainProject
//
//  Created by lichuanjun on 2017/10/30.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "LCJAdvancedViewController.h"
#import "LCJAModuleViewController.h"

@interface LCJAdvancedViewController ()

@property (nonatomic, strong) UIButton *pushAVCButton;

@end

@implementation LCJAdvancedViewController

-(instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"高级";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.pushAVCButton];
    [_pushAVCButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.equalTo(@(60));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event response
- (void)didTappedPushAVCButton:(UIButton *)button
{
    LCJAModuleViewController *viewController = [[LCJAModuleViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushAVCButton
{
    if (_pushAVCButton == nil) {
        _pushAVCButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAVCButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAVCButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAVCButton addTarget:self action:@selector(didTappedPushAVCButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAVCButton;
}


@end
