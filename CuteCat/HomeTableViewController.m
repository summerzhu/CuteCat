//
//  HomeTableViewController.m
//  CuteCat
//
//  Created by 朱海芳 on 16/3/19.
//  Copyright © 2016年 朱海芳. All rights reserved.
//

#import "HomeTableViewController.h"
#import "Const.h"

@interface HomeTableViewController ()

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    if (![[NSUserDefaults standardUserDefaults]boolForKey:kHadLogin]) {
        UINavigationController *loginNav = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginNav"];
        [self presentViewController:loginNav animated:true completion:nil];
    }
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
