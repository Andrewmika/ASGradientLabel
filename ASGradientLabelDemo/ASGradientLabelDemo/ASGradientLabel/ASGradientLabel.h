//
//  ASGradientLabel.h
//  ASGradientLabelDemo
//
//  Created by Andrew Shen on 19/12/2017.
//  Copyright © 2017 小小厨师. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASGradientLabel : UILabel

@property (nonatomic, copy) NSArray *colors;    // <##>
@property (nonatomic, copy) NSArray<NSNumber *> *locations;    // <##>
@property (nonatomic, assign) CGPoint startPoint;    // <##>
@property (nonatomic, assign) CGPoint endPoint;    // <##>

@end
