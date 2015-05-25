//
//  PersonDataTableViewCell.m
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "PersonDataTableViewCell.h"

@implementation PersonDataTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)persontextfield:(id)sender
{
    UITextField *textfield=(UITextField*)sender;
    NSLog(@"tag=%ld",(long)textfield.tag);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
