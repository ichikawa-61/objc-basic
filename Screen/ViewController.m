//
//  ViewController.m
//  Screen
//
//  Created by Manami Ichikawa on 2/23/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UILabelオブジェクトの生成
    UILabel *label = [[UILabel alloc] init];
    //UILabelはラベルを管理するクラス。画面に文字を表示させる時に使用。
    
    //textプロパティで文字を設定
        label.text = NSLocalizedString(@"start Obj-C class", comment: "");
    
    //UILabelで高さを動的に変える。テキストを設定した後に行う。
   [label sizeToFit];
    
   label.center = self.view.center;
    [self.view addSubview:label];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    // UIImage 生成したインスタンスに画像を入れる
    UIImage *img = [UIImage imageNamed:@"Temple"];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
