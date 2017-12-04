//
//  RGUserMessageCell.h
//  Shout
//
//  Created by 泥红 on 2017/12/4.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RGUserMessageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *portraitIV;
@property (weak, nonatomic) IBOutlet UILabel *usernameLB;
@property (weak, nonatomic) IBOutlet UILabel *vipLevel;
@property (weak, nonatomic) IBOutlet UILabel *userIDLB;
@property (weak, nonatomic) IBOutlet UILabel *effectLB;

@end
