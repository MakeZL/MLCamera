//
//  MLCameraImageView.h
//  MLCamera
//
//  Created by 张磊 on 15-1-23.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import <UIKit/UIKit.h>

@class MLCameraImageView;

@protocol MLCameraImageViewDelegate <NSObject>
@optional
/**
 *  根据index来删除照片
 */
- (void)deleteImageView:(MLCameraImageView *)imageView;

@end

@interface MLCameraImageView : UIImageView
@property (weak, nonatomic) id <MLCameraImageViewDelegate> delegatge;
/**
 *  是否是删除图片 , Default = NO
 */
@property (assign, nonatomic, getter = isEdit) BOOL edit;


@end
