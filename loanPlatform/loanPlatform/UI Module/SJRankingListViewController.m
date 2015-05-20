//
//  SJRankingListViewController.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/18.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJRankingListViewController.h"
#import "SJRankListView.h"

@implementation SJRankingListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"月度排名";
    
    SJRankListView *list = [[SJRankListView alloc] initWithFrame:FullViewSize style:UITableViewStylePlain];
    [self.view addSubview:list];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

@end
