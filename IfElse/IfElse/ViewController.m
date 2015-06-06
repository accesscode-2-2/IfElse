//
//  ViewController.m
//  IfElse
//
//  Created by Michael Kavouras on 6/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"

// view controller
// @interface declaring attributes of view controller
// attributes
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UITextField *text3;
@property (weak, nonatomic) IBOutlet UISwitch *toggle;
@property (weak, nonatomic) IBOutlet UILabel *question1;
@end

// IBoutlet shows the link between code and interface

@implementation ViewController // action of the button


- (void)viewDidLoad {
    self.question1.text = @"Do you want to attack the squirrel?";
    self.text2.text = @"0";
    self.text3.text = @"0";
    
    int value2 = [self.text2.text intValue];
    int value3 = [self.text3.text intValue];
    
    // Converting String into Integer
    // NSString *intString = @”1″;
    // int value = [intString intValue];
    
    NSString *one = self.text1.text;
    //NSString *two = self.text2.text;
    //NSString *three = self.text3.text;
    
    
    
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"Tapped!");
    



    /*BOOL oneEqualsTwo = [one isEqualToString: two];
    
    if (oneEqualsTwo){
        [self.toggle setOn: YES animated: YES];
        NSLog(@"first two are ==");
    } else {
        [self.toggle setOn: NO animated: YES];
    }
    
    BOOL oneEqualsThree = [one isEqualToString: three];
    if (oneEqualsThree){
        [self.toggle setOn: NO animated:YES];
    } else {
        [self.toggle setOn: YES animated: YES];
    }*/
    
    int playerHP = 100;
    int enemyHP= 100;
    //BOOL playerLive = playerHP > 0;
    
    while(playerHP > 0){
        
        BOOL oneEqualsYes = [one isEqualToString: @"Yes"];
        BOOL oneEqualsNo = [one isEqualToString: @"No"];

        
        if(oneEqualsYes){
            playerHP = playerHP - 3;
            enemyHP = enemyHP - 10;
            self.text2.text = ([NSString stringWithFormat:@"Player HP: %d", playerHP]);
            self.text3.text = ([NSString stringWithFormat:@"Enemy HP: %d", playerHP]);
            NSLog(@"%d", playerHP);

        } else if (oneEqualsNo) {
            playerHP = playerHP - 15;
            self.text2.text = ([NSString stringWithFormat:@"Player HP: %d", playerHP]);
        }
    
        /*if(oneEqualsPoop){
         self.text3.text = (@"yeeeee!");
         }*/
    }
    
    
    
    
}

@end
