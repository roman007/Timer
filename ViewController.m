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
    
  
    
}


-(void) setupTime
{
    
    // Set the initial setting
    
    seconds = 30;
    
    // Set the labels
    
    timerLabel.text = [NSString stringWithFormat: @"Timer: %i", seconds];

    
    
    // Set the timer
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target: self selector:@selector(subtractTime) userInfo: nil repeats: YES];
    
}

-(void)subtractTime
{
    seconds--;
    timerLabel.text =[NSString stringWithFormat: @"Timer: %i", seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        
    
    }
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) timerButton {
  
    [self setupTime];
  
    
}

- (IBAction) stopButton {
    
[timer invalidate];
seconds = 30;
    
 timerLabel.text = [NSString stringWithFormat: @"Timer: %i", seconds];   
    
}

@end
