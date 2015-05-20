//
//  SJRecommendView.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJRecommendView.h"
#import "SJRecommendCell.h"
#import "SJRecomModel.h"

@interface SJRecommendView () <UITableViewDataSource, UITableViewDelegate>

@end
@implementation SJRecommendView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
    }
    return self;
}

#pragma mark - Table View Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"sjRecommendCell";
    SJRecommendCell *cell = (SJRecommendCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell)
    {
        cell = [[SJRecommendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    [cell setDataWithModel:[SJRecomModel initWithDictionary:nil]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 72;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}
@end
