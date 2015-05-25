//
//  SettingTableViewCell.m
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "SettingTableViewCell.h"

@implementation SettingTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (IBAction)chageswitch:(id)sender
{
    UISwitch *changeswitch=(UISwitch*)sender;
    NSLog(@"BOOL=%d",changeswitch.isOn);
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
