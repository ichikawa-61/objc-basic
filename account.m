//
//  account.m
//  test
//
//  Created by Manami Ichikawa on 2/17/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "account.h"

@interface Account ()



@end

@implementation Account

- (void)introduce;{

NSLog(@"%@%@は、%@が得意な%ld歳です。\n", self.name, self.gender, self.language, self.age);

}

@end


