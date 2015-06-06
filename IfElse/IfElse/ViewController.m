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
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;



@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
  /*
    
    NSLog(@"Tapped");
    NSString *textfield1Value = self.textfield1.text;
    NSLog(@"%@", textfield1Value);
  */
    
        NSString *one = self.textField1.text;
        NSString *two = self.textField2.text;
        NSString *three = self.textField3.text;
        NSString *override = @"override";
    
        BOOL oneEqualsTwo = [one isEqualToString:two];
        BOOL isThree = [three isEqualToString:override];
    
        if (oneEqualsTwo) {
            [self.toggle setOn:YES animated:YES];
            self.resultTextView.text = @"Congraz! it Matches!";
        } else if (isThree) {
            [self.toggle setOn:YES animated:YES];
            self.resultTextView.text = @"Nice! it been Override!";
        } else {
            [self.toggle setOn:NO animated:YES];
            self.resultTextView.text = @"ERRO";
        }
    
    
    
    }
    @end