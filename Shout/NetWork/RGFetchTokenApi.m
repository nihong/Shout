//
//  RGFetchTokenApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGFetchTokenApi.h"

@interface RGFetchTokenApi ()
{
    NSString * _userId;
    
}
@end

@implementation RGFetchTokenApi
-(instancetype)initWithUserId:(NSString *)userId
{
    self  =[super init];
    
    if (self) {
        _userId = userId;
        
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"fetchToken";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"id":_userId,
              };
}
@end
