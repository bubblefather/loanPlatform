//
//  SJRecommendCell.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJRecommendCell.h"
#import "SJRecomModel.h"

@interface SJRecommendCell ()
@property (nonatomic,strong) UIImageView *image;
@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *subLabel;
@end

@implementation SJRecommendCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 0.5;
        
        self.image = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 52, 52)];
        [self.image setBackgroundColor:[UIColor redColor]];
        [self addSubview:self.image];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 15, ScreenWidth_C - 120, 20)];
        [self.titleLabel setFont:[UIFont systemFontOfSize:13]];
        [self addSubview:self.titleLabel];
        
        self.subLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 40, ScreenWidth_C - 120, 20)];
        [self.subLabel setFont:[UIFont systemFontOfSize:13]];
        [self addSubview:self.subLabel];
    }
    return self;
}

- (void)setDataWithModel:(SJRecomModel *)model
{
    [self.image sd_setImageWithURL:[NSURL URLWithString:model.imageUrl] placeholderImage:nil];
    [self.titleLabel setText:model.title];
    [self.subLabel setText:model.subTitle];
}

- (void)prepareForReuse
{
    [self.image setImage:nil];
}

@end
