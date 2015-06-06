//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTwo;

@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@property (weak, nonatomic) IBOutlet UITextField *textFieldThree;
@property (weak, nonatomic) IBOutlet UITextField *textFieldFour;
@property (weak, nonatomic) IBOutlet UISwitch *bottomToggle;

@end


@implementation ViewController



- (IBAction)topButt:(id)sender {
    NSLog(@"tapped");
    
    NSString *one = self.textFieldOne.text;
    NSString *two = self.textFieldTwo.text;
//    NSString *three = self.textFieldThree.text;
//    NSString *four = self.textFieldThree.text;
    
    BOOL oneEqualsTwo = [one isEqualToString:two];
    if (oneEqualsTwo) {
        [self.toggle setOn:YES animated:YES];
    } else {
        [self.toggle setOn:NO animated:YES];
    }
    
    NSString *textFieldOneValue = self.textFieldOne.text;
    NSLog(@"%@", textFieldOneValue);
}

//  THE ONE ABOVE IS ALREADY DONE FOR YOU. MAKE THE SECOND PART

- (IBAction)bottomButt:(id)sender {
    NSLog(@"tipped");
    
    NSString *three = self.textFieldThree.text;
    NSString *four = self.textFieldThree.text;
    
    BOOL threeEqualsFour = [three isEqualToString:four];
    if (threeEqualsFour) {
        [self.bottomToggle setOn:YES animated:YES];
    } else {
        [self.bottomToggle setOn:NO animated:YES];
    }
    
    
    
    NSString *textFieldThreeValue = self.textFieldThree.text;
    NSLog(@"%@", textFieldThreeValue);
    
    
    
    
    
    
    
}

@end
