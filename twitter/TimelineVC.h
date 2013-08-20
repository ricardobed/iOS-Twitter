//
//  TimelineVC.h
//  twitter
//
//  Created by Timothy Lee on 8/4/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TweetDetailViewController;

@interface TimelineVC : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSString *userImageURL;
@property (nonatomic, weak) TweetDetailViewController *detailViewController;

//- (void)configureTweetCell;


@end
