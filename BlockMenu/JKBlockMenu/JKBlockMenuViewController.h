//
//  JKBlockMenuViewController.h
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKBlockMenuItem.h"

@interface JKBlockMenuViewController : UIViewController <JKBlockMenuItemDelegate>

@property (nonatomic, strong) NSArray *viewControllers;
@property (nonatomic, strong) UIViewController *centerViewController;
@property (nonatomic, assign) float blockWidth;

- (id)initWithViewControllers:(NSArray *)viewControllers;

+ (JKBlockMenuViewController *)sharedInstance;
- (void)openMenu;
- (void)closeMenu;
- (void)switchMenu;

@end
