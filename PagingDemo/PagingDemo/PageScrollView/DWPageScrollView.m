//
//  DWPageScrollView.m
//  PagingDemo
//
//  Created by lg on 2019/1/29.
//  Copyright © 2019年 lancoo. All rights reserved.
//

#import "DWPageScrollView.h"


@interface DWPageScrollView()

@property (nonatomic,strong) NSArray *controllers;

@end

@implementation DWPageScrollView


-(instancetype)initWithControllers:(NSArray <UIViewController *>*)controllers{
    if (self = [super init]) {
        //分页滚动
        self.pagingEnabled = YES;
        _controllers = controllers;
    }
    return self;
}


-(void)setupConstraints{
    
    
}


-(void)setupLayout{
    
    for (int i=0; i<self.controllers.count; i++) {
        UIViewController *vc = self.controllers[i];
        [self addSubview:vc.view];
        
    }
    
}



@end
