//
//  main.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ex1.h"
#import "Ex2.h"
#import "Ex3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Ex1 *ex1 = [[Ex1 alloc] init];
        NSArray *array = @[@"test",@"one",@"ten"];
        NSString *string = @"Some string";
        [ex1 cappitalizeWordsFromArray:array];
        [ex1 linkAllWordsFromArray:array usingSeparator:@"~"];
        [ex1 linkAndCapitalizeAllWordsFromArray:array usingSeparator:@"~"];
        [ex1 extractSubstringFromString:string starting:1 ending:3];
       [ex1 checkPalindrome:@"madam"];
//        [ex1 checkPalindrome:@"man"];
//        [ex1 checkPalindromeFromCharPosition:1 ofAllWordsFromArray:array];
//        [ex1 checkPalindromeFromCharPosition:2 ofAllWordsFromArray:array];
//        [ex1 checkPalindromeFromCharPosition:3 ofAllWordsFromArray:array];
        
        Ex2 *ex2 = [[Ex2 alloc] init];
//        [ex2 cumputeFibbonaci:10];
//        NSDictionary *dictionary = @{@"first":@[@5,@2,@3],
//                                     @"first":@[@4,@3],
//                                     @"first":@[@11],
//                                     @"first":@[@1,@3]
//                                     };
//        [ex2 keyBigestAverageArray:dictionary];
//        NSArray *pointsArray = @[@[@7.0, @43.0],
//                                 @[@7.0, @42.0],
//                                 @[@6.0, @42.0],
//                                 @[@5.0, @42.0],
//                                 @[@6.0, @43.0],
//                                 @[@5.0, @43.0]
//                                 ];
//        [ex2 findClosestPointInArray:pointsArray fromPoint:@[@0.0, @0.0]];
//        [ex2 findDateAfter:56 from:[NSDate date]];
//        [ex2 checkLeapYear:@"MAY\20\15"];
//        [ex2 checkLeapYear:@"JUL\2\12"];
//        [ex2 checkPrimeNumber:14214];
//        [ex2 checkPrimeNumber:3389];
        
         Ex3 *ex3 = [[Ex3 alloc] init];
        [ex3 runAsyncProcces];
    }
    return 0;
}


