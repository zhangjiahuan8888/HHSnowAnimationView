//
//  HHSnowView.m
//  雪花效果
//
//  Created by 张家欢 on 16/8/1.
//  Copyright © 2016年 zhangjiahuan. All rights reserved.
//

#import "HHSnowView.h"
@interface HHSnowView()

@property (nonatomic,strong) UIImageView *backgroundImgView;
@property (nonatomic,copy) NSString *snowImgName;
@end
@implementation HHSnowView

- (instancetype)initWithFrame:(CGRect)frame withBackgroundImageName:(NSString *)bgImageName withSnowImgName:(NSString *)snowImgName{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundImgView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.backgroundImgView.image = [UIImage imageNamed:bgImageName];
        self.snowImgName = snowImgName;
        [self addSubview:self.backgroundImgView];
        
    }
    return self;
}

- (void)beginSnow{
    
    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];

}

- (void)drawRect:(CGRect)rect{
    
    NSLog(@"%s",__func__);
    if (self.subviews.count>200) {
        return;
    }
    
    //雪花宽度
    int width = arc4random()%20;
    while (width < 5) {
        width = arc4random()%20;
    }
    
    //雪花的速度
    int speed = arc4random()%15;
    while (speed < 5) {
        speed = arc4random()%15;
    }
    
    //雪花起点X
    int startX = arc4random()%(int)self.bounds.size.width;
    
    //雪花起点y
    int startY = -(arc4random() % 100);
    
    //雪花终点x
    int endX = arc4random()%(int)self.bounds.size.width;
    
    //雪花终点Y
    int endY = self.bounds.size.height;
    
    UIImageView *snowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.snowImgName]];
    snowView.frame = CGRectMake(startX, startY, width, width);
    [self addSubview:snowView];
    
    //雪花下落的动画
    [UIView animateWithDuration:speed animations:^{
        snowView.frame = CGRectMake(endX, endY, width, width);
        snowView.alpha = 0.3;
    } completion:^(BOOL finished) {
        [snowView removeFromSuperview];
    }];
    
    
    
}
@end
