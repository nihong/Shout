//
//  RGLoginApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGLoginApi.h"
@interface RGLoginApi ()
{
    NSInteger _phone;
    NSString * _password;
}
@end

@implementation RGLoginApi

-(instancetype)initWithPhoneNum:(NSInteger)phone password:(NSString *)password
{
    self = [super init];
    if (self) {
        _phone = phone;
        _password = password;
    }
    return self;
    
}


-(NSString *)requestUrl
{
    return @"login";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"phone":@(_phone).stringValue,
              @"password":_password
              };
}

@end
