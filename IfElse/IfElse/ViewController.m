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
@property (weak, nonatomic) IBOutlet UISwitch *toggle;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;

    BOOL  oneEqualsTwo = [one isEqualToString:two];
    
    if(oneEqualsTwo){
      //  NSLog(@"First two are equal");
        [self.toggle setOn:YES animated:YES];
    }else{
        [self.toggle setOn:NO animated:YES];
    }
    
    
    NSInteger intFromString1 = [one integerValue];
    NSInteger intFromString2 = [two integerValue];
    
    if(intFromString1==intFromString2){
          NSLog(@"You extracted integers from the string bruh!");
        [self.toggle setOn:YES animated:YES];
    }else{
        [self.toggle setOn:NO animated:YES];
    }
        
    
    NSLog(@"%@",one);
}


@end
