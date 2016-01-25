//
//  ViewController.m
//  OTJsonParserDemo
//
//  Created by openthread on 1/25/16.
//  Copyright © 2016 openthread. All rights reserved.
//

#import "ViewController.h"
#import "OTJsonParser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *dictionary = @{@"key": @"value", @"key2": @"value2"};
    NSString *jsonString = [dictionary JSONString];
    NSDictionary *jsonObject = [jsonString objectFromJSONString];
    
    NSLog(@"\nJSONString: \n%@\n\nobjectFromJSONString:\n%@", jsonString, jsonObject);
}

@end
