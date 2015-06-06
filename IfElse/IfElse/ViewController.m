//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;


@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
    
    
    BOOL oneEqualsTwo = [one isEqualToString:two];
    BOOL twoEqualsThree = [two isEqualToString:three];
    
    
    if (twoEqualsThree) {
        [self.toggle setOn:YES animated:YES];
        NSLog(@"Welcome!");
    } else if (oneEqualsTwo) {
        [self.toggle setOn:NO animated:YES];
        NSLog(@"Please maker sure your password is different from you username!");
    } else {
        [self.toggle setOn:NO animated:YES];
        NSLog(@"Please make sure you enter the same password!");
    }
    
    
}

@end
