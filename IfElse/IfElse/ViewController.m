//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *Name;
@property (weak, nonatomic) IBOutlet UITextField *Age;
@property (weak, nonatomic) IBOutlet UITextField *Gender;

@end

@implementation ViewController
- (IBAction)Button:(id)sender {
    
    NSString *age = self.Age.text;
    NSString *name = self.Name.text;
    NSString *gender = self.Gender.text;
    NSInteger ageValue = [age integerValue];
    
    BOOL sameName = [name isEqualToString:@"Jovanny"] || [name isEqualToString:@"jovanny"];
    BOOL male = [gender isEqualToString:@"m"] || [gender isEqualToString:@"M"];
    BOOL adult = ageValue >= 21;
    
    if (sameName) {
        NSLog(@"Wow, so cool. We have the same name!");
        if (!male) {
            NSLog(@"Never heard of a girl with my name before.");
        }
        else {
            NSLog(@"We are totally bros!");
        }
        
    }
    else {
        NSLog(@"Wow, what a cool name. Nice to meet you, %@. I'm Jovanny.", name);
        if (adult) {
            NSLog(@"We should defintiely grab a drink sometime. SHOTS! SHOTS! SHOTS!");
        }
        else {
            NSLog(@"We should definitely play some video games sometime.");
        }
    }
    
    
}



@end
