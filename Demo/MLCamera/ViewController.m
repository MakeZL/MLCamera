//
//  ViewController.m
//  MLCamera
//
//  Created by 张磊 on 15/4/25.
//  Copyright (c) 2015年 www.weibo.com/makezl All rights reserved.
//

#import "ViewController.h"
#import "MLCameraViewController.h"
#import "MLPhoto.h"

@interface ViewController ()
@property (strong,nonatomic) NSArray *photos;
@end

@implementation ViewController

- (NSArray *)photos{
    if (!_photos) {
        _photos = [NSArray array];
    }
    return _photos;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"相机拍照" style:UIBarButtonItemStylePlain target:self action:@selector(takePhoto)];
}

- (void)takePhoto{
    
    __weak typeof(self)weakSelf = self;
    MLCameraViewController *cameraVc = [MLCameraViewController cameraViewController];
    cameraVc.completeBlock = ^(NSArray *photos){
        weakSelf.photos = photos;
        [weakSelf.tableView reloadData];
    };
    [self presentViewController:cameraVc animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.photos.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    MLPhoto *camera = self.photos[indexPath.row];
    cell.imageView.image = camera.thumbImage;
    
    return cell;
    
}

@end
