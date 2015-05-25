//
//  SettingTableViewController.m
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "SettingTableViewController.h"
#import "SettingTableViewCell.h"

@interface SettingTableViewController ()

@end

@implementation SettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    settingdatarray=[NSMutableArray arrayWithObjects:@"信息提示",@"版本号",@"关于本系统",@"版本更新", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [settingdatarray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingcell" forIndexPath:indexPath];
    cell.settinglabel.text=[settingdatarray objectAtIndex:indexPath.row];
    if (indexPath.row!=0)
    {
        cell.settingswitch.alpha=0;
    }
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *destinationController = segue.destinationViewController;
    destinationController.hidesBottomBarWhenPushed = YES;
}

@end
