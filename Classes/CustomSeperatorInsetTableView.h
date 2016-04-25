//
//  CustomSeperatorInsetTableView.h
//
//
//  Created by Ron on 25/4/2016.
//  Copyright © 2016 Ron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomSeperatorInsetTableView : UITableView

@property (nonatomic, assign) IBInspectable CGFloat mySeparatorInsetLeft;
@property (nonatomic, assign) IBInspectable CGFloat mySeparatorInsetRight;

@property (nonatomic, assign) UIEdgeInsets mySeparatorInset;

@end
