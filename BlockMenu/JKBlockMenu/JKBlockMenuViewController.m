//
//  JKBlockMenuViewController.m
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import "JKBlockMenuViewController.h"

@interface JKBlockMenuViewController ()

@end

@implementation JKBlockMenuViewController

- (id)initWithViewControllers:(NSArray *)viewControllers {
    self = [super init];
    if(self) {
        _viewControllers = viewControllers;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
