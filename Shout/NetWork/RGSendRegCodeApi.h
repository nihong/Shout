//
//  RGSendRegCodeApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 发送验证码
 */
@interface RGSendRegCodeApi : YTKRequest

-(instancetype)initWithPhoneNum:(NSInteger)phone;
@end
