//
//  ViewController.m
//  Aula0401
//
//  Created by Aluno on 07/05/15.
//  Copyright (c) 2015 Glauber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    int x = 0;
    int y = 0;
    int cx = 0;
    for (int i = 1; i <=60; i++) {
        if (i % 4 == 1) {
            x = 10;
            y += 90;
        } else {
            x += 90;
        }
        CGRect labelFrame = CGRectMake(x, y, 80, 80 );
        UILabel* label = [[UILabel alloc] initWithFrame: labelFrame];
        [label setText: [NSString stringWithFormat:@"%d", i]];
        [label setBackgroundColor: [UIColor orangeColor]];
        [self.scrollView addSubview: label];
        cx += label.frame.size.height + 1;
    }
    [self.scrollView setContentSize:CGSizeMake([self.scrollView bounds].size.width , cx)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
