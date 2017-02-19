//
//  account.h
//  test
//
//  Created by Manami Ichikawa on 2/17/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#ifndef account_h
#define account_h


#endif /* account_h */

#import <Foundation/Foundation.h>
@interface Account : NSObject

    @property (nonatomic) NSString *name;
    @property (nonatomic) NSString *gender;
    @property (nonatomic) NSString *language;
    @property (nonatomic) NSInteger age;

    - (void)introduce;

@end

//
//// 名前を取得する（変数の定義）
//- (NSString *)name;
//// 名前を設定する（メソッド定義）
//- (void)setName:(NSString *)name;
//// 性別を取得する
//- (NSString *)gender;
//// 性別を取得する
//- (void)setGender:(NSString *)gender;
////言語
//- (NSString *)language;
//// 言語を取得する
//- (void)setLanguage:(NSString *)language;
//
//- (NSInteger)age;
//// 年齢を設定する
//- (void)setAge:(NSInteger)age;
//
//
//
//
//
//
//@end
