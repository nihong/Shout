//
//  RGGetUserCurrentGroup.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 获取用户当前所在的小组
 */
@interface RGGetUserCurrentGroup : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId;
@end
