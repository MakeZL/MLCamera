//
//  MLPhoto.m
//  MLCamera
//
//  Created by 张磊 on 15-1-23.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import "MLPhoto.h"

@implementation MLPhoto

- (UIImage *)fullScreenImage{
    return [UIImage imageWithContentsOfFile:self.originalImagePath];
}

@end
