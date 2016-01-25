//
//  OTJsonParser.m
//  NeteaseMusic
//
//  Created by 史江浩 on 9/25/14.
//  Copyright (c) 2014 openthread. All rights reserved.
//

#import "OTJsonParser.h"

@implementation NSString (OTJsonParser)
- (id)objectFromJSONString
{
    NSError *error = nil;
    id ret = nil;
    @try
    {
        NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
        ret = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers | NSJSONReadingAllowFragments error:&error];
    }
    @catch (NSException *exception)
    {
        return nil;
    }
    
    if (error)
    {
        return nil;
    }
    return ret;
}

@end

@implementation NSObject (OTJsonParser)

- (NSString *)JSONString
{
    NSError *error = nil;
    NSData *data = nil;
    @try
    {
        data = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    }
    @catch (NSException *exception)
    {
        return nil;
    }
    
    if (error)
    {
        return nil;
    }
    
    NSString *resultString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return resultString;
}

@end

