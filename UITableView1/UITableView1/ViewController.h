//
//  ViewController.h
//  UITableView1
//
//  Created by Manami Ichikawa on 3/6/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;

@property (weak, nonatomic) IBOutlet UILabel *Contents;

@end

