//
//  ViewController.m
//  crash
//
//  Created by 杨柳 on 2021/2/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getString];
}

- (void)getString{
    NSArray *tempArray = @[@"1", @"2", @"3"];
    NSLog(@"input:%@", tempArray[4]);
}

@end
