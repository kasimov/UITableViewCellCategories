//
//  UITableViewCell+UITableView.h
//  autocarma
//
//  Created by Maksim Kasimov on 7/31/14.
//  Copyright (c) 2014 autocarma.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (UITableView)

- (UITableView *)tableView;

- (NSArray *)findTextInputs;

@end


@interface UITableView (TextInputs)
- (NSArray *)findTextInputs;

@end