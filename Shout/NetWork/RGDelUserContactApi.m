//
//  RGDelUserContactApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGDelUserContactApi.h"



@interface RGDelUserContactApi ()
{
    NSString * _userId;
    NSString * _contactIds;
}
@end
@implementation RGDelUserContactApi
-(instancetype)initWithUserId:(NSString *)userId contactIds:(NSArray *)contactIds
{
    self = [super init];
    if (self) {
        _userId = userId;
        NSMutableString * contactsStr = [[NSMutableString alloc]init];
        for (NSString *contactId in contactIds) {
            [contactsStr appendString:[NSString stringWithFormat:@"%@,",contactId]];
        }
        if (contactsStr.length > 0) {
            [contactsStr deleteCharactersInRange:NSMakeRange(contactsStr.length-1, 1)];
        }
        _contactIds = contactsStr;
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
              @"contactId":_contactIds,
              };
}
@end
