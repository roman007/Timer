//
//  ViewController.m
//  Timer
//
//  Created by Rodney on 10/20/13.
//  Copyright (c) 2013 Rodney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	NSDate *today = [[NSDate alloc] init];
    [self.dateFormatter setDateFormat:@"HH : mm : ss.S"];
    
    
    NSString *currentTime = [self.dateFormatter stringFromDate: today];
    self.timerLabel.text = currentTime;
    
    _pollingTimer = [NSTimer scheduledTimerWithTimeInterval: 0.1 target:self selector:@selector(pollTime) userInfo:nil repeats:YES];
    
    [_pollingTimer invalidate];
    _pollingTimer = nil;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
