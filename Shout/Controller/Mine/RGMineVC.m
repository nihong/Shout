//
//  RGMineVC.m
//  Shout
//
//  Created by 泥红 on 2017/11/29.
//  Copyright © 2017年 RoyGao. All rights reserved.
//

#import "RGMineVC.h"
#import "RGUserMessageCell.h"
#import <YYKit.h>

static NSString  * kUserMessageCell = @"kUserMessageCell";
static NSString  * kNormalCell = @"kNormalCell";
@interface RGMineVC ()

@property (nonatomic,strong)NSArray * titleArray;

@end

@implementation RGMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([RGUserMessageCell class]) bundle:nil] forCellReuseIdentifier:kUserMessageCell];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kNormalCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }else if(section == 1){
        return 4;
    }else if (section ==2){
        return 2;
    }else{
        return 2;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        RGUserMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:kUserMessageCell];
        cell.portraitIV.layer.cornerRadius = 36.f;
        cell.portraitIV.layer.masksToBounds = YES;
        cell.portraitIV.backgroundColor = [UIColor redColor];
        return cell;
    }
    else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNormalCell];
        NSString * cellTitle = self.titleArray[indexPath.section-1][indexPath.row];
        if (indexPath.section == 1 && indexPath.row == 0) {
            UILabel *accessoryLB =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 26)];
            accessoryLB.text = @"充值";
            accessoryLB.layer.cornerRadius = 13.f;
            accessoryLB.layer.masksToBounds = YES;
            accessoryLB.backgroundColor = [UIColor blueColor];
            cell.accessoryView = accessoryLB;
        }else if (indexPath.section == 2 && indexPath.row == 1){
            UILabel *accessoryLB =[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 26)];
            accessoryLB.text = [NSString stringWithFormat:@"(%dM)",888];
            accessoryLB.layer.borderColor = UIColorHex(999999).CGColor;
            accessoryLB.layer.borderWidth =  1.f;
            accessoryLB.textAlignment = NSTextAlignmentCenter;
            cell.accessoryView = accessoryLB;
        }
        cell.textLabel.text = cellTitle;
        
        return cell;
        
    }
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 15.f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark Setter && Getter
-(NSArray *)titleArray
{
    if (!_titleArray) {
        _titleArray = @[@[@"金币",@"账号设置",@"我的圈子",@"消息通知"],@[@"隐私设置",@"清除缓存"],@[@"意见反馈",@"关于APP"]];
    }
    return _titleArray;
}
@end
