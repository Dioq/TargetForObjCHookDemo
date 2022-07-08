//
//  PersonModle.h
//  TargetForHookDemo
//
//  Created by Dio Brand on 2022/7/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersonModle : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int gender;
@property(nonatomic,assign)float height;

// 测试主动调用
+(id)getUserId;
-(id)fastSwitchUserWithUserId:(id)arg1;

@end

NS_ASSUME_NONNULL_END
