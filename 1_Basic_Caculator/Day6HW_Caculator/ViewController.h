//
//  ViewController.h
//  Day6HW_Caculator
//
//  Created by Emily  on 3/29/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation;


@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
- (IBAction)numberPressed:(UIButton *)sender;
- (IBAction)calculationPressed:(id)sender;
- (IBAction)equalPressed:(UIButton *)sender;
@end

