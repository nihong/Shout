//
//  RGSwithchUserGroupApi.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>


/**
 切换圈子
 */
@interface RGSwithchUserGroupApi : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId groupId:(NSString *)groupId;
@end
