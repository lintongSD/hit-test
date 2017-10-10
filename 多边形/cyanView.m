//
//  MyTestView.m
//  多边形
//
//  Created by 林_同 on 2017/10/10.
//  Copyright © 2017年 林_同. All rights reserved.
//

#import "cyanView.h"

@implementation cyanView


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    NSLog(@"%s\t%d", __func__, __LINE__);
    
    UIView *view = [super hitTest:point withEvent:event];
    
    NSLog(@"last     %s\t%d", __func__, __LINE__);
    
    return view;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
