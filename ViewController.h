//
//  ViewController.h
//  Timer
//
//  Created by Rodney on 10/20/13.
//  Copyright (c) 2013 Rodney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) NSDateFormatter *dateFormatter;
@property (weak, nonatomic) NSTimer *pollingTimer;


@end
