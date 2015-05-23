//
//  MessageTableViewController.m
//  saveaccount
//
//  Created by jixiongge on 15/5/23.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "MessageTableViewController.h"
#import "MessageTableViewCell.h"

@interface MessageTableViewController ()

@end

@implementation MessageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    messagedatarray=[NSMutableArray arrayWithObjects:@"打车从单位到家",@"111111111111",@"2015.5.21",@"未审批", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0)
    {
        return 3;
    }
    else
    {
        return 3;
    }
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section==0)
    {
        return @"我的报销单";
    }
    else if (section==1)
    {
        return @"审批报销单";
    }
    else
    {
        return @"";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MessageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"messagecell" forIndexPath:indexPath];
    if (indexPath.section==0)
    {
        cell.descriptionlabel.text=[messagedatarray objectAtIndex:0];
        cell.paynumberlabel.text=[messagedatarray objectAtIndex:1];
        cell.timelabel.text=[messagedatarray objectAtIndex:2];
        cell.statuslabel.text=[messagedatarray objectAtIndex:3];
    }
    else
    {
        cell.descriptionlabel.text=[messagedatarray objectAtIndex:0];
        cell.paynumberlabel.text=[messagedatarray objectAtIndex:1];
        cell.timelabel.text=[messagedatarray objectAtIndex:2];
        cell.statuslabel.text=[messagedatarray objectAtIndex:3];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row=%ld",(long)indexPath.row);
}

@end
