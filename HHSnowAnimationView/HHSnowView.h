//
//  HHSnowView.h
//  雪花效果
//
//  Created by 张家欢 on 16/8/1.
//  Copyright © 2016年 zhangjiahuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHSnowView : UIView

- (instancetype)initWithFrame:(CGRect)frame withBackgroundImageName:(NSString *)bgImageName withSnowImgName:(NSString *)snowImgName;

- (void)beginSnow;
@end
