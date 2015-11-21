//
//  MLWeiBo.m
//  SampleWeiBo
//
//  Created by 李明禄 on 15/11/21.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import "MLWeiBo.h"

@implementation MLWeiBo

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)weiBoWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {

}

@end
