//
//  RGSaveUserConfigApi.m
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGSaveUserConfigApi.h"
@interface RGSaveUserConfigApi ()
{
    NSString * _userId;
    BOOL _showPhone;
    BOOL _autoSwitchGroup;
    BOOL _allowAddFriend;
    BOOL _autoPlay;
}
@end

@implementation RGSaveUserConfigApi
-(instancetype)initWithUserId:(NSInteger)userId showPhone:(BOOL)showPhone autoSwitchGroup:(BOOL)autoSwitchGroup allowAddFriend:(BOOL)allowAddFriend autoVoicePlay:(BOOL)autoPlay
{
    self  =[super init];
    
    if (self) {
        _userId = @(userId).stringValue;
        _showPhone = showPhone;
        _autoSwitchGroup = autoSwitchGroup;
        _allowAddFriend = allowAddFriend;
        _autoPlay = autoPlay;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"saveUserConfig";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              @"showPhone":@(_showPhone),
              @"autoSwitchGroup":@(_autoSwitchGroup),
              @"allowAddFriends":@(_allowAddFriend),
              @"autoVoicePlay":@(_autoPlay)
              };
}
@end
