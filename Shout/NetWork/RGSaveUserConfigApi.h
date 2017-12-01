//
//  RGSaveUserConfigApi.h
//  Shout
//
//  Created by 泥红 on 2017/11/30.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

/**
 保存用户设置
 */
@interface RGSaveUserConfigApi : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId showPhone:(BOOL)showPhone autoSwitchGroup:(BOOL)autoSwitchGroup allowAddFriend:(BOOL)allowAddFriend autoVoicePlay:(BOOL)autoPlay;
@end
