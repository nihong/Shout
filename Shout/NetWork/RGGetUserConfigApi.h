//
//  RGGetUserConfigApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 获取用户设置
 */
@interface RGGetUserConfigApi : YTKRequest

-(instancetype)initWithUserId:(NSInteger)userId;
@end
