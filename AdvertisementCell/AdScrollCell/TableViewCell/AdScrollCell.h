//
//  AdScrollCell.h
//  AdvertisementCell
//
//  Created by Ali on 16/8/24.
//  Copyright © 2016年 Ali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarouselView.h"

@interface AdScrollCell : UITableViewCell
@property (nonatomic, strong) CarouselView *viewCarouse;
@property (nonatomic, strong) NSArray *arrImages;
@end
