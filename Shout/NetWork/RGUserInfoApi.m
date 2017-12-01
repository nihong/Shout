//
//  RGUserInfoApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGUserInfoApi.h"
@interface RGUserInfoApi ()
{
    
    NSString * _userId;
    BOOL _isSelf;
}


@end

@implementation RGUserInfoApi

-(instancetype)initWithUserId:(NSString *)userId isLookForSelf:(BOOL)isSelf
{
    self = [super init];
    if (self) {
        _isSelf = isSelf;
        _userId = userId;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"userInfo";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    if (!_isSelf) {
        if (_userId.length == 6) {
            return @{@"userId":_userId};
        }else{
            return @{@"id":_userId};
        }
    }else{
        if (_userId.length == 6) {
            return @{@"ownUerId":_userId};
        }else{
            return @{@"ownId":_userId};
        }
    }
}

@end
