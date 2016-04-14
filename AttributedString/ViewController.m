//
//  ViewController.m
//  AttributedString
//
//  Created by Pavankumar Arepu on 4/14/16.
//  Copyright © 2016 PPAM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSArray *plistArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    plistArray = [[NSArray alloc]init];
    NSString *myString = @"That is a test attributed string.";
    
   // _myLabel.text = myString;
    
  
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:myString];
    
    
    [str addAttribute:NSBackgroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(3,5)];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(10,7)];
    
    [str addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:20.0] range:NSMakeRange(20, 10)];
    [str addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleThick) range:NSMakeRange(0, [str length] - 5)];
    
    _myLabel.attributedText = str;
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Model" ofType:@"plist"];
   
    NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    NSArray* allmyKeys = [myDictionary  allValues];
    NSLog(@"%@", allmyKeys);
    NSLog(@"%@", [[allmyKeys objectAtIndex:0] objectAtIndex:0]);
   
    plistArray = [myDictionary objectForKey:@"Course"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
