//
//  RGModifyUserInfoApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGModifyUserInfoApi.h"

@implementation RGModifyUserInfoApi

-(NSString *)requestUrl
{
    return @"modifyUserInfo";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

//-(id)requestArgument
//{
//    return  @{
//              @"phone":@(_phone).stringValue,
//              @"password":@(_password).stringValue
//              };
//}
@end
