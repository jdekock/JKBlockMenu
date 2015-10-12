//
//  AppDelegate.h
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JKBlockMenuViewController.h"

#import "DashboardViewController.h"
#import "FavoritesViewController.h"
#import "SettingsViewController.h"
#import "UserViewController.h"
#import "NotificationsViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) JKBlockMenuViewController *blockMenu;


@end

