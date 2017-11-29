//
//  RGLoginApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 用户登录接口
 */
@interface RGLoginApi : YTKRequest
-(instancetype)initWithPhoneNum:(NSInteger)phone password:(NSString *)password;

@end
