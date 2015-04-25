//
//  MLCameraViewController.h
//  MLCamera
//
//  Created by ZL on 14-9-11.
//  Copyright (c) 2014年 www.weibo.com/makezl All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLPhoto.h"

typedef void(^MLCompleteBlock)(NSArray *images);

@interface MLCameraViewController : UIViewController

+ (instancetype)cameraViewController;

// 顶部View
@property (weak, nonatomic) UIView *topView;
// 底部View
@property (weak, nonatomic) UIView *controlView;
// Done Callback
@property (copy, nonatomic) MLCompleteBlock completeBlock;

@end
