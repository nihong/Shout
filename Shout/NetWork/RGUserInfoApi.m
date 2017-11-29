//
//  RGUserInfoApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGUserInfoApi.h"
@interface RGUserInfoApi ()

@end

@implementation RGUserInfoApi

-(NSString *)requestUrl
{
    return @"userInfo";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

//-(id)requestArgument
//{
//    return  @{
//              @"phone":@(_phone).stringValue,
//              @"password":@(_password).stringValue
//              };
//}

@end
