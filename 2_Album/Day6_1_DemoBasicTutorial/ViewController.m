//
//  ViewController.m
//  Day6_1_DemoBasicTutorial
//
//  Created by Emily on 3/28/16.
//  Copyright © 2016 Emily. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int counter;
    NSArray *arrayOfImage;
}

- (IBAction)buttonAction_left:(id)sender;
- (IBAction)buttonAction_right:(id)sender;

- (IBAction)switchBtn_Pressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *leftImageField;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageField;

@property (weak, nonatomic) IBOutlet UIImageView *albumView;


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    counter=0;
    arrayOfImage=[[NSArray alloc]initWithObjects:@"i1.png",@"i2.png",@"i3.png",@"i4.png",@"i5.png",@"i6.png",@"i7.png",@"i8.png",@"i9.png",@"i10.png",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonAction_left:(id)sender {
    
    counter--;
    if(counter>=0){
        if(counter==8){self.rightImageField.hidden = NO;}

        _albumView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[arrayOfImage objectAtIndex:counter]]];
        [self.view addSubview:_albumView];
        
        
    }else if(counter==-1){
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"Alert" message:@"Reach to the left end of the album" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alertOk = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            self.leftImageField.hidden = YES;
        }];
        [alertcontroller addAction:alertOk];
        [self presentViewController:alertcontroller animated:YES completion:nil];
        counter++;
    }
    
}

- (IBAction)buttonAction_right:(id)sender {
    counter++;
    if(counter<10){
        if(counter==1){self.leftImageField.hidden = NO;}
        
        _albumView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%@.png",[arrayOfImage objectAtIndex:counter]]];
        [self.view addSubview:_albumView];

    }else if(counter==10){
        UIAlertController *alertcontroller =[UIAlertController alertControllerWithTitle:@"Alert" message:@"Reach to the right end of the album" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *alertOk = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            self.rightImageField.hidden = YES;
        }];
        [alertcontroller addAction:alertOk];
        [self presentViewController:alertcontroller animated:YES completion:nil];
        counter--;
    }
    
}

- (IBAction)switchBtn_Pressed:(id)sender {
    UISwitch *switchBtn = (UISwitch*)sender;
    
    if(switchBtn.on){
        self.leftImageField.hidden = NO;
        self.rightImageField.hidden = NO;
        self.albumView.hidden = NO;
        
    }else{
        self.leftImageField.hidden = YES;
        self.rightImageField.hidden = YES;
        self.albumView.hidden = YES;
    }
}
@end
