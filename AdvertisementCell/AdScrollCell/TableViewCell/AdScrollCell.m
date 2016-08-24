//
//  AdScrollCell.m
//  AdvertisementCell
//
//  Created by Ali on 16/8/24.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import "AdScrollCell.h"

@implementation AdScrollCell
-(void)awakeFromNib{
    
    CGRect frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.bounds.size.height);
    _viewCarouse = [[CarouselView alloc]initWithFrame:frame];
    [_viewCarouse setPageColor:[UIColor lightGrayColor] andCurrentPageColor:[UIColor whiteColor]];
    _viewCarouse.changeMode = ChangeModeFade;
    _viewCarouse.time = 2;
    [self addSubview:_viewCarouse];
}

-(void)setArrImages:(NSArray *)arrImages{
    _arrImages = arrImages;
    _viewCarouse.imageArray = arrImages;
}

@end
