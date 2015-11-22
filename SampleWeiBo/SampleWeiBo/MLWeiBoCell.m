//
//  MLWeiBoCell.m
//  SampleWeiBo
//
//  Created by 李明禄 on 15/11/22.
//  Copyright © 2015年 SocererGroup. All rights reserved.
//

#import "MLWeiBoCell.h"
#define MLNameFont [UIFont systemFontOfSize:13]
#define MLTextFont [UIFont systemFontOfSize:12]


@interface MLWeiBoCell ()
@property (nonatomic, weak) UIImageView *iconImgView;
@property (nonatomic, weak) UILabel *nameLabel;
@property (nonatomic, weak) UIImageView *vipImgView;
@property (nonatomic, weak) UILabel *descLabel;
@property (nonatomic, weak) UIImageView *picImgView;

@end

@implementation MLWeiBoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //动态创建子控件
        
        //头像
        UIImageView *iconImgView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconImgView];
        self.iconImgView = iconImgView;
        
        //昵称
        UILabel *nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:nameLabel];
        nameLabel.font = MLNameFont;
        self.nameLabel = nameLabel;
        
        //vip
        UIImageView *vipImgView = [[UIImageView alloc] init];
        [self.contentView addSubview:vipImgView];
        vipImgView.image = [UIImage imageNamed:@"vip"];
        self.vipImgView = vipImgView;
        
        //正文
        UILabel *descLabel = [[UILabel alloc] init];
        [self.contentView addSubview:descLabel];
        descLabel.font = MLTextFont;
        descLabel.numberOfLines = 0;
        self.descLabel = descLabel;
        
        //配图
        UIImageView *picImgView = [[UIImageView alloc] init];
        [self.contentView addSubview:picImgView];
        self.picImgView = picImgView;
    }
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
