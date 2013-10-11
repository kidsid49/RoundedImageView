//
//  ViewController.m
//  RoundedImageViewExample
//
//  Created by siddarth chaturvedi on 12/10/13.
//  Copyright (c) 2013 JustUnfollow. All rights reserved.
//

#import "ViewController.h"
#import "RoundedImageView.h"


@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //Creating a rounded image view.
    RoundedImageView *profileImageView = [[RoundedImageView alloc] initWithFrame:CGRectMake(100, 100, 120, 120)];
    
    //Configring the rounded imageview by setting appropriate image and offset.
    profileImageView.imageOffset = 2.5;
    profileImageView.image = [UIImage imageNamed:@"profile_pic.jpg"];
    profileImageView.backgroundImage = [UIImage imageNamed:@"dp_holder_large.png"];
    
    //Adding rounded image view to main view.
    [self.view addSubview:profileImageView];
}


@end
