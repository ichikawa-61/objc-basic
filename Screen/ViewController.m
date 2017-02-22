//
//  ViewController.m
//  Screen
//
//  Created by Manami Ichikawa on 2/23/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"

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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
