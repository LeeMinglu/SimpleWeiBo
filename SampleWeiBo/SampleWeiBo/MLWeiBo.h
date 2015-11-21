//
//  MLWeiBo.h
//  SampleWeiBo
//
//  Created by 李明禄 on 15/11/21.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MLWeiBo : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *picture;
@property (nonatomic, assign, getter=isVip) BOOL vip;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)weiBoWithDictionary:(NSDictionary *)dict;



@end
