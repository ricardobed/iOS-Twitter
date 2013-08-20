//
//  TweetDetailViewController.m
//  twitter
//
//  Created by Ricardo Bedoya on 8/20/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "TweetDetailViewController.h"
#import "TimelineVC.h"
#import "TweetCell.h"

@interface TweetDetailViewController ()

@end

@implementation TweetDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateUI];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateUI
{
    NSLog(@"Updating the UI");
    self.dvAtUserNameLabel.text = self.storedUserName.text;
    self.dvTweetLabel.text = self.storedTweet.text;
    self.dvUserAvatarImageView = self.storedImageView;
    
    NSLog(@"USERNAME %@ TWEET %@ IMAGE %@", self.dvAtUserNameLabel.text, self.dvTweetLabel.text, self.dvUserAvatarImageView);
    
}

@end
