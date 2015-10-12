//
//  DashboardViewController.m
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import "DashboardViewController.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor redColor]];
    
    UIButton *openMenu = [UIButton buttonWithType:UIButtonTypeCustom];
    [openMenu setFrame:CGRectMake((self.view.bounds.size.width - 200) / 2, 100, 200, 50)];
    [openMenu setBackgroundColor:[UIColor lightGrayColor]];
    [openMenu setTitle:@"Open menu" forState:UIControlStateNormal];
    [openMenu addTarget:self action:@selector(openMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:openMenu];
}

- (void)openMenu {
    [[JKBlockMenuViewController sharedInstance] switchMenu];
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

@end
