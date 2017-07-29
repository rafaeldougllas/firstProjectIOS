//
//  ViewController.m
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeLabel:(id)sender {
    //self.myLabel.text = @"Rafael";
    //[self changeLabel2:@"Lala"];
    [self changeLabel2:self.myLabel.text];
}

- (IBAction)copyLabel:(id)sender {
    self.myLabel2.text = self.myLabel.text;
}


-(void) changeLabel2: (NSString *) text{
    NSString * stringNew = [NSString stringWithFormat:@"The name is %@",text];
    self.myLabel2.text = stringNew;
    
    [self changeLabelWith:text And:@" aula"];
}

-(void) changeLabelWith: (NSString *) text And: (NSString *) secondText{
    NSString * stringNew = [NSString stringWithFormat:@"The name is %@ and %@", text, secondText];
    
    self.myLabel.text = stringNew;
}

- (IBAction)modifybtn:(id)sender {
    [self.btnNewView setTitle:@"Pow" forState:
         UIControlStateNormal];
}

- (IBAction)openSecondViewController:(id)sender {
    SecondViewController *secViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    secViewController.name = self.myLabel2.text;
    
    NSArray * array = @[@"Rafael",@"DEV"];
    
    secViewController.meuArray = array;
    
    [self presentViewController:secViewController animated:YES completion:nil];
}



@end
