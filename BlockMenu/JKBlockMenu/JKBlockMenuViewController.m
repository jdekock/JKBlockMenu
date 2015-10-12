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

static JKBlockMenuViewController *sharedInstance;

@implementation JKBlockMenuViewController

- (id)initWithViewControllers:(NSArray *)viewControllers {
    self = [super init];
    if(self) {
        _viewControllers = viewControllers;
        sharedInstance = self;
    }
    
    return self;
}

+ (JKBlockMenuViewController *)sharedInstance {
    if(sharedInstance == nil) {
        sharedInstance = [[JKBlockMenuViewController alloc] init];
    }
    
    return sharedInstance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _centerViewController = [[UIViewController alloc] init];
    [self.view addSubview:[(UIViewController *)[_viewControllers objectAtIndex:0] view]];
    
    for (int i = 0; i < [_viewControllers count]; i++) {
        JKBlockMenuItem *menuItem = [[JKBlockMenuItem alloc] initWithFrame:CGRectMake(0, i * _blockWidth, _blockWidth, _blockWidth)];
        [self.view insertSubview:menuItem belowSubview:_centerViewController.view];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)openMenu {
    [UIView animateWithDuration:0.3 animations:^{
        [[[JKBlockMenuViewController sharedInstance] view] setFrame:CGRectMake([[JKBlockMenuViewController sharedInstance] blockWidth], 0, [JKBlockMenuViewController sharedInstance].view.frame.size.width, [JKBlockMenuViewController sharedInstance].view.frame.size.height)];
    }];
}

-(void)setSelected:(int)index {
    _centerViewController = [_viewControllers objectAtIndex:index];
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
