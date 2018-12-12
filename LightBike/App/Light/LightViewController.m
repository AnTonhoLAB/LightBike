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
    [self pulse];
}

- (IBAction)backToMenu:(id)sender {
    NSLog(@"PORRA");
    [self dismissViewControllerAnimated: YES completion: nil];
}

- (void) pulse {
    [UIView transitionWithView:self.lightView duration:0.5 options:UIViewAnimationOptionRepeat animations:^{
        [self.lightView setBackgroundColor:[UIColor redColor]];
    }completion:^(BOOL finished) {
        [self.lightView setBackgroundColor:[UIColor blackColor]];
    }];
}

-(BOOL)prefersStatusBarHidden {
    return YES;
}

@end
