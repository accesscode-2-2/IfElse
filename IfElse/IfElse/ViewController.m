//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *field1;

@property (weak, nonatomic) IBOutlet UITextField *field2;

@property (weak, nonatomic) IBOutlet UITextField *field3;

@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@end


@implementation ViewController



- (IBAction)buttonTapped:(id)sender {
    NSLog(@"signed in");
    
    NSString *name = self.field1.text;
    NSString *em = @"nyc@gmail.com";
    NSLog(@"%@", name);

    NSString *pass1 = self.field2.text;
    NSLog(@"%@", pass1);

    NSString *pass2 = self.field3.text;
    NSLog(@"%@", pass2);
    
    BOOL isTheEmail = [name isEqualToString:em];
    
    BOOL oneEqualTwo = [pass1 isEqualToString:pass2];
    if (oneEqualTwo && isTheEmail) {
        NSLog(@"correct password");
        [self.toggle setOn:YES animated:YES];
    } else {
        NSLog(@"incorrect name or password");
        [self.toggle setOn:NO animated:YES];
    }
    
}

@end
