//
//  SecondViewController.h
//  FirstProject
//
//  Created by Treinamento on 29/07/17.
//  Copyright © 2017 Treinamento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) NSString *name;

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;

@property (nonatomic, strong) NSArray *meuArray;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end
