//
//  PersonDataTableViewController.m
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "PersonDataTableViewController.h"
#import "PersonDataTableViewCell.h"

@interface PersonDataTableViewController ()

@end

@implementation PersonDataTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    persondatarray=[NSMutableArray arrayWithObjects:@"用户名",@"邮箱",@"手机号",@"角色", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [persondatarray count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PersonDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"persondatacell" forIndexPath:indexPath];
    cell.persondatalabel.text=[persondatarray objectAtIndex:indexPath.row];
    cell.persindatatextfield.tag=indexPath.row+10;
    return cell;
}

@end
