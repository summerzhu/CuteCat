//
//  RegistViewController.h
//  CuteCat
//
//  Created by 朱海芳 on 16/3/15.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import "BaseViewController.h"

@interface RegistViewController : BaseViewController

- (IBAction)regsitAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumb;


@property (weak, nonatomic) IBOutlet UITextField *password;

@end
