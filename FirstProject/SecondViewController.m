//
//  SecondViewController.m
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Primeiro metodo executado quando cria esse view controller
    
    self.firstLabel.text = self.name;
    
    self.meuArray = self.meuArray;
    
    //Para pegar o clcik do return do teclado
    self.passwordTextField.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


//Serve para funcionar o return do teclado e esconde-lo
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [self.view endEditing:YES];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
