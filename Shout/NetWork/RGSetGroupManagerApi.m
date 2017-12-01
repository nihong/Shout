//
//  RGSetGroupManagerApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGSetGroupManagerApi.h"

@interface RGSetGroupManagerApi ()
{
    NSString *  _userId;
    NSString * _groupId;
    double  _groupPost;
}
@end
@implementation RGSetGroupManagerApi
-(instancetype)initWithUserId:(NSString *)userId groupId:(NSString *)groupId groupCost:(NSInteger)groupCost
{
    self = [super init];
    if (self) {
        _userId = userId;
        _groupId = groupId;
        _groupPost = groupCost;
    }
    return self;
}



-(NSString *)requestUrl
{
    return @"setGroupManager";
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
              @"groupPost":@(_groupPost)
              };
}

@end
