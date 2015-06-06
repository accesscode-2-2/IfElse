//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *first;
@property (weak, nonatomic) IBOutlet UITextField *second;
@property (weak, nonatomic) IBOutlet UITextField *third;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;


@end

@implementation ViewController
- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    

    NSString *first = self.first.text;
    NSString *second = self.second.text;
    NSString *third = self.third.text;
    BOOL robot = NO;
    
    
    NSLog(@"%@", first);
    NSLog(@"%@", second);
    NSLog(@"%@", third);
    
    BOOL firstEquals = [ first isEqualToString: @"Chris"];
    BOOL secondEquals = [ second isEqualToString:@"knickstape"];
    BOOL thirdEquals = [ third isEqualToString:@"No"];
    
    if (firstEquals && secondEquals && thirdEquals) {
        NSLog(@"Welcome");
        [self.toggle setOn:YES animated:YES];
    } else { NSLog(@"Rejected");
        [self.toggle setOn:NO animated:YES];
    }
    
   
    
    
    
  
    
    
}

@end
