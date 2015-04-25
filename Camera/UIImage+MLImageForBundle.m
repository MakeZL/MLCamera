//
//  UIImage+MLImageForBundle.m
//  MLCamera
//
//  Created by 张磊 on 15/4/25.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import "UIImage+MLImageForBundle.h"

@implementation UIImage (MLImageForBundle)
+ (instancetype)ml_imageFromBundleNamed:(NSString *)name{
    return [UIImage imageNamed:[@"MLCamera.bundle" stringByAppendingPathComponent:name]];
}
@end
