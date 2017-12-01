//
//  RGAddUserContact.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGAddUserContact.h"

@interface RGAddUserContact ()
{
    NSString * _userId;
    NSString * _contactId;
}
@end
@implementation RGAddUserContact

-(instancetype)initWithUserId:(NSString *)userId contactId:(NSString *)contactId
{
    self = [super init];
    if (self) {
        _userId = userId;
        _contactId = contactId;
    }
    return self;
}


-(NSString *)requestUrl
{
    return @"addUserContact";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              @"contactId":_contactId,
              };
}
@end
