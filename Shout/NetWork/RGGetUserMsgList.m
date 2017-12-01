//
//  RGGetUserMsgList.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGGetUserMsgList.h"

@interface RGGetUserMsgList ()
{
    NSString *  _userId;
    NSString * _groupId;
    NSInteger _page;
    NSInteger _pageSize;
    
}
@end
@implementation RGGetUserMsgList
-(instancetype)initWithUserId:(NSString *)userId groupId:(NSString *)groupId page:(NSInteger)page pageSize:(NSInteger)pageSize
{
    self = [super init];
    if (self) {
        _userId = userId;
        _groupId = groupId;
        _page = page;
        _pageSize = pageSize;
        
    }
    return self;
}



-(NSString *)requestUrl
{
    return @"getUserMsgList";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodGET;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              @"groupId":_groupId,
              @"page":@(_page),
              @"pageSize":@(_pageSize)
              };
}

@end
