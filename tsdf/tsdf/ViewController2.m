//
//  ViewController2.m
//  tsdf
//
//  Created by jixiongge on 15/5/25.
//  Copyright (c) 2015年 jixiongge. All rights reserved.
//

#import "ViewController2.h"
#import "CustomPopView.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)showbtn:(id)sender
{
    CustomPopView *popview=[[CustomPopView alloc]initWithFrame:CGRectMake(260, 55, 100, 100)];
    popview.backgroundColor=[UIColor grayColor];
    [self.view.window addSubview:popview];
    
    UIView *whiteview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 10)];
    whiteview.backgroundColor=[UIColor grayColor];
    [popview addSubview:whiteview];
    
    UIView *handview=[[UIView alloc]initWithFrame:CGRectMake(80, 3, 10, 10)];
    handview.backgroundColor=[UIColor redColor];
    [whiteview addSubview:handview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
