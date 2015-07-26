//
//  TimerView.m
//  timerNib
//
//  Created by Leo Kwan on 7/26/15.
//  Copyright (c) 2015 Leo Kwan. All rights reserved.
//

#import "TimerView.h"
#import <Masonry/Masonry.h>

@interface TimerView ()
@property (strong, nonatomic) IBOutlet UIView *timerView;
@property (weak, nonatomic) IBOutlet UIImageView *dialImageView;


@end

@implementation TimerView


-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        [self commonInit];
    }
    
    return self;
}

-(void)commonInit
{
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class)
                                  owner:self
                                options:nil];

    [self addSubview:self.timerView];
    
    [self.timerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
        //        make.width.equalTo(self.mas_width);
//        make.centerX.equalTo(self.mas_centerX);
    }];
    
    
    [self.dialImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.timerView.mas_width);
        make.centerX.equalTo(self.timerView.mas_centerX);
    }];


}

@end
