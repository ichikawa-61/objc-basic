//
//  ViewController.m
//  alert
//
//  Created by Manami Ichikawa on 2/24/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//ボタンを押した後の処理
- (IBAction)pushButton:(UIButton *)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"タイトル" message:@"メッセージ" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // 「ok」ボタンが押された時の処理
        [self otherButtonPushed];
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // 「cancel」ボタンが押された時の処理
        [self cancelButtonPushed];
    }]];
    
    // 画面に表示
    [self presentViewController:alertController animated:YES completion:nil];
}

// アラートのはいボタン押下処理
- (void)otherButtonPushed {
    NSLog(@"OK！");
}

// アラートのいいえボタン押下処理
- (void)cancelButtonPushed {
    NSLog(@"Cancel");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    //-------------------------
    //ボタンの生成と配置
    //-------------------------
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(110,210,100,40)];
    [btn setTitle:@"ボタン" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}




//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
