//
//  MeTableViewController.m
//  saveaccount
//
//  Created by jixiongge on 15/5/23.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "MeTableViewController.h"
#import "MeTableViewCell.h"

@interface MeTableViewController ()

@end

@implementation MeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    medatarray=[NSMutableArray arrayWithObjects:@"个人中心",@"我的设置",@"修改密码",@"退出系统", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [medatarray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mecell" forIndexPath:indexPath];
    cell.melabel.text=[medatarray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==2)
    {
        [self performSegueWithIdentifier:@"updatepassword" sender:self];
    }
    NSLog(@"row=%ld",(long)indexPath.row);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *destinationController = segue.destinationViewController;
    destinationController.hidesBottomBarWhenPushed = YES;
}

@end
