//
//  RGAddUserContact.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>


/**
 添加通讯录
 */
@interface RGAddUserContact : YTKRequest

-(instancetype)initWithUserId:(NSString *)userId contactId:(NSString *)contactId;

@end
