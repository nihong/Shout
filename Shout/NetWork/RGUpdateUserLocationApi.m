//
//  RGUpdateUserLocationApi.m
//  Shout
//
//  Created by ios-02 on 2017/12/1.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGUpdateUserLocationApi.h"

@interface RGUpdateUserLocationApi ()
{
    NSString * _userId;
    NSString * _province;
    NSString * _city;
    NSString * _country;
    NSString * _street;
    NSInteger  _longitude;
    NSInteger  _latitude;
}
@end

@implementation RGUpdateUserLocationApi

-(instancetype)initWithUserId:(NSString *)userId
                     province:(NSString *)province
                         city:(NSString *)city
                      country:(NSString *)country
                       street:(NSString *)street
                    longitude:(NSInteger)longitude
                     latitude:(NSInteger)latitude
{
    self = [super init];
    if (self) {
        _userId = userId;
        _province = province;
        _city = city;
        _country = country;
        _street = street;
        _longitude = longitude;
        _latitude = latitude;
    }
    return self;
}

-(NSString *)requestUrl
{
    return @"updateUserLocation";
}

-(YTKRequestMethod)requestMethod
{
    return YTKRequestMethodPOST;
}

-(id)requestArgument
{
    return  @{
              @"userId":_userId,
              @"province":_province,
              @"city":_city,
              @"country":_country,
              @"street":_street,
              @"longitude":@(_longitude),
              @"latitude":@(_latitude),
              
              };
}
@end
