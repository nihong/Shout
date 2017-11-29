//
//  RGFetchUserIdApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGFetchUserIdApi.h"
@interface RGFetchUserIdApi ()
{
    NSString * _phone;
}
@end

@implementation RGFetchUserIdApi

-(instancetype)initWithPhoneNum:(NSInteger)phone{
    self  =[super init];
    if (self) {
        _phone = @(phone).stringValue;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"fetchUserId";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    return  @{
              @"phone":_phone,
              };
}

@end
