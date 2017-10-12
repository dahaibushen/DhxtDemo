//
//  ViewController.m
//  UIScrollview_Demo
//
//  Created by HU on 2017/10/12.
//  Copyright © 2017年 HU. All rights reserved.
//

#import "ViewController.h"
#import <PureLayout.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *homeTableView;
@end

@implementation ViewController
-(UITableView*)homeTableView{
    if (!_homeTableView) {
        _homeTableView = [UITableView newAutoLayoutView];
        [_homeTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
        _homeTableView.delegate = self;
        _homeTableView.dataSource = self;
    }
    return _homeTableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}
@end
