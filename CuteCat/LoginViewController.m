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
#import "MBProgressHUD.h"
#import "MBProgressHUD+Add.h"
#import <BmobSDK/Bmob.h>


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

- (IBAction)loginAction:(id)sender {
    if (_phoneBumb.text.length == 0) {
        [MBProgressHUD showError:@"请输入电话号码" toView:self.view];
    }else if(_password.text.length == 0 ){
        [MBProgressHUD showError:@"请输入密码" toView:self.view];
    }

//Bmob
   [BmobUser loginInbackgroundWithAccount:_phoneBumb andPassword:_password block:^(BmobUser *user, NSError *error) {
       if(user){
           NSLog(@"%@",user);
           [MBProgressHUD showError:@"登录成功" toView:self.view];
//需要跳转到Home页
           
       }else{
           NSLog(@"%@",error);
           [MBProgressHUD showMessag:@"登录失败" toView:self.view];
       }
   }];
    
}
@end