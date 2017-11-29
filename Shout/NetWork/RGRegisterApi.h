//
//  RGRegisterApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>


/**
 注册用户
 */
@interface RGRegisterApi : YTKRequest

-(instancetype)initWithPhone:(NSInteger)phone password:(NSString *)password vcode:(NSString *)vcode;
@end
