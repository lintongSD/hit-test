//
//  ShapeButton.m
//  多边形
//
//  Created by 林_同 on 2017/10/10.
//  Copyright © 2017年 林_同. All rights reserved.
//

#import "ShapeButton.h"

@implementation ShapeButton{
    CAShapeLayer *shapeLayer;
}

-(void)setShapePath:(UIBezierPath *)shapePath{
    _shapePath=shapePath;
    if (_shapePath==nil) {
        self.layer.mask=nil;
        return;
    }
    if (!shapeLayer) {
        shapeLayer=[CAShapeLayer layer];
    }
    shapeLayer.path=_shapePath.CGPath;
    self.layer.mask=shapeLayer;
}

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    
    NSLog(@"%s\t%d", __func__, __LINE__);
    
    if (_shapePath&&[_shapePath containsPoint:point]==NO) {
        return nil;
    }
    
    NSLog(@"last     %s\t%d", __func__, __LINE__);
    
    return [super hitTest:point withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
