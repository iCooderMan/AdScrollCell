//
//  ViewController.m
//  AdvertisementCell
//
//  Created by Almas on 16/8/24.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "ViewController.h"
#import "CarouselView.h"
#import "AdScrollCell.h"

@interface ViewController (){
    
    __weak IBOutlet UITableView *table;
    NSMutableArray *arr;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [table registerNib:[UINib nibWithNibName:@"AdScrollCell" bundle:nil] forCellReuseIdentifier:@"AdScrollCell"];
    
    arr = [NSMutableArray new];
    for (int i = 1 ; i<4; i++) {
        NSString *str =[NSString stringWithFormat:@"%d.jpg",i];
        UIImage *img = [UIImage imageNamed:str];
        [arr addObject:img];
    }
    table.rowHeight = 200;
}

#pragma mark - UITableViewDataSource
/** 每个Section 有几行 **/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 1;
}

/** 每行内容 **/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AdScrollCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AdScrollCell"];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.arrImages =arr;
    
    [cell.viewCarouse setImageClickBlock:^(NSInteger idx){
        
        NSLog(@"当前点击的Item - %ld ",(long)idx);
        
    }];
    return cell;
}

@end
