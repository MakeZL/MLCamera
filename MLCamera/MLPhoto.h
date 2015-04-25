//
//  MLPhoto.h
//  MLCamera
//
//  Created by 张磊 on 15-1-23.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MLPhoto : NSObject

// 原图路径
@property (copy,nonatomic) NSString *originalImagePath;
// 缩略图
@property (strong,nonatomic) UIImage *thumbImage;
// 获取原图，通过imagePath来获取
@property (strong,nonatomic,readonly) UIImage *originalImage;

@end
