//
//  Ex2.m
//  lab1
//
//  Created by Serban Chiricescu on 06/07/15.
//  Copyright (c) 2015 Qualitance. All rights reserved.
//

#import "Ex2.h"

@implementation Ex2

-(NSUInteger)cumputeFibbonaci:(NSUInteger)number
{
    
    NSUInteger fibbonaci = 1;
    NSUInteger fibbonaciAux = 0;
    NSUInteger fibbonaciAux2 = 0;
    NSUInteger i;
    for (i=1; i<number;i++) {
        fibbonaciAux2 = fibbonaci;
        fibbonaci = fibbonaci+fibbonaciAux;
        fibbonaciAux = fibbonaciAux2;
    }
    //NSLog(@"%d",fibbonaci);
    return fibbonaci;
}

-(NSString *)keyBigestAverageArray:(NSDictionary *)dictionary
{
    double maxAverage = -1;
    NSMutableString *maxKey = [[NSMutableString alloc] init];
    for(id key in dictionary)
    {
        NSArray* array = [NSArray new];
        array = [dictionary objectForKey:key];
        double average = [self computeAverage:array];
        if(average >maxAverage)
        {
            maxAverage = average;
            maxKey = key;
        }
        
    }
    
    NSLog(@"%@",maxKey);
    return maxKey;
}

-(double)computeAverage:(NSArray *)array
{
    int sum = 0;
    int number = 0;
    int i = 0;
    for(i = 0;i<[array count];i++)
    {
        number++;
        sum += [[array objectAtIndex:i] integerValue];
    }
    
    if(number!=0)
        return (sum/number);
    return -1;

}

-(NSArray *)findClosestPointInArray:(NSArray *)points fromPoint:(NSArray *)origin
{
    NSInteger i;
    NSInteger abscisaOrigin = [[origin objectAtIndex:0] integerValue];
    NSInteger ordonataOrigin = [[origin objectAtIndex:1] integerValue];
    double minDistance = 10000;
    double closestAbscisa = abscisaOrigin;
    double closestOrdonata = ordonataOrigin;
    NSMutableArray* closestPoint = [NSMutableArray new];
    for (i=0;i<[points count];i++)
    {
        NSArray* currentPoint = [points objectAtIndex:i];
        double abscisaCurent = [[currentPoint objectAtIndex:0] integerValue];
        double ordonataCurrent = [[currentPoint objectAtIndex:1] integerValue];
        double distance = sqrt( (abscisaCurent-abscisaOrigin)*(abscisaCurent-abscisaOrigin) +
                               (ordonataCurrent-ordonataOrigin)*(ordonataCurrent-ordonataOrigin) );
        if (distance<minDistance)
        {
            minDistance = distance;
            closestAbscisa = abscisaCurent;
            closestOrdonata = ordonataCurrent;
        }
    }
    [closestPoint addObject:[NSNumber numberWithDouble:closestAbscisa]];
    [closestPoint addObject:[NSNumber numberWithDouble:closestOrdonata]];
    NSLog(@"%@",closestPoint);
    return closestPoint;
    
}

-(NSString *)findDateAfter:(NSInteger)numberOfDays from:(NSDate *)fromDate
{
  //  NSDate * dateAfter = [NSDate new];
    NSDateComponents *dateComponent = [NSDateComponents new];
    dateComponent.day = numberOfDays;
    NSCalendar * calendar = [NSCalendar currentCalendar];
    NSDate *dateAfter = [calendar dateByAddingComponents:dateComponent toDate:fromDate options:0];
    //dateAfter = [fromDate dateByAddingTimeInterval:numberOfDays];
    NSString * dateFormated = [NSString new];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormated = [dateFormatter stringFromDate:dateAfter];
    NSLog(@"%@",dateFormated);
    return dateFormated;
}

-(BOOL)checkLeapYear:(NSString *)string
{
    //ex2
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    NSDate* date;
    dateFormatter.dateFormat = @"MMM_dd_yy";
    date= [dateFormatter dateFromString:string];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateFormatter *newDateFormatter = [NSDateFormatter new];
    newDateFormatter.dateFormat=@"yyyy";
    NSString* justYear ;
    justYear = [newDateFormatter stringFromDate:date];
    
  //  justYear =
    
    
  //  NSInteger year = [self yearFromDate: date];
    //return ((year%100 != 0) && year%4 != 0 ))||year%400!=0;
    return NO;
    
}


-(NSInteger)yearFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"yyyy";
    NSInteger year = [[dateFormatter stringFromDate:date]integerValue];
    return year;
}
-(BOOL)checkPrimeNumber:(NSUInteger)number
{
    NSInteger divisor;
    for(divisor = 2;divisor<number/2;divisor++)
    {
        if(number %divisor==0)
            return NO;
    }
    NSLog(@"YES%lu",(unsigned long)number);
    return YES;
}

@end
