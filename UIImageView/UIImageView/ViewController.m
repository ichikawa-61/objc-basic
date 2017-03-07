//
//  ViewController.m
//  UIImageView
//
//  Created by Manami Ichikawa on 3/7/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    // UIImage 生成したインスタンスに画像を入れる
    UIImage *img = [UIImage imageNamed:@"AppIcon"];
    // UIImageView 初期化
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    
    //UIImageViewのサイズの変更
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    imageView.frame = rect;
    
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius  = 4.0f;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];

}


@end
