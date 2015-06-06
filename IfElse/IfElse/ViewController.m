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
@property (weak, nonatomic) IBOutlet UIButton *buttonTellsFuture;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *textField1Value = self.textField1.text;
    
    NSLog(@"%@", textField1Value);
}

@end
