//
//  WZXCell.h
//  WZXCellDemo
//
//  Created by wordoor－z on 15/12/24.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WZXCell : UITableViewCell

@property(nonatomic,assign)NSInteger  imgNumber;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cellHeight;
@property (weak, nonatomic) IBOutlet UIView *topView;

@property(nonatomic,copy)void (^btn1Block)();
@property(nonatomic,copy)void (^btn2Block)();
@end
