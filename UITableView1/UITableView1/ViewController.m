//
//  ViewController.m
//  UITableView1
//
//  Created by Manami Ichikawa on 3/6/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic)  NSArray *tableData;
@property(nonatomic)  NSArray *thumbnails;

@end

@implementation ViewController{

   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //プロジェクト内のファイルにアクセスできるオブジェクトを宣言
    NSBundle *bundle = [NSBundle mainBundle];
    //読み込むプロパティリストのファイルパスを指定
    NSString *path = [bundle pathForResource:@"Property List" ofType:@"plist"];
    //プロパティリストの中身データを取得
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *tableData = [dic objectForKey:@"tableData"];
    NSArray *thumbnails = [dic objectForKey:@"thumbnails"];
    
    //取得できた配列データをメンバ変数に代入
    self.tableData = tableData;
    self.thumbnails = thumbnails;
    // Do any additional setup after loading the view, typically from a nib.
    
    }

//必須　セレクション内の行の数　配列を書かない時はreturn 6;など(data source プロトコル)
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [self.tableData count];
}

//必須テーブルの行に表示する値を表示(data source プロトコル)
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    //最初の行、indexPath.row propertyは０をreturn。objectAtIndex” method.を使って thumbnails array から最初のイメージを取得。
    cell.imageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
