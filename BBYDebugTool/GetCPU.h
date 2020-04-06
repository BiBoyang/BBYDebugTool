//
//  GetCPU.h
//  BBYDebugTool
//
//  Created by 毕博洋 on 2020/4/6.
//  Copyright © 2020 毕博洋. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GetCPU : UIWindow

+ (CGFloat)appCpuUsage;

+ (NSUInteger)cpuNumber;
@end

NS_ASSUME_NONNULL_END
