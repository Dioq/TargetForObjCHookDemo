//
//  AllFunction.m
//  TargetForHookDemo
//
//  Created by Dio Brand on 2022/7/6.
//

#import "AllFunction.h"

@implementation AllFunction

-(int)funcNoParam {
    int tmp = 10;
    return tmp;
}

-(int)funcOneParam:(int)param1 {
    NSLog(@"param1:%d", param1);
    return param1 * 10;
}

-(int)funcManyParam:(int)param1 param2:(int)param2 param3:(int)param3 {
    NSLog(@"param1:%d, param2:%d, param3:%d", param1, param2, param3);
    return param1 + param2 + param3;
}

-(NSString *)funcNSStringHandle:(NSString *)param1 param2:(NSString *)param2 param3:(NSString *)param3 {
    NSString *param = [NSString stringWithFormat:@"%@-->%@-->%@",param1,param2,param3];
    return param;
}

-(NSString *)funcParamObject:(PersonModle *)person {
    NSString *info = [NSString stringWithFormat:@"%@--->%d--->%f",person.name,person.gender,person.height];
    return  info;
}

- (int)blockAsParam:(int)num1 num2:(int)num2 handler:(func_more)handler {
    int sum = handler(num1 + 10, num2 + 10);
    NSLog(@"num1 = %d, num2 = %d, block return value = %d",num1, num2, sum);
    return sum * 10;
}

+(NSString *)sharedInstance {
    return @"sharedInstance no param! not hook";
}

+(NSString *)sharedInstance:(NSString *)param1 param2:(NSString *)param2 param3:(NSString *)param3 {
    NSString *param = [NSString stringWithFormat:@"%@-->%@-->%@",param1,param2,param3];
    return param;
}

+(long)sharedRetNumber {
    long tmp = 10;
    return tmp;
}


+(NSDictionary *)getNSDictionary {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k3", nil];
    return dict;
}
+(NSArray *)getNSArray {
    NSArray *arr = [NSArray arrayWithObjects:@"one",@"two",@"three",@"four", nil];
    return arr;
}
+(NSData *)getNSData {
    NSString *modleStr = @"This is a test string2";
    NSData *data = [modleStr dataUsingEncoding:NSUTF8StringEncoding];
    return data;
}

@end
