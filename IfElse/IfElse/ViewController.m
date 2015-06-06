//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *cond1;
@property (weak, nonatomic) IBOutlet UITextField *cond2;
@property (weak, nonatomic) IBOutlet UITextField *cond3;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation ViewController

- (IBAction)onSubmit:(id)sender {
    NSString *name = self.cond1.text,
            *email = self.cond2.text,
            *emailVerify = self.cond3.text;
    
    
    BOOL nameExists = [name length];
    BOOL emailsAreSame = [email isEqualToString:emailVerify];
    
    BOOL isEmail = [email rangeOfString:@"^.+@.+\\..{2,}$" options:NSRegularExpressionSearch].location != NSNotFound;
    BOOL isEmailV = [emailVerify rangeOfString:@"^.+@.+\\..{2,}$" options:NSRegularExpressionSearch].location != NSNotFound;
    
    if(nameExists){
    if (isEmail && isEmailV) {
    
    if(emailsAreSame){
        self.outputLabel.text = [NSString stringWithFormat:@"Welcome %@!", name];
    }
    else {
        self.outputLabel.text = [NSString stringWithFormat:@"Emails not the same"];
    }
    }
    else {
        self.outputLabel.text = [NSString stringWithFormat:@"Please enter valid e-mail addresses"];
    }
    }
    else {
         self.outputLabel.text = [NSString stringWithFormat:@"Please enter your name"];
    }
    
    
    
}


@end
