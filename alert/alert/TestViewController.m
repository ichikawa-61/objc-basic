//
//  TestViewController.m
//  alert
//
//  Created by Manami Ichikawa on 2/28/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestViewController.h"

@implementation TestViewController

@synthesize wv;

- (void)dealloc {
    [wv release];
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *URL = [NSURL URLWithString:@"http://www.google.co.jp/"];
    NSURLRequest *URLreq = [NSURLRequest requestWithURL:URL];
    [wv loadRequest: URLreq];
    
}
@end
