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
@property (weak, nonatomic) IBOutlet UISwitch *toggle1;

@end

@implementation ViewController

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped");
    
    NSString *walks = (@"%d", self.textField1.text);
    NSString *runs = (@"%d", self.textField2.text);
    NSString *hits = (@"%d", self.textField3.text);
    
    /*BOOL oneEqualsTwo = [one isEqualToString:two];
    if (oneEqualsTwo) {
        [self.toggle1 setOn:YES animated:YES];
    } else {
        [self.toggle1 setOn:NO animated:YES];
    }*/
    
    //rules for no-hitter or Perfect Game
    
    /*int *walks = 0;
    int *allowRuns = 0;
    int *allowHits = 0;
    BOOL teamWins = YES;
    */
    
    //pitcher 1
    int walks = 1;
    int runs = 0;
    int hits = 0;
    
    if (walks==0 && runs==0 && hits ==0){
        NSLog(@"Perfect Game!");
    } else if (walks>=0 && runs==0 && hits ==0){
        NSLog(@"No Hitter!");
    } else {
        NSLog (@"nothing special");
    }
        
    
    
}
@end
