//
//  SJBaseTableView.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJBaseTableView.h"

@implementation SJBaseTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.showsVerticalScrollIndicator = NO;
        self.backgroundColor = [UIColor clearColor];
        self.backgroundView = nil;
        
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor clearColor];
        [self setTableFooterView:view];
    }
    return self;
}

@end
