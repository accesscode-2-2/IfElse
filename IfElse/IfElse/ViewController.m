//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TextField1;
@property (weak, nonatomic) IBOutlet UITextField *TextField2;
@property (weak, nonatomic) IBOutlet UITextField *TextField3;
@property (weak, nonatomic) IBOutlet UISwitch *SwitchButton;
@property (weak, nonatomic) IBOutlet UITextField *hiddenTextField;

@end

@implementation ViewController
- (IBAction)SwitchName:(id)sender {
    NSLog(@"you switched it!");
    
    if(self.SwitchButton.on)
    {
        [self.hiddenTextField setHidden:NO];
    }
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"Tapped that!");
}

@end