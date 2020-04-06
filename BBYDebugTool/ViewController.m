//
//  ViewController.m
//  BBYDebugTool
//
//  Created by 毕博洋 on 2018/10/18.
//  Copyright © 2018 毕博洋. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+BBYDebugTool/NSObject+BBYDebugTool.h"

#import "GetCPU.h"

@interface ViewController ()

@property (nonatomic, copy) void (^play)(void);
@property (nonatomic, copy) NSString *string;
@property (nonatomic, strong) UIButton *button;

@property (nonatomic , strong) NSTimer *CPUTimer;


@end

@implementation ViewController
{
    NSString *str3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self getCPU];
    
    
    NSInteger cpuCoreNum = [GetCPU cpuNumber];
    
    NSLog(@"%ld",(long)cpuCoreNum);
    
    
    NSString *strA = [NSString stringWithFormat:@"abc"];
    NSString *strB = @"abc";
    NSMutableString *strC = [strA mutableCopy];
    
    
    NSLog(@"-----%@",[[strA class]BBY_SuperClassLine]);
    NSLog(@"-----%@",[[strB class]BBY_SuperClassLine]);
    NSLog(@"-----%@",[[strC class]BBY_SuperClassLine]);
    
    [self BBY_LogProperty];
    [self BBY_LogMethod];
    
//    NSLog(@"_____%@",[[self class]BBY_LogProperty]);
//    NSLog(@"_____%@",[[self class]BBY_LogMethod]);
    
    
}

#pragma mark-----App的CPU占用率

-(void) getCPU {
    self.CPUTimer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(CPUTimerAction:) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop]addTimer:self.CPUTimer forMode:NSRunLoopCommonModes];
    [self.CPUTimer fire];
}

- (void)CPUTimerAction:(NSTimer *)timer {
    CGFloat cpu = [GetCPU appCpuUsage];
    NSLog(@"%.2f",cpu);
}

// CPU核数










@end
