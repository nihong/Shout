//
//  RGRegisterApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGRegisterApi.h"
@interface RGRegisterApi ()
{
    NSString * _phone;
    NSString *_password;
    NSString *_vcode;
}
@end

@implementation RGRegisterApi

-(instancetype)initWithPhone:(NSInteger)phone password:(NSString *)password vcode:(NSString *)vcode
{
    self  =[super init];
    
    if (self) {
        _phone = @(phone).stringValue;
        _password = password;
        _vcode = vcode;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"register";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"phone":_phone,
              @"password":_password,
              @"vcode":_vcode
              };
}
@end
