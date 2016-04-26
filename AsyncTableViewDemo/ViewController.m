//
//  ViewController.m
//  AsyncTableViewDemo
//
//  Created by Andrew on 16/4/26.
//  Copyright © 2016年 Andrew. All rights reserved.
//

#import "ViewController.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import <AsyncDisplayKit/ASAssert.h>
@interface ViewController ()<ASTableViewDataSource, ASTableViewDelegate>
@property (nonatomic,strong)ASTableView *tableView;
@property (nonatomic,strong)NSMutableArray *arrayData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}


//-(id)initWithCoder:(NSCoder *)aDecoder{
//    self=[super initWithCoder:aDecoder];
//    if(self){
//      [self initTableView];
//    }
//    return self;
//}
-(void)viewWillLayoutSubviews{

    _tableView.frame=self.view.bounds;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self initTableView];
    [_tableView reloadData];
}


-(void)initTableView{
    if(!_tableView){
        _tableView = [[ASTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain asyncDataFetching:YES];
        _tableView.asyncDataSource = self;
        _tableView.asyncDelegate = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:_tableView];
    }
   
}

#pragma mark
#pragma mark ASTableview delegate

//-(ASCellNodeBlock)tableView:(ASTableView *)tableView nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath{
// 
//}

-(ASCellNode *)tableView:(ASTableView *)tableView nodeForRowAtIndexPath:(NSIndexPath *)indexPath{
    ASTextCellNode *textCellnode=[ASTextCellNode new];
    textCellnode.text=indexPath.description;
    return textCellnode;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 100;
}
@end






