//
//  ViewController.m
//  ASGradientLabelDemo
//
//  Created by Andrew Shen on 19/12/2017.
//  Copyright © 2017 小小厨师. All rights reserved.
//

#import "ViewController.h"
#import "ASGradientLabel.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet ASGradientLabel *leftToRightLabel;
@property (weak, nonatomic) IBOutlet ASGradientLabel *upToDownLabel;
@property (weak, nonatomic) IBOutlet ASGradientLabel *attributedLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.leftToRightLabel.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor greenColor].CGColor];
    self.leftToRightLabel.locations = @[@0 ,@1];
    self.leftToRightLabel.startPoint = CGPointMake(0, 0.5);
    self.leftToRightLabel.endPoint = CGPointMake(1, 0.5);
    
    self.upToDownLabel.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor greenColor].CGColor];
    self.upToDownLabel.locations = @[@0 ,@1];
    self.upToDownLabel.startPoint = CGPointMake(0.5, 0);
    self.upToDownLabel.endPoint = CGPointMake(0.5, 1);
    
    self.attributedLabel.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor greenColor].CGColor];
    self.attributedLabel.locations = @[@0 ,@1];
    self.attributedLabel.startPoint = CGPointMake(0, 0);
    self.attributedLabel.endPoint = CGPointMake(1, 1);
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc] initWithString:@"I`m AttributedString"];
    [attr addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:30] range:NSMakeRange(2, attr.length - 2)];
    self.attributedLabel.attributedText = attr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
