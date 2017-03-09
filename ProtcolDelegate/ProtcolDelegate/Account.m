//
//  Account.m
//  ProtcolDelegate
//
//  Created by Manami Ichikawa on 3/5/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
@interface Account ()

@property (strong, nonatomic) NSString *today;

@end

@implementation Account



- (void)joinIntern
{
    /*
     delegateメソッドが@optionalの場合、respondsToSelectorで
     delegateオブジェクトがdelegateメソッドを実装しているか判定
     */
    if ([self.delegate respondsToSelector:@selector(canObjc:)]) {
        
         //必要であれば、このように引数にAccountクラス側の情報を渡すことも可能です。
        self.today=@"今日";
        [self.delegate canObjc:self.today];
    }
}
@end
