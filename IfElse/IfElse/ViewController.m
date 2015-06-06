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

@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField1.text;
    NSString *three = self.textField1.text;
    
    if ([one isEqualToString:(@"33")]) {
        [self.progressBar setProgress:(.50)];
        NSLog(@"You've cracked the code!");
    } else if ([one isEqualToString:(@"22")]) {
        NSLog(@"You've made some progress...!");
        [self.progressBar setProgress:(.33)];
    } else if ([one isEqualToString:(@"66")]){
        [self.progressBar setProgress:(.66)];
        NSLog(@"Making more progress now!");
    } else {
        [self.progressBar setProgress:(.99)];
        NSLog(@"Good job! Full progress!");
    }
    
    
    
    
}



@end
