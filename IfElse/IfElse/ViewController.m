//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
//    NSString *textField1Value = self.text.text;
//    NSString *textFieldValue2 = self.text2.text;
//    NSString *textFieldValue3 = self.text3.text;
    
    //NSLog(@"%@", textField1Value);
    
    NSString *username = self.text.text;
    NSString *password = self.text2.text;
    NSString *passwordConfirm = self.text3.text;
    //NSInteger usernameCharacters = 6; (NOT NEEDED)
    NSInteger passwordCharacters = 8;
    
    BOOL passwordEqualsPasswordConfirm = [password isEqualToString:passwordConfirm];
    BOOL usernameIsGreaterThan6 = username.length >= 6;
    BOOL passwordIsEqualTo8 = password.length == passwordCharacters;
    BOOL passwordConfirmIsEqualTo8 = passwordConfirm.length == passwordCharacters;
    
    if (!usernameIsGreaterThan6) {
                NSLog(@"Error! Username must be at least 6 characters");
            } else  if (!passwordIsEqualTo8) {
                NSLog(@"Error! Password must be 8 characters");
                [self.toggle setOn:YES animated:YES];
            } else if (!passwordConfirmIsEqualTo8) {
                NSLog(@"Error! Password must be 8 characters");
                [self.toggle setOn:YES animated:YES];
            } else if (!passwordEqualsPasswordConfirm) {
                NSLog(@"Error! Passwords do not match");
                [self.toggle setOn:YES animated:YES];
            } else {
                NSLog(@"Permission Granted");
                [self.toggle setOn:NO animated:YES];
            }
    
    
//    BOOL oneEqualsTwo = [one isEqualToString:two];
//    BOOL  text3IsEqualTo8 = three.length == password3Characters;
//
//    if (!oneEqualsTwo) {
//        NSLog(@"Error! Usernames do not match");
//    } else  if (!text3IsEqualTo8) {
//        NSLog(@"Error! Password must be 8 characters");
//        [self.toggle setOn:YES animated:YES];
//    } else {
//        NSLog(@"Permission Granted.");
//        [self.toggle setOn:NO animated:YES];
//    }
    

    
//    if (!oneEqualsTwo) {
//        NSLog(@"Error! Passwords do not match");
//    } else {
//        NSLog(@"Permission Granted");
//    }
//    
//    if (!text3IsEqualTo8) {
//        NSLog(@"Error! Password must be 8 characters");
//    } else {
//        NSLog(@"Password accepted. Permission granted.");
//    }
    
//    if (oneEqualsTwo) {
//        NSLog(@"first 2 are ==");
//    }
//      if (oneEqualsTwo) {
//        [self.toggle setOn:YES animated:YES];
//      } else {
//          [self.toggle setOn:NO animated:YES];
//      }
    
    
}

@end
