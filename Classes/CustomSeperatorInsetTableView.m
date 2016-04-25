//
//  CustomSeperatorInsetTableView.m
//
//
//  Created by Ron on 25/4/2016.
//  Copyright © 2016 Ron. All rights reserved.
//

#import "CustomSeperatorInsetTableView.h"

@implementation CustomSeperatorInsetTableView

- (void)setMySeparatorInset:(UIEdgeInsets)mySeparatorInset{
    self.mySeparatorInsetLeft = mySeparatorInset.left;
    self.mySeparatorInsetRight = mySeparatorInset.right;
}

- (void)layoutSubviews{
    [super layoutSubviews];

    self.separatorInset = UIEdgeInsetsMake(0, self.mySeparatorInsetLeft, 0, self.mySeparatorInsetRight);
    if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
        self.layoutMargins = self.separatorInset;
    }

    for (UITableViewCell *cell in self.visibleCells) {
        cell.separatorInset = self.separatorInset;
        if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
            cell.layoutMargins = self.separatorInset;
        }
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
