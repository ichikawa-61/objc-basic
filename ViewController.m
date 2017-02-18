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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // ここから
    Account *Intern = [Account new];
    
    Intern.name     = @"山田太郎";
    
    NSString *aName = Intern.name;
    NSString *str = [Account Profile:aName];
    NSLog(@"%@", str);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// Do any additional setup after loading the view, typically from a nib.

@end
