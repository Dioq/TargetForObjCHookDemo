//
//  PersonModle.m
//  TargetForHookDemo
//
//  Created by Dio Brand on 2022/7/6.
//

#import "PersonModle.h"

@implementation PersonModle

+(id)getUserId {
    return @"111019960315";
}

- (id)fastSwitchUserWithUserId:(id)arg1 {
    NSString *retValue = [NSString stringWithFormat:@"%@XXXX",arg1];
    return retValue;
}

@end
