//
//  RGSendRegCodeApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGSendRegCodeApi.h"

@interface RGSendRegCodeApi ()
{
    NSString * _phone;
}
@end

@implementation RGSendRegCodeApi


-(instancetype)initWithPhoneNum:(NSInteger)phone{
    self  =[super init];
    if (self) {
        _phone = @(phone).stringValue;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"sendRegCode";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"phone":_phone,
              };
}
@end
