//
//  ViewController.h
//  CuteCat
//
//  Created by 朱海芳 on 16/3/15.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface LoginViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneBumb;
@property (weak, nonatomic) IBOutlet UITextField *password;


- (IBAction)RegistAction:(id)sender;
- (IBAction)forgetAction:(id)sender;
- (IBAction)loginAction:(id)sender;

@end

