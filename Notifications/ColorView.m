//
//  ColorView.m
//  Notifications
//
//  Created by Thomas Orten on 6/5/14.
//  Copyright (c) 2014 Orten, Thomas. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"ChangeColorNotification" object:nil];
    }
    return self;
}

- (void)changeColor:(NSNotification *)notification
{
    NSString *colorName = [NSString stringWithFormat:@"%@Color", notification.object];
    [UIView animateWithDuration:1.0 animations:^{
        self.backgroundColor = [UIColor performSelector:NSSelectorFromString(colorName)];
    }];
}

@end
