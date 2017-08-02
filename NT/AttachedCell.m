//
//  AttachedCell.m
//  NT
//
//  Created by Kohn on 14-5-27.
//  Copyright (c) 2014年 Pem. All rights reserved.
//

#import "AttachedCell.h"
#import "UIButton+Create.h"

@implementation AttachedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UIButton *b1 = [UIButton createButtonWithFrame:CGRectMake(10, 10, 50, 30) Title:@"B1" Target:self Selector:@selector(btnAction:)];
        
        b1.tag = 1;
        
        UIButton *b2 = [UIButton createButtonWithFrame:CGRectMake(70, 10, 50, 30) Title:@"B2" Target:self Selector:@selector(btnAction:)];
        b2.tag = 2;
        
        UIButton *b3 = [UIButton createButtonWithFrame:CGRectMake(130, 10, 50, 30) Title:@"B3" Target:self Selector:@selector(btnAction:)];
        b3.tag = 3;
        
        UIButton *b4 = [UIButton createButtonWithFrame:CGRectMake(190, 10, 50, 30) Title:@"B4" Target:self Selector:@selector(btnAction:)];
        
        b4.tag = 4;
        
        UIButton *b5 = [UIButton createButtonWithFrame:CGRectMake(250, 10, 50, 30) Title:@"B5" Target:self Selector:@selector(btnAction:)];
        
        b5.tag = 5;
        
        
        [self.contentView addSubview:b1];
        [self.contentView addSubview:b2];
        [self.contentView addSubview:b3];
        [self.contentView addSubview:b4];
        [self.contentView addSubview:b5];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

}
- (IBAction)btnAction:(id)sender {
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 1:
        {
            NSLog(@">>>>>>>>>>B1");
        }
            break;
        case 2:
        {
            NSLog(@">>>>>>>>>>B2");
        }
            break;
        case 3:
        {
            NSLog(@">>>>>>>>>>B3");
        }
            break;
        case 4:
        {
            NSLog(@">>>>>>>>>>B4");
        }
            break;
        case 5:
        {
            NSLog(@">>>>>>>>>>B5");
        }
            break;
            
        default:
            break;
    }
    
    
}

@end
