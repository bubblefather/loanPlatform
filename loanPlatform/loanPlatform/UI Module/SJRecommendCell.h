//
//  SJRecommendCell.h
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SJRecomModel;

@interface SJRecommendCell : UITableViewCell

- (void)setDataWithModel:(SJRecomModel *)model;

@end
