//
//  AccountViewController.m
//  HomeWork3
//
//  Created by Kelly Xu on 3/20/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "AccountViewController.h"

@interface AccountViewController ()
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation AccountViewController

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
    // Do any additional setup after loading the view from its nib.
    self.scrollView.contentSize = CGSizeMake(320, 570);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
