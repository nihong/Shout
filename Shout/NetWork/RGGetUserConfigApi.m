//
//  RGGetUserConfigApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGGetUserConfigApi.h"


@interface RGGetUserConfigApi ()
{
    NSInteger _userId;
}
@end

@implementation RGGetUserConfigApi

-(instancetype)initWithUserId:(NSInteger)userId
{
    self  =[super init];
    
    if (self) {
        _userId = userId;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"getUserConfig";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    return  @{
              @"userId":@(_userId).stringValue,
              };
}
@end
