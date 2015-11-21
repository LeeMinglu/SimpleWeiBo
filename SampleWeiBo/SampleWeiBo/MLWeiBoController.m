//
//  MLWeiBoController.m
//  SampleWeiBo
//
//  Created by 李明禄 on 15/11/21.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import "MLWeiBoController.h"
#import "MLWeiBo.h"

@interface MLWeiBoController ()
@property (nonatomic, strong) NSArray *weibos;

@end

static NSString * const ID = @"weibo";

@implementation MLWeiBoController


- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 数据源方法


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.weibos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    
    MLWeiBo *weibo = self.weibos[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:weibo.icon];
    
    cell.textLabel.text = weibo.text;
    
    return cell;
        
}

#pragma mark 懒加载
- (NSArray *)weibos {
    if (!_weibos) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"weibos.plist" ofType:nil];
        
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:dictArray.count];
        
        for (NSDictionary *dict in dictArray) {
            MLWeiBo *weibo = [MLWeiBo weiBoWithDictionary:dict];
            [arrM addObject:weibo];
        }
        _weibos = [arrM copy];
    }
    return _weibos;
}
@end
