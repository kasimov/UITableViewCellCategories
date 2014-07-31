//
//  UITableViewCell+UITableView.m
//  autocarma
//
//  Created by Maksim Kasimov on 7/31/14.
//  Copyright (c) 2014 autocarma.org. All rights reserved.
//

#import "UITableViewCell+UITableView.h"

@implementation UITableViewCell (UITableView)

- (UITableView *)tableView
{
    __weak UITableView *tableView;
    
    UIView *view = self.superview;
    while(view != nil)
    {
        if([view isKindOfClass:[UITableView class]])
        {
            tableView = (UITableView *)view;
            break;
        }
        view = view.superview;
    }
    
    return tableView;
}

@end
