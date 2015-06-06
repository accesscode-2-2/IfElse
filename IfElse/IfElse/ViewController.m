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

@property (weak, nonatomic) IBOutlet UISwitch *button;

@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
@property (weak, nonatomic) IBOutlet UISwitch *switch3;
@property (weak, nonatomic) IBOutlet UISwitch *switch4;
@property (weak, nonatomic) IBOutlet UISwitch *switch5;
@property (weak, nonatomic) IBOutlet UISwitch *switch6;
@property (weak, nonatomic) IBOutlet UISwitch *switch7;
@property (weak, nonatomic) IBOutlet UISwitch *switch8;
@property (weak, nonatomic) IBOutlet UISwitch *switch9;
@property (weak, nonatomic) IBOutlet UISwitch *switch10;
@property (weak, nonatomic) IBOutlet UISwitch *switch11;
@property (weak, nonatomic) IBOutlet UISwitch *switch12;
@property (weak, nonatomic) IBOutlet UISwitch *switch13;
@property (weak, nonatomic) IBOutlet UISwitch *switch14;
@property (weak, nonatomic) IBOutlet UISwitch *switch15;
@property (weak, nonatomic) IBOutlet UISwitch *switch16;
@property (weak, nonatomic) IBOutlet UISwitch *switch17;
@property (weak, nonatomic) IBOutlet UISwitch *switch18;
@property (weak, nonatomic) IBOutlet UISwitch *switch19;
@property (weak, nonatomic) IBOutlet UISwitch *switch20;
@property (weak, nonatomic) IBOutlet UISwitch *switch21;
@property (weak, nonatomic) IBOutlet UISwitch *switch22;
@property (weak, nonatomic) IBOutlet UISwitch *switch23;
@property (weak, nonatomic) IBOutlet UISwitch *switch24;
@property (weak, nonatomic) IBOutlet UISwitch *switch25;
@property (weak, nonatomic) IBOutlet UISwitch *switch26;
@property (weak, nonatomic) IBOutlet UISwitch *switch27;
@property (weak, nonatomic) IBOutlet UISwitch *switch28;
@property (weak, nonatomic) IBOutlet UISwitch *switch29;
@property (weak, nonatomic) IBOutlet UISwitch *switch30;
@property (weak, nonatomic) IBOutlet UISwitch *switch31;
@property (weak, nonatomic) IBOutlet UISwitch *switch32;
@property (weak, nonatomic) IBOutlet UISwitch *switch33;
@property (weak, nonatomic) IBOutlet UISwitch *switch34;
@property (weak, nonatomic) IBOutlet UISwitch *switch35;
@property (weak, nonatomic) IBOutlet UISwitch *switch36;
@property (weak, nonatomic) IBOutlet UISwitch *switch37;
@property (weak, nonatomic) IBOutlet UISwitch *switch38;
@property (weak, nonatomic) IBOutlet UISwitch *switch39;
@property (weak, nonatomic) IBOutlet UISwitch *switch40;
@property (weak, nonatomic) IBOutlet UISwitch *switch41;
@property (weak, nonatomic) IBOutlet UISwitch *switch42;
@property (weak, nonatomic) IBOutlet UISwitch *switch43;
@property (weak, nonatomic) IBOutlet UISwitch *switch44;
@property (weak, nonatomic) IBOutlet UISwitch *switch45;
@property (weak, nonatomic) IBOutlet UISwitch *switch46;
@property (weak, nonatomic) IBOutlet UISwitch *switch47;
@property (weak, nonatomic) IBOutlet UISwitch *switch48;
@property (weak, nonatomic) IBOutlet UISwitch *switch49;



@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three =self.textField3.text;
    
    BOOL oneEqualsThree = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch1 setOn:YES animated:YES];
    } else {
        [self.switch1 setOn:NO animated:YES];
    }
    
    BOOL twoEqualsThree = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch2 setOn:YES animated:YES];
    } else {
        [self.switch2 setOn:NO animated:YES];
    }
    
    BOOL threeEqualsThree = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch3 setOn:YES animated:YES];
    } else {
        [self.switch3 setOn:NO animated:YES];
    }
    
    BOOL oneEqualsTwo = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch4 setOn:YES animated:YES];
    } else {
        [self.switch4 setOn:NO animated:YES];
    }

    BOOL twoEqualsTwo = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch5 setOn:NO animated:NO];
    } else {
        [self.switch5 setOn:YES animated:YES];
    }
    
    BOOL threeEqualsTwo = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch6 setOn:YES animated:YES];
    } else {
        [self.switch6 setOn:NO animated:YES];
    }

    BOOL oneEqualsOne = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch7 setOn:NO animated:YES];
    } else {
        [self.switch7 setOn:NO animated:YES];
    }

    BOOL twoEqualsOne = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch8 setOn:NO animated:YES];
    } else {
        [self.switch8 setOn:YES animated:YES];
    }

    BOOL threeEqualsOne = [one isEqualToString:three];
    if (oneEqualsThree) {
        [self.switch9 setOn:YES animated:YES];
    } else {
        [self.switch9 setOn:YES animated:NO];
    }

}

    

@end
