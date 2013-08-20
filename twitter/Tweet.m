//
//  Tweet.m
//  twitter
//
//  Created by Timothy Lee on 8/5/13.
//  Copyright (c) 2013 codepath. All rights reserved.
//

#import "Tweet.h"
#import "TimelineVC.h"

@implementation Tweet

- (NSString *)text {
    return [self.data valueOrNilForKeyPath:@"text"];
}

- (NSString *)userName {
    NSDictionary *temp = [self.data valueOrNilForKeyPath:@"user"];
    
    return [temp valueOrNilForKeyPath:@"name"];
}

- (NSString *)timeStamp {
    return [self.data valueOrNilForKeyPath:@"created_at"];
}

- (NSString *)imageURL {
    
    //TimelineVC *timeLine = [[TimelineVC alloc] init];
    NSDictionary *tempDict = [self.data valueOrNilForKeyPath:@"user"];
//    [tempDict valueOrNilForKeyPath:@"user_profile_image"];
//    return [self.data valueOrNilForKeyPath:@"user"];
    return [tempDict objectForKey:@"profile_image_url"];
}

+ (NSMutableArray *)tweetsWithArray:(NSArray *)array {
    NSMutableArray *tweets = [[NSMutableArray alloc] initWithCapacity:array.count];
    for (NSDictionary *params in array) {
        [tweets addObject:[[Tweet alloc] initWithDictionary:params]];
    }
    return tweets;
}

@end
