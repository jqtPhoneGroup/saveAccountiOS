//
//  MessageTabViewController.h
//  saveaccount
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageTabViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *messagedatarray;
}
@property (weak, nonatomic) IBOutlet UITableView *messagetabview;

@end
