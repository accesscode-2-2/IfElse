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
@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@end


@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
    
    BOOL oneEqualsTwo = [one isEqualToString:two];
    if (oneEqualsTwo) {
        [self.toggle setOn:YES animated:YES];
    } else {
        [self.toggle setOn:NO animated:YES];
    }
    
    if ([three isEqualToString:@"Brooklyn"]) {
        NSLog(@"Brooklyn is fun! Especially the bars in Williamsburg!");
    } else if ([three isEqualToString:@"Queens"]) {
        NSLog(@"Queens has weird roads, but its home to C4Q and Access Code! Awesome!");
    } else if ([three isEqualToString:@"Manhattan"]) {
        NSLog(@"Manhattan is great! Check out Times Square, a play on Broadway, Central Park and the Empire State building!");
    } else if ([three isEqualToString:@"Westchester"]) {
        NSLog(@"Westchester technically isn't a borough, but its still the best!");
    } else {
        NSLog(@"%@ is the darkness, Simba. You must never go there.", three);
    }
    
    NSString *textField1Value = self.textField1.text;
    
    NSLog(@"%@", textField1Value);
    
    
}

@end
