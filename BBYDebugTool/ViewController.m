//
//  ViewController.m
//  BBYDebugTool
//
//  Created by 毕博洋 on 2018/10/18.
//  Copyright © 2018 毕博洋. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+BBYDebugTool/NSObject+BBYDebugTool.h"
@interface ViewController ()

@property (nonatomic, copy) void (^play)(void);
@property (nonatomic, copy) NSString *string;
@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController
{
    NSString *str3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
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







@end
