//
//  ViewController.m
//  Sample013101
//
//  Created by tikomo on 2014/01/31.
//  Copyright (c) 2014年 tikomo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
#pragma marks - 文字列
    
    // 文字列を作る
    NSString* msg = @"Hello World";
    
    NSLog(@"%@", msg);
    
    // 文字列をフォーマットする
    NSString* name = @"hogehoge";
    float point = 32.4;
    
    NSString* result = (point > 30 ? @"AA" : @"BB");
    
    msg = [NSString stringWithFormat:@"%@ %@ %.1f", name, result, point];
    
    NSLog(@"%@", msg);
    
    // 文字列を連結する
    NSString* msg1 = @"Hello";
    NSString* msg2 = @"World";
    
    msg= [msg1 stringByAppendingString:msg2];
    
    NSLog(@"%@", msg);
    
    // フォーマットする
    msg = [NSString stringWithFormat:@"%@ %@", msg1, msg2];
    
    NSLog(@"%@", msg);
    
    // 文字数を調べる
    NSString* msg3 = @"Hello World";
    
    NSInteger len = msg3.length;
    
    NSLog(@"%d", len);

    len = [msg3 length];
    
    NSLog(@"%d", len);
    
    
    // 文字列から文字を取り出す
    NSString* str1 = [msg3 substringFromIndex:6];
    NSString* str2 = [msg3 substringToIndex:5];
    NSLog(@"%@", str1);
    NSLog(@"%@", str2);
    
    // 範囲指定で取り出す
    NSString* msg4 = @"Hi Mr.HogeHoge";
    NSRange range = NSMakeRange(3,6);
    NSString* str4 = [msg4 substringWithRange:range];
    // NSString* str4 = [msg4 substringWithRange:NSMakeRange(3, 4)]; <- ERROR xcode 5.0.2
    NSLog(@"%@", str4);
    
    // 文字列を検索
    NSString* target = @"Hello World, Mr HogeHoge";
    NSString* searchStr = @"Mr";
    
    NSRange getRange = [target rangeOfString:searchStr];
    
    if (getRange.location == NSNotFound) {
        NSLog(@"含まれていない");
    } else {
        NSLog(@"%@  %d文字目", searchStr, getRange.location+1);
    }
    
    NSInteger idx = (getRange.location == NSNotFound ? -1:getRange.location);
    NSLog(@"%d", idx);
    
    
    // 文字列の比較
    NSString* str21 = @"HELLO";
    NSString* str22 = @"hello";
    
    // 2つの文字列を小文字にして比べる
    if([[str21 lowercaseString] isEqualToString:[str22 lowercaseString]]) {
        NSLog(@"同じ");
    } else {
        NSLog(@"違う");
    }
    
    
    // 文字を置き換え
    NSString* str31 = @"Hello World, Mr HogeHoge";
    NSRange range31 = NSMakeRange(6, 5); // 0始まりで6番目から5文字分
    
    NSString* ret = [str31 stringByReplacingCharactersInRange:range31 withString:@"HogeHoge"];
    NSLog(@"%@", ret);
    
    
    // 文字列を数値やBOOL値に変換する
    // 文字列を数値に変換するには intValue, integerValue, floatValue, doubleValue
    NSString* numString = @"123";
    NSInteger num = [numString integerValue];
    NSLog(@"%d", num);
    
    
    // 文字列をBOOL値に変換
    NSString* ans = @"y";
    BOOL result1 = [ans boolValue];
    
    if (result1) {
        NSLog(@"%@ %@", ans, @"YES"); // y YES
    } else {
        NSLog(@"%@ %@", ans, @"NO");
    }
    
    
    // 編集可能な文字列を作る
    // NSString
    // NSMutableString
    // mutable (ミュータブル) mutant:突然変異体の形容詞
    // ミュータブルなNSMutableString, NSStringはイミュータブル
    
    // 10個分割あてるけど、超えても大丈夫
    NSMutableString* msg5 = [NSMutableString stringWithCapacity:10];
    
    NSString* name1 = @"HogeHoge";
    
    [msg5 appendString:name1];
    [msg5 appendString:@" AAAAA"];
    [msg5 appendString:@" BBBBB"];
    
    NSLog(@"%@", msg5); // HogeHoge AAAAA BBBBB
    
    // 文字列の文字を削除する
    NSMutableString* str6 = [NSMutableString string];
    [str6 setString:(@"ABCDEFG")];
    [str6 deleteCharactersInRange:NSMakeRange(1, 3)];
    
    NSLog(@"%@", str6); // AEFG
    
    
    // 文字列に文字を挿入する
    NSMutableString* str7 = [NSMutableString string];
    [str7 setString:(@"あいうえお")];
    [str7 insertString:@"abc" atIndex:2];
    
    NSLog(@"%@", str7); // あいabcうえお
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
