
//
//  WZXCell.m
//  WZXCellDemo
//
//  Created by wordoor－z on 15/12/24.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import "WZXCell.h"

@implementation WZXCell
-(void)setImgNumber:(NSInteger)imgNumber
{
    CGFloat height = _cellHeight.constant;
    _cellHeight.constant = imgNumber * height;
    for (int i = 0; i<imgNumber; i++)
    {
        UIImageView * imageview = [[UIImageView alloc]initWithFrame:CGRectMake((self.frame.size.width - height)/2.0, i*height, height, height)];
        imageview.image = [UIImage imageNamed:@"1"];
        [_topView addSubview:imageview];
    }
}

- (IBAction)btn1:(id)sender
{
    if (_btn1Block)
    {
        _btn1Block();
    }
}
- (IBAction)btn2:(id)sender
{
    if (_btn2Block)
    {
        _btn2Block();
    }
}

@end
