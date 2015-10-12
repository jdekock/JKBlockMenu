//
//  JKBlockMenuItem.m
//  BlockMenu
//
//  Created by Jordi de Kock on 12-10-15.
//  Copyright © 2015 jdekock. All rights reserved.
//

#import "JKBlockMenuItem.h"

@implementation JKBlockMenuItem

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        self.backgroundColor = [UIColor colorWithRed:42.0f/255.0f green:41.0f/255.0f blue:39.0f/255.0f alpha:1.0];
        
        UIButton *menuButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [menuButton setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [menuButton addTarget:self action:@selector(selectMenuItem) forControlEvents:UIControlEventTouchUpInside];
        [menuButton setBackgroundColor:[UIColor whiteColor]];
        [self addSubview:menuButton];
    }
    
    return self;
}

- (void)selectMenuItem {
    if ([self.delegate respondsToSelector:@selector(selectedMenuItem:)]) {
        [self.delegate performSelector:@selector(selectedMenuItem:) withObject:self.index];
    } else {
        NSLog(@"Delegate not responding");
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
