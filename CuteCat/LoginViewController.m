//
//  ViewController.m
//  CuteCat
//
//  Created by 朱海芳 on 16/3/15.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import "LoginViewController.h"
#import "RegistViewController.h"
#import "ForgetViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)RegistAction:(id)sender {
    RegistViewController *regist = [self.storyboard instantiateViewControllerWithIdentifier:@"RegistViewController"];
    [self.navigationController pushViewController:regist animated:YES];
    
}

- (IBAction)forgetAction:(id)sender {
    ForgetViewController *forget = [self.storyboard instantiateViewControllerWithIdentifier:@"ForgetViewController"];
    [self.navigationController pushViewController:forget animated:YES];
}
@end