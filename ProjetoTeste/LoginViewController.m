//
//  LoginViewController.m
//  ProjetoTeste
//
//  Created by Treinamento on 26/08/17.
//  Copyright © 2017 Roadmaps. All rights reserved.
//

#import "LoginViewController.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
#import "ViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)logar:(id)sender {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager
                                              manager];
    
    //crystian@roadmaps.com.br
    //12345678
    
    [manager POST: @"https://teste-aula-ios.herokuapp.com/users/sign_in.json"
       parameters:@{ @"user" : @{ @"email": self.loginField.text,
                                  @"password": self.passwordField.text} }
          success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull
                    responseObject) {
              
              UINavigationController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NavigationViewController"];
              
              
              [self presentViewController:viewController animated:YES completion:nil];
              
          } failure:^(AFHTTPRequestOperation * _Nullable operation, NSError *
                      _Nonnull error) {
              NSLog(@"Login failure");
          }];
}

@end
