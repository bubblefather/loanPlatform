//
//  SJRecomModel.h
//  loanPlatform
//
//  Created by zhoubl on 15/5/20.
//  Copyright (c) 2015年 Pencil Vase Corp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SJRecomModel : NSObject

@property (nonatomic, strong) NSString *imageUrl;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;

+ (instancetype)initWithDictionary:(NSDictionary *)param;
@end
