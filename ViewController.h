//
//  ViewController.h
//  Timer
//
//  Created by Rodney on 10/20/13.
//  Copyright (c) 2013 Rodney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
IBOutlet UILabel *timerLabel;

    NSTimer *timer;
    NSInteger seconds;

    
}

- (IBAction) timerButton;
- (IBAction) stopButton;

@end
