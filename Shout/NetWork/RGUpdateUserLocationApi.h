//
//  RGUpdateUserLocationApi.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 更新用户位置
 
 参数名称    参数类型    参数描述
 userId    String    用户id
 province    String    省
 city    String    城市
 country    String    区
 street    String    街道
 longitude    double    精度
 latitude    double    维度
 */
@interface RGUpdateUserLocationApi : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId
                     province:(NSString *)province
                         city:(NSString *)city
                      country:(NSString *)country
                       street:(NSString *)street
                    longitude:(NSInteger)longitude
                     latitude:(NSInteger)latitude;
@end


