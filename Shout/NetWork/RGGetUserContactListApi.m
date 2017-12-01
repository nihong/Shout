//
//  RGGetUserContactListApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGGetUserContactListApi.h"

@interface RGGetUserContactListApi ()
{
    NSString * _userId;

}
@end

@implementation RGGetUserContactListApi
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
    return @"getUserContactList";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              };
}
@end
