//
//  RegistViewController.m
//  CuteCat
//
//  Created by 朱海芳 on 16/3/15.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import "RegistViewController.h"
#import <BmobSDK/Bmob.h>
#import "MBProgressHUD+Add.h"
#import "MBProgressHUD.h"

NSString *code;

@interface RegistViewController ()

@end

@implementation RegistViewController

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

//验证验证码 未完成
- (IBAction)checkAction:(id)sender {
    [BmobSMS verifySMSCodeInBackgroundWithPhoneNumber:_phoneNumb.text andSMSCode:code resultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD showError:@"验证成功" toView:self.view];
        }
    }];
}

//请求验证码
- (IBAction)verificateAction:(id)sender {
    [BmobSMS requestSMSCodeInBackgroundWithPhoneNumber:_phoneNumb.text andTemplate:@"register" resultBlock:^(int number, NSError *error) {
        if (error) {
            NSLog(@"%@",error);
        }else{
            NSLog(@"sms ID:%d",number);
            
        }
    }];
    
    
}

- (IBAction)regsitAction:(id)sender {
    if(_phoneNumb.text.length == 0){
        [MBProgressHUD showError:@"请输入电话号码" toView:self.view];
    }else if(_password.text.length == 0){
        [MBProgressHUD showError:@"请输入密码" toView:self.view];
        
    }
    
    BmobUser *bUser = [[BmobUser alloc]init];
    bUser.username = _phoneNumb.text;
    bUser.password = _password.text;
    [bUser signUpInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD showSuccess:@"注册成功" toView:self.view];
            NSLog(@"注册成功");
            
        }else{
            
            NSLog(@"注册失败");
        }
    }];
}
@end
