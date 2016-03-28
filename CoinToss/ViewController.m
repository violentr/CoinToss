//
//  ViewController.m
//  CoinToss
//
//  Created by den on 28/03/2016.
//  Copyright (c) 2016 den. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize status, result;

- (void) simulateCoinToss: (BOOL) userCalledHeads {
    BOOL coinLandedOnHeads = (arc4random() %2) == 0;
    result.text = coinLandedOnHeads ? @"Heads" : @"Tails";
    if (coinLandedOnHeads == userCalledHeads)
        status.text = @"Correct!";
    else
        status.text = @"Wrong!";
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    rotation.fromValue = [NSNumber numberWithFloat:0.0f];
    rotation.toValue = [NSNumber numberWithFloat: 720 * M_PI/ 180.0f];
    rotation.duration = 2.0f;
    [status.layer addAnimation: rotation forKey:@"rotate"];
    CABasicAnimation *fade = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fade.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    fade.fromValue = [NSNumber numberWithFloat:0.0f];
    fade.toValue = [NSNumber numberWithFloat:1.0f];
    fade.duration = 3.5f;
    [status.layer addAnimation:fade forKey:@"fade"];
}
-(IBAction)callHeads{
    [self simulateCoinToss:YES];
}
-(IBAction)callTails{
    [self simulateCoinToss:NO];
}

- (IBAction)callTails:(id)sender forEvent:(UIEvent *)event {
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidUnLoad {
    self.status = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-(void) dealloc {
  //  [status release];
  // [result release];
  //[super dealloc];
// }

@end
