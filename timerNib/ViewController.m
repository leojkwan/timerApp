//
//  ViewController.m
//  timerNib
//
//  Created by Leo Kwan on 7/26/15.
//  Copyright (c) 2015 Leo Kwan. All rights reserved.
//

#import "ViewController.h"
#import "TimerView.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TimerView *timerNib = [[TimerView alloc] init];
    [self.view addSubview:timerNib];
    
    [timerNib mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view).dividedBy(2);
        make.height.equalTo(self.view).dividedBy(2);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
