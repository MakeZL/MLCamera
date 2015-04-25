//
//  MLCameraImageView.m
//  MLCamera
//
//  Created by 张磊 on 15-1-23.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import "MLCameraImageView.h"
#import "UIImage+MLImageForBundle.h"

@interface MLCameraImageView ()
@property (strong, nonatomic) UIImageView *deleBjView;
@end

@implementation MLCameraImageView

- (UIImageView *)deleBjView{
    if (!_deleBjView) {
        _deleBjView = [[UIImageView alloc] init];
        _deleBjView.image = [UIImage ml_imageFromBundleNamed:@"X"];
        _deleBjView.hidden = YES;
        _deleBjView.frame = CGRectMake(50, 0, 25, 25);
        _deleBjView.userInteractionEnabled = YES;
        [_deleBjView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(deleImage:)]];
        [self addSubview:_deleBjView];
    }
    return _deleBjView;
}

- (void)setEdit:(BOOL)edit{
    self.deleBjView.hidden = NO;
}

- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

#pragma mark 删除图片
- (void) deleImage : ( UITapGestureRecognizer *) tap{
    if ([self.delegatge respondsToSelector:@selector(deleteImageView:)]) {
        [self.delegatge deleteImageView:self];
    }
}

@end
