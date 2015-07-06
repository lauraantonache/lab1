//
//  Exercices.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex1.h"


@implementation Ex1
-(NSArray *)cappitalizeWordsFromArray:(NSArray *)words
{
    
   // NSString* firstElementInArray = words[0];
    NSMutableArray* capitalizedWords = [[NSMutableArray alloc] init];
    for (NSString* word in words)
    {
        [capitalizedWords addObject:[word capitalizedString]];
    }
    
    return capitalizedWords;
}

-(NSString *)linkAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    NSMutableString* linkedWords = [[NSMutableString alloc] init];
    for(NSString* word in words)
    {
        
        [linkedWords appendString:word];
        if(![[words lastObject] isEqualTo:word] )
            [linkedWords appendString:separator];

    }
    
     return linkedWords;
}

-(NSString *)linkAndCapitalizeAllWordsFromArray:(NSArray *)words usingSeparator:(NSString *)separator
{
    
     Ex1 *ex1 = [[Ex1 alloc] init];
    
    NSArray* capitalizedWords = [ex1 cappitalizeWordsFromArray:words];
    NSString* linkedCapitalizedWords = [ex1 linkAllWordsFromArray:capitalizedWords usingSeparator:separator];

    return linkedCapitalizedWords;
}

-(NSString *)extractSubstringFromString:(NSString *)string starting:(NSUInteger)startIndex ending:(NSUInteger)endIndex
{
    
    NSString* substring = [string substringWithRange:NSMakeRange(startIndex, endIndex-startIndex)];
    NSLog(@"%@",substring);
    return substring;
}

-(BOOL)checkPalindrome:(NSString *)string
{
    NSUInteger stringLength = [string length];
    NSUInteger iter;
    //[string characterAtIndex:iter];
    for (iter=0; iter<stringLength/2; iter++)
    {
        if([string characterAtIndex:iter] != [string characterAtIndex:(stringLength-iter-1)])
        {
            NSLog(@"NO");
            return NO;
        }
    }
    
     NSLog(@"YES");
    return YES;
}

-(BOOL)checkPalindromeFromCharPosition:(NSUInteger)index ofAllWordsFromArray:(NSArray *)array
{
    //ex1
    return NO;
}
@end
