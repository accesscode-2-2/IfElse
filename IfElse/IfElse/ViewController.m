//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog (@"Tapped");
    
    NSString *textField1Value = self.textField1.text;

    NSLog (@"%@", textField1Value);
    
    
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
  
    BOOL oneEqualsTwo = [one isEqualToString:two];
    if (oneEqualsTwo){
        [self.toggle setOn:YES animated:YES];
    } else {
        [self.toggle setOn:NO animated:NO];
        
    }
    
    if (one && [two length] ==0){
        NSLog(@"one not two or three");
        [self.slider setValue:0 animated:YES];
    } else if (two){
        
        [self.slider setValue:5 animated:NO];
    }
    
}


@end