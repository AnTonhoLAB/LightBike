//
//  LightViewController.m
//  LightBike
//
//  Created by George Gomes on 11/12/18.
//  Copyright © 2018 George Gomes. All rights reserved.
//

#import "LightViewController.h"

@interface LightViewController ()

@end

@implementation LightViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
   
    [UIView transitionWithView:_lightView duration:0.5 options:UIViewAnimationOptionTransitionNone animations:^{
        
        [self->_lightView setBackgroundColor:[UIColor colorWithRed:0.8588 green:0.8588 blue:0.8588 alpha:1]];
    }completion:^(BOOL finished) {
        
    }];
}

@end
