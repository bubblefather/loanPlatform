//
//  SJRecommendListViewController.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/18.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJRecommendListViewController.h"
#import "SJRecommendView.h"

@implementation SJRecommendListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"成功案例";
    
    SJRecommendView *list = [[SJRecommendView alloc] initWithFrame:FullViewSize style:UITableViewStylePlain];
    [self.view addSubview:list];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end
