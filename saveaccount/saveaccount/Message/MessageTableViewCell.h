//
//  MessageTableViewCell.h
//  saveaccount
//
//  Created by jixiongge on 15/5/23.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *leftimageview;
@property (weak, nonatomic) IBOutlet UILabel *descriptionlabel;
@property (weak, nonatomic) IBOutlet UILabel *paytext;
@property (weak, nonatomic) IBOutlet UILabel *paynumberlabel;
@property (weak, nonatomic) IBOutlet UILabel *timelabel;
@property (weak, nonatomic) IBOutlet UILabel *statuslabel;

@end
