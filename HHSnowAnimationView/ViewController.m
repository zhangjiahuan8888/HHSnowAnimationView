//
//  ViewController.m
//  HHSnowAnimationView
//
//  Created by 张家欢 on 16/8/1.
//  Copyright © 2016年 zhangjiahuan. All rights reserved.
//

#import "ViewController.h"
#import "HHSnowView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HHSnowView *snowView = [[HHSnowView alloc] initWithFrame:self.view.bounds withBackgroundImageName:@"snow_background" withSnowImgName:@"snow"];
    [snowView beginSnow];
    [self.view addSubview:snowView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
