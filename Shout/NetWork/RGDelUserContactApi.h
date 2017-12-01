//
//  RGDelUserContactApi.h
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <YTKNetwork/YTKNetwork.h>

@interface RGDelUserContactApi : YTKRequest

/**
 删除通讯录
 
 朋友的ids多个可以空格分隔

 */
-(instancetype)initWithUserId:(NSString *)userId contactIds:(NSString *)contactIds;
@end
