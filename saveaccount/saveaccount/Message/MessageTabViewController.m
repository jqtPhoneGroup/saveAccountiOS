//
//  MessageTabViewController.m
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "MessageTabViewController.h"
#import "MessageTableViewCell.h"
#import "KxMenu.h"

@interface MessageTabViewController ()

@end

@implementation MessageTabViewController
@synthesize messagetabview;

- (void)viewDidLoad {
    [super viewDidLoad];
    messagedatarray=[NSMutableArray arrayWithObjects:@"打车从单位到家",@"111111111111",@"2015.5.21",@"未审批", nil];
}

- (IBAction)Popbutton:(UIButton*)sender
{
    NSArray *menuItems =
    @[
      [KxMenuItem menuItem:@"打车费"
                     image:[UIImage imageNamed:@"check_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"差旅费"
                     image:[UIImage imageNamed:@"reload"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"其他费用"
                     image:[UIImage imageNamed:@"search_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      ];
    [KxMenu showMenuInView:self.view.window
                  fromRect:sender.frame
                 menuItems:menuItems];
}

- (void) pushMenuItem:(id)sender
{
    KxMenuItem *button = (KxMenuItem *)sender;
    NSLog(@"%@", button.title);
}

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
