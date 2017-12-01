//
//  RGGetUserLocationByGroupIdApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGGetUserLocationByGroupIdApi.h"



@interface RGGetUserLocationByGroupIdApi ()
{
    NSString * _groupId;
    
}
@end

@implementation RGGetUserLocationByGroupIdApi
-(instancetype)initWithGroupId:(NSString *)groupId
{
    self  =[super init];
    
    if (self) {
        _groupId = groupId;
        
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"getUserLocationByGroupId";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    return  @{
              @"groupId":_groupId,
              };
}
@end
