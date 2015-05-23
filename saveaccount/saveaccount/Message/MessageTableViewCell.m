//
//  MessageTableViewCell.m
//  saveaccount
//
//  Created by jixiongge on 15/5/23.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "MessageTableViewCell.h"

@implementation MessageTableViewCell

@synthesize leftimageview,descriptionlabel,paynumberlabel,paytext,timelabel,statuslabel;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
