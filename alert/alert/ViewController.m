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



- (IBAction)actionSheetButtonPressed:(id)sender {
    
    //タイトルとメッセージ表示
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"タイトル"
        message:@"action sheet."
        preferredStyle:UIAlertControllerStyleActionSheet];
    
    //選択肢を表示
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Twitter"
        style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                        NSLog(@"You pressed Twitter");
            }];
   
    UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"Facebook"
        style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                        NSLog(@"You pressed Facebook");
            }];
    
    UIAlertAction *thirdAction = [UIAlertAction actionWithTitle:@"Line"
        style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                        NSLog(@"You pressed Line");
            }];
    
    [alert addAction:firstAction];
    [alert addAction:secondAction];
    [alert addAction:thirdAction];
    
    
    [self presentViewController:alert animated:YES completion:nil];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    //-------------------------
    //ボタンの生成と配置
    //-------------------------

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(110,210,100,40)];
    button.center = self.view.center;
    [button setTitle:@"ボタン2" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(actionSheetButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [btn setFrame:CGRectMake(110,210,100,40)];
//    [btn setTitle:@"ボタン" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [btn addTarget:self
//            action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
}




//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


@end
