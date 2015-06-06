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


@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {

    
 
    
    
    NSString *one = self.textField1.text;
    NSString *two = self.textField2.text;
    NSString *three = self.textField3.text;
  
    // Resource used: http://stackoverflow.com/questions/2753956/how-do-i-check-if-a-string-contains-another-string-in-objective-c
    
    
    if ([one rangeOfString:@"*"].location == NSNotFound) {
        NSLog(@"%@", one);
        NSLog(@"Approved");
    } else {
        NSLog(@"%@", one);
        NSLog(@"Please make sure that your statement does not contain the following disallowed character: *");
    }
}
    


@end