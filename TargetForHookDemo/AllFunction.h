//
//  AllFunction.h
//  TargetForHookDemo
//
//  Created by Dio Brand on 2022/7/6.
//

#import <Foundation/Foundation.h>
#import "PersonModle.h"

NS_ASSUME_NONNULL_BEGIN

@interface AllFunction : NSObject

// 实例方法 无参数 有返回值
-(int)funcNoParam;
// 实例方法 有1个参数 有返回值
-(int)funcOneParam:(int)param1;
// 实例方法 有多个参数 有返回值
-(int)funcManyParam:(int)param1 param2:(int)param2 param3:(int)param3;
// 参数和返回值为 NSString
-(NSString *)funcNSStringHandle:(NSString *)param1 param2:(NSString *)param2 param3:(NSString *)param3;
// 参数为 NSObject
-(NSString *)funcParamObject:(PersonModle *)person;

// 参数为 block
typedef int (^func_more)(int num1, int num2);
- (int)blockAsParam:(int)num1 num2:(int)num2 handler:(func_more)handler;


// 类方法 无参数 有返回值
+(NSString *)sharedInstance;
// 参数和返回值为 NSString
+(NSString *)sharedInstance:(NSString *)param1 param2:(NSString *)param2 param3:(NSString *)param3;
// 类方法 无参数 有返回值 为数字类型
+(long)sharedRetNumber;


// 主动调用获取一些类型,用来练习处理这些数据类型
+(NSDictionary *)getNSDictionary;
+(NSArray *)getNSArray;
+(NSData *)getNSData;
+(NSData *)getArchive; // 序列化后的数据

@end

NS_ASSUME_NONNULL_END
