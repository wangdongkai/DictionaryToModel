//
//  ViewController.m
//  runtime
//
//  Created by 王东开 on 2017/7/14.
//  Copyright © 2017年 王东开. All rights reserved.
//

#import "ViewController.h"
#import "Status.h"
#import "NSObject+Runtime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    Status *model = [Status initWithDict:dict];
        
    // Do any additional setup after loading the view, typically from a nib.
}




@end
