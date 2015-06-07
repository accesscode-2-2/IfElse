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
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
    NSLog(@"Tapped");
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    UIColor *denied = [UIColor colorWithRed:247.0f/255.0f
        green:45.0f/255.0f blue:45.0f/255.0f alpha:1.0f];
    UIColor *accepted = [UIColor colorWithRed:19.0f/255.0f
        green:204.0f/255.0f blue:12.0f/255.0f alpha:1.0f];
    
    NSString *userName = @"user";
    NSString *password = @"password";
    
    UIFont *font = [UIFont fontWithName:@"FetteBauerscheAntiquaShaddowUNZPro" size:20];
    
    BOOL validateUserName = [one isEqualToString:userName];
    BOOL validatePassword = [two isEqualToString:password];
    
    if (validateUserName && validatePassword) {
        NSLog(@"Success!");
        self.messageLabel.font = [font fontWithSize:70];
        self.messageLabel.text = @"success!";
        [self.view setBackgroundColor:accepted];
    } else if (validateUserName && !validatePassword) {
        NSLog(@"User forgot password");
        self.messageLabel.font = [font fontWithSize:50];
        self.messageLabel.text = @"Invalid Password!";;
        [self.view setBackgroundColor:denied];
    } else if (!validateUserName && validatePassword) {
        NSLog(@"User forgot user name");
        self.messageLabel.font = [font fontWithSize:50];
        self.messageLabel.text = @"Invalid User Name!";
        [self.view setBackgroundColor:denied];
    } else {
        NSLog(@"User forgot everything");
        self.messageLabel.font = [font fontWithSize:70];
        self.messageLabel.text = @"denied!";
        [self.view setBackgroundColor:denied];
    }
}

- (IBAction)clickedOnUserName:(id)sender {
    self.textField1.text = @"";
    self.textField1.text = @"";
    self.textField1.textColor = [UIColor blackColor];
}

- (IBAction)clickedOnPassword:(id)sender {
    self.textField2.text = @"";
    self.textField2.text = @"";
    self.textField2.textColor = [UIColor blackColor];
}


@end
