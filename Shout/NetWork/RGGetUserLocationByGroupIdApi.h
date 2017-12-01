//
//  RGGetUserLocationByGroupIdApi.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>


/**
 根据小组id获取用户和位置
 */
@interface RGGetUserLocationByGroupIdApi : YTKRequest

-(instancetype)initWithGroupId:(NSString *)groupId;
@end
