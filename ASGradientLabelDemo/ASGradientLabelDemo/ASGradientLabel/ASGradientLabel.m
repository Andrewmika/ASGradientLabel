//
//  ASGradientLabel.m
//  ASGradientLabelDemo
//
//  Created by Andrew Shen on 19/12/2017.
//  Copyright © 2017 小小厨师. All rights reserved.
//

#import "ASGradientLabel.h"

@implementation ASGradientLabel

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGSize textSize = [self.text sizeWithAttributes:@{NSFontAttributeName : self.font}];
    
    if (self.attributedText.length > 0) {
        [self.attributedText drawWithRect:rect options:NSStringDrawingUsesLineFragmentOrigin context:NULL];
    }
    else {
        [self.textColor set];
        [self.text drawWithRect:rect options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:NULL];
    }
    
    CGImageRef mask = CGBitmapContextCreateImage(context);
    CGContextClearRect(context, rect);
    CGFloat kHeight = (rect.size.height + textSize.height) * 0.5;
    CGContextTranslateCTM(context, 0.0f, kHeight);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    CGContextClipToMask(context, rect, mask);
    
    CGFloat temp[self.locations.count];
    for (NSInteger i = 0; i < self.locations.count; i ++) {
        temp[i] = self.locations[i].floatValue;
    }
    
    // 绘制渐变色
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)self.colors, temp);
    CGPoint startPoint = CGPointMake((-rect.origin.x + rect.size.width) * self.startPoint.x,(-rect.origin.y + kHeight) * (1 - self.startPoint.y));
    CGPoint endPoint = CGPointMake((-rect.origin.x + rect.size.width) * self.endPoint.x,(-rect.origin.y +  kHeight) *  (1 - self.endPoint.y));
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    
    // 释放内存
    CGColorSpaceRelease(colorSpace);
    CGGradientRelease(gradient);
    CFRelease(mask);
}

@end
