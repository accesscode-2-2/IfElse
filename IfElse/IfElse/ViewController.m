//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () //this viewcontroller is showing us attributes(properties) of our code. Attributes --> Action (implementation)
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
    NSLog (@"tapped");
    

//I'm creating a new variable... if you want to access UITextField, you must use ".self
    
    NSString *textField1Value = self.textField1.text;
    NSLog(@"%@", textField1Value);
    
    NSString *textField2Value = self.textField2.text;
    NSLog(@"%@", textField2Value);
    
    NSString *textField3Value = self.textField3.text;
    NSLog(@"%@", textField3Value);
    
    //-----------------------------
    // justin
    //int  justinAge = 18;
    //BOOL justinAccompanied = YES;
    //BOOL justinSwag = NO;
    //int  justinMoney = 4;
    
    
    // carl
    //int  carlAge = 18;
    //BOOL carlAccompanied = YES;
    //BOOL carlSwag = NO;
    //int  carlMoney = 4000;
    
    // rules
    //int minAge = 21;
    //int minMoney = 200;
    //int buyoff = 50;
    
    
    //if (carlAge < minAge && !carlAccompanied) {
        //NSLog(@"You can't play this game");
    //} else if (!carlSwag) {
        //NSLog(@"welcome");
    //} else if (!carlSwag) {
        //if (carlMoney >= buyoff) {
            //NSLog(@"welcome");
        //} else {
            //NSLog(@"You can't play this game");
        //}
    
    //-----------------------------
    

    
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
    
    //in order to compare string you must send a message to another string.
    
  
    BOOL oneEqualsTwo = [one isEqualToString:two];
        if (oneEqualsTwo) {
        [self.toggle setOn: YES animated: YES];
        }
        if (three < one) {
        [self.toggle setOn: NO animated: YES];
        }
        if (two >= three) {
        [self.toggle setOn: NO animated: NO];
    }


}

@end
