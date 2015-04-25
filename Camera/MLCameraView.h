//
//  MLCameraView.h
//  MLCamera
//
//  Created by ZL on 14-9-24.
//  Copyright (c) 2014年 www.weibo.com/makezl All rights reserved.
//

#import <UIKit/UIKit.h>

@class MLCameraView;
@protocol MLCameraViewDelegate <NSObject>
@optional
// signle ZLCameraView
- (void) cameraDidSelected:(MLCameraView *)camera;
@end

@interface MLCameraView : UIView
@property (weak, nonatomic) id <MLCameraViewDelegate> delegate;
@end
