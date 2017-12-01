//
//  RGUserInfoApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

//XXXXXXXX

/**
 获取用户详情信息
 */
@interface RGUserInfoApi : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId isLookForSelf:(BOOL)isSelf;

@end
