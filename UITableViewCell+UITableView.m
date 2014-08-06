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

-(NSArray *)findTextInputs
{
    NSMutableArray *cellTextInputs = [NSMutableArray array];
    
    NSArray *cellContentViews = self.contentView.subviews;
    
    for (id obj in cellContentViews)
    {
        if ([obj isKindOfClass:[UITextField class]] ||
            [obj isKindOfClass:[UITextView class]])
        {
            //NSValue *value = [NSValue valueWithNonretainedObject:obj];
            [cellTextInputs addObject:obj];
        }
    }
    
    return cellTextInputs;
}

@end


@implementation UITableView (TextInputs)

- (NSArray *)findTextInputs
{
    NSMutableArray *tableTextInputs = [NSMutableArray array];
    
    for (UITableViewCell *cell in [self visibleCells])
    {
        [tableTextInputs addObjectsFromArray:[cell findTextInputs]];
    }
    
    return tableTextInputs;
}

@end