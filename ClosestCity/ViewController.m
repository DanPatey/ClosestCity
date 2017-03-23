//
//  ViewController.m
//  ClosestCity
//
//  Created by Dan Patey on 3/22/17.
//  Copyright © 2017 Dan Patey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Consume our file and turn it into strings
    NSString* path = [[NSBundle mainBundle] pathForResource:@"US"
                                                     ofType:@"txt"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    // Create our two arrays
    NSArray *arr = [content componentsSeparatedByString:@"\n"];
    NSMutableArray *cityArr = [[NSMutableArray alloc] initWithCapacity: 5];

    // Break the first huge array into a small second array
    [cityArr insertObject:[NSMutableArray arrayWithObjects:@"0",@"0",@"0",@"0",@"0",nil] atIndex:0];
    
    // Print out our result
    NSLog(@"%@", arr[0]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
