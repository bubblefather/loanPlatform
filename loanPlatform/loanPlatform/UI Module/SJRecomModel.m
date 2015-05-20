//
//  SJRecomModel.m
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import "SJRecomModel.h"

@implementation SJRecomModel

+ (instancetype)initWithDictionary:(NSDictionary *)param
{
    SJRecomModel *model = [[SJRecomModel alloc] init];
//    model.imageUrl = [param objectForKey:@"imageUrl"];
//    model.title = [param objectForKey:@"title"];
//    model.subTitle = [param objectForKey:@"subTitle"];
    model.imageUrl = nil;
    model.title = @"XXXX成功安例";
    model.subTitle = @"获取XXX金钱";
    return model;
}

@end
