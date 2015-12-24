//
//  ViewController.m
//  WZXCellDemo
//
//  Created by wordoor－z on 15/12/24.
//  Copyright © 2015年 wzx. All rights reserved.
//

#import "ViewController.h"
#import "WZXCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView * _tableView;
    NSMutableArray * _dataArr;
    NSMutableArray * _heightArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self preData];
    [self createTable];
}
-(void)createTable
{
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}
-(void)preData
{
    _dataArr = [[NSMutableArray alloc]init];
    _heightArr = [[NSMutableArray alloc]init];
    for (int i = 1; i <= 10; i++)
    {
        CGFloat height = 140;
        [_dataArr addObject:[NSString stringWithFormat:@"%d",i]];
        [_heightArr addObject:[NSString stringWithFormat:@"%f",height + (i-1) * 88]];
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WZXCell * cell = [tableView dequeueReusableCellWithIdentifier:@"WZXCell"];
    if (cell == nil)
    {
        cell = [[NSBundle mainBundle]loadNibNamed:@"WZXCell" owner:self options:nil][0];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.btn1Block = ^{
        NSLog(@"1");
    };
    cell.btn2Block = ^{
        NSLog(@"2");
    };
    cell.imgNumber = [_dataArr[indexPath.row]integerValue];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [_heightArr[indexPath.row]floatValue];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
