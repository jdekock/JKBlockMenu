//
//  JKBlockMenuItem.h
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JKBlockMenuItemDelegate <NSObject>

- (void)selectedMenuItem:(NSNumber *)index;

@end

@interface JKBlockMenuItem : UIView

@property (nonatomic, strong) NSNumber *index;
@property (nonatomic, assign) id <JKBlockMenuItemDelegate> delegate;

@end

