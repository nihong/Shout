//
//  RGFetchTokenApi.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 获取融云token
 */
@interface RGFetchTokenApi : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId;
@end
