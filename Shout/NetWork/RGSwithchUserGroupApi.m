//
//  RGSwithchUserGroupApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGSwithchUserGroupApi.h"



@interface RGSwithchUserGroupApi ()
{
    NSString *  _userId;
    NSString * _groupId;
    
}
@end
@implementation RGSwithchUserGroupApi
-(instancetype)initWithUserId:(NSString *)userId groupId:(NSString *)groupId
{
    self = [super init];
    if (self) {
        _userId = userId;
        _groupId = groupId;
        
    }
    return self;
}



-(NSString *)requestUrl
{
    return @"swithchUserGroup";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              @"groupId":_groupId,
              
              };
}

@end
