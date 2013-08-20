//
//  TweetDetailViewController.h
//  twitter
//
//  Created by Ricardo Bedoya on 8/20/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TweetDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *dvUserAvatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *dvUsernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dvAtUserNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *dvTweetLabel;
@property (weak, nonatomic) IBOutlet UIButton *replyButton;
@property (weak, nonatomic) IBOutlet UIButton *retweetButton;
@property (weak, nonatomic) IBOutlet UIButton *favoriteButton;

@property (nonatomic, strong) UILabel *storedUserName;
@property (nonatomic, strong) UILabel *storedAtUserName;
@property (nonatomic, strong) UILabel *storedTweet;
@property (nonatomic, strong) UIImageView *storedImageView;

- (void)updateUI;

@end
