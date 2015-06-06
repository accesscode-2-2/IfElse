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
@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
@property (weak, nonatomic) IBOutlet UISwitch *switch3;
@property (weak, nonatomic) IBOutlet UILabel *labelOutput;

@end

@implementation ViewController


- (IBAction)button:(id)sender {
    NSLog(@"tapped");
    NSString *textField1Value = self.textField1.text ;
    NSString *textField2Value = self.textField2.text ;
    NSString *textField3Value = self.textField3.text ;
    NSInteger age = [textField3Value integerValue];
    NSLog(@"%@",textField1Value);
    NSString *read = @"";
    if([textField1Value length] > 5){
        read=[[read stringByAppendingString:@"Yeah... I won't remember that"]stringByAppendingString:@"\n" ];
        [self.switch1 setOn:NO animated:YES];
    }
    else{
        read =[[read stringByAppendingString:@"What a short name!"]stringByAppendingString:@"\n" ];
        [self.switch1 setOn:YES animated:YES];
    }
    if([textField2Value isEqualToString:@"Pizza"] || [textField2Value isEqualToString:@"pizza"]){
        read =[[read stringByAppendingString:@"Nice, mine too!"]stringByAppendingString:@"\n" ];
        //NSLog(@"Nice, mine too!");
        [self.switch2 setOn:YES animated:YES];
    }
    else{
        read =[[read stringByAppendingString:@"HAHA, no way, pizza is MUCHH better"]stringByAppendingString:@"\n" ];
        //NSLog(@"HAHA, no way, pizza is MUCHH better");
        [self.switch2 setOn:NO animated:YES];
    }
    if(age < 20){
        read =[[read stringByAppendingString:@"Haha, little baby"]stringByAppendingString:@"\n" ];
        //NSLog(@"Haha, little baby");
        [self.switch3 setOn:NO animated:YES];
    }
    else{
        read =[[read stringByAppendingString:@"Damn you look older..awkwardd"]stringByAppendingString:@"\n" ];
        //NSLog(@"Damn you look older..awkwardd");
        [self.switch3 setOn:YES animated:YES];
    }
    
    int count = 0;
    
    if(self.switch1.on){
        count++;
    }
    if(self.switch2.on){
        count++;
    }
    if(self.switch3.on){
        count++;
    }
    
    NSString *countResp =@"";
    if(count==0){
        countResp = [countResp stringByAppendingString:@"Damn 0 switches?! Haha that sucks\n"];
    }
    if(count==1){
        countResp = [countResp stringByAppendingString:@"Well I guess 1 switch is better than none..but not really\n"];
    }
    if(count==2){
        countResp = [countResp stringByAppendingString:@"Whoa 2 switches?! BAD-ASS\n"];
    }
    if(count==3){
        countResp = [countResp stringByAppendingString:@"Look at you getting all 3 switches!!Awesome stuff!\n"];
    }
    
    countResp = [countResp stringByAppendingString:read];
    self.labelOutput.text = countResp;
    read =@"";
    countResp =@"";
    count = 0;
    
}



@end
