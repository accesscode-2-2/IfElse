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
@property (weak, nonatomic) IBOutlet UISwitch *toggle2;
@property (weak, nonatomic) IBOutlet UILabel *text;

@end

@implementation ViewController
- (IBAction)button:(id)sender {
NSLog(@"tapped");

    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
    
    BOOL oneEqualsTwo = [one isEqualToString:two];
    if (oneEqualsTwo) {
        //NSLog(@"first 2 are ==");
        [self.toggle setOn:YES animated: YES];
    } else {
        [self.toggle setOn:NO animated:YES];
    }
    
    BOOL twoEqualsThree = [two isEqualToString:three];
    if (twoEqualsThree) {
        [self.toggle2 setOn:NO animated: YES];
    } else {
        [self.toggle2 setOn:YES animated:YES];
    }
    
    //NSString *textFieldValue = self.textField1.text;
    //NSLog(@"%@", textFieldValue);
    
    self.text.text = @"Hello World, my name is Eric, yo";
    
}

@end
