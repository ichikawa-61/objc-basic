//
//  ViewController.m
//  test
//
//  Created by Manami Ichikawa on 2/17/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"
#import "account.h"


@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Accountクラスのインスタンスを生成する
    Account *intern1 = [Account new];
    Account *intern2 = [Account new];
    Account *intern3 = [Account new];
    
    // 一人目　プロパティをセット
    intern1.name = @"山田太郎";
    intern1.gender = @"君";
    intern1.language = @"java";
    intern1.age = 24;
    
    // 一人目　プロパティをセット
    intern2.name = @"鈴木花子";
    intern2.gender = @"さん";
    intern2.language = @"Ruby";
    intern2.age = 30;
    
    intern3.name = @"田中一郎";
    intern3.gender = @"君";
    intern3.language = @"PHP";
    intern3.age = 22;
    
    // メソッドの呼び出し　[インスタンス　メソッド];
    [intern1 introduce];
    [intern2 introduce];
    [intern3 introduce];
}

@end
