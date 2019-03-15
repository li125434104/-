//
//  ViewController.m
//  Test
//
//  Created by wanggang on 2018/4/4.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+TAPersonInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    NSString *str = @"abcdefg";
    //这里通过runtime拦截崩溃
    NSString *subStr = [str substringToIndex:100];
    NSLog(@"subStr:%@", subStr);
    
}
    
- (IBAction)btnClick:(id)sender {
    UIViewController *con = [[CTMediator sharedInstance] personInfoWithName:@"寒江" age:18];
    [self.navigationController pushViewController:con animated:YES];
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
