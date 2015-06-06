//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;


@end

@implementation ViewController


- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *text1Value = self.text1.text;
    NSLog(@"%@", text1Value);
    
    NSString *one = self.text1.text;
    NSString *two = self.text2.text;
    NSString *three = self.text3.text;
    
    NSString *password = @"threeBananas";
    BOOL correctpassword = [password isEqualToString: three];
    
    BOOL twoEqualsThree = [two isEqualToString:three];
    if (twoEqualsThree) {
        if (correctpassword == YES) {
        [self.toggle setOn:YES animated:YES];
        }
    }
    else {
        [self.toggle setOn:NO animated:YES];
    }
    
    
//    BOOL oneEqualsTwo = [one isEqualToString:two];
//    if (oneEqualsTwo) {
//        NSLog(@"first 2 are ==");
//        [self.toggle setOn:YES animated:YES];
//    } else {
//        [self.toggle setOn:NO animated:YES];
//    }
    
//    BOOL twoEqualsThree = [two isEqualToString:three];
//    if (twoEqualsThree) {
//        NSLog(@"two and three are ==");
//        [self.toggle setOn:YES animated:YES];
//    } else {
//        [self.toggle setOn:NO animated:YES];
//}

}

@end
