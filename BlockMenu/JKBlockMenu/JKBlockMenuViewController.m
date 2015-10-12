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
        _blockWidth = 100.0f;
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
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    _centerViewController = [_viewControllers objectAtIndex:0];
    [self.view addSubview:_centerViewController.view];
    
    for (int i = 0; i < [_viewControllers count]; i++) {
        JKBlockMenuItem *menuItem = [[JKBlockMenuItem alloc] initWithFrame:CGRectMake(0, i * _blockWidth, _blockWidth, _blockWidth)];
        [menuItem setDelegate:self];
        [menuItem setIndex:[NSNumber numberWithInt:i]];
        [self.view insertSubview:menuItem belowSubview:_centerViewController.view];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)openMenu {
    [UIView animateWithDuration:0.3 animations:^{
        [_centerViewController.view setFrame:CGRectMake([self blockWidth], 0, self.view.frame.size.width, self.view.frame.size.height)];
    }];
}

- (void)closeMenu {
    [UIView animateWithDuration:0.3 animations:^{
        [_centerViewController.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    }];
}

- (void)switchMenu {
    float xPos = (_centerViewController.view.frame.origin.x > 0) ? 0 : _blockWidth;
    
    [UIView animateWithDuration:0.3 animations:^{
        [_centerViewController.view setFrame:CGRectMake(xPos, 0, self.view.frame.size.width, self.view.frame.size.height)];
    }];
}

-(void)setSelected:(int)index {
    _centerViewController = [_viewControllers objectAtIndex:index];
}

#pragma mark JKBlockMenuItemDelegate

-(void)selectedMenuItem:(NSNumber *)item {
    [self setSelected:[item intValue]];
    [self closeMenu];
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
