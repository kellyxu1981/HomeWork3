//
//  MainViewController.m
//  HomeWork3
//
//  Created by Kelly Xu on 3/20/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "ComposeViewController.h"
#import "AccountViewController.h"
#import "TrendingViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIView *ContentView;
@property (strong, nonatomic) IBOutlet UIView *messageBoxView;
@property (strong, nonatomic) IBOutlet UIView *tabBarView;

//set IBOutlet to tab buttons
@property (strong, nonatomic) IBOutlet UIButton *Button_Home;
@property (strong, nonatomic) IBOutlet UIButton *Button_Search;
@property (strong, nonatomic) IBOutlet UIButton *Button_Account;
@property (strong, nonatomic) IBOutlet UIButton *Button_Trending;

//create 4 ViewControllers
@property (nonatomic,strong) HomeViewController *homeVC;
@property (nonatomic,strong) SearchViewController *searchVC;
@property (nonatomic,strong) ComposeViewController *composeVC;
@property (nonatomic,strong) AccountViewController *accountVC;
@property (nonatomic,strong) TrendingViewController *trendingVC;

//set IBAction to tab buttons
- (IBAction)onHomeButton:(id)sender;
- (IBAction)onSearchButton:(id)sender;
- (IBAction)onComposeButton:(id)sender;
- (IBAction)onAccountButton:(id)sender;
- (IBAction)onTrendingButton:(id)sender;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // declear VC;
        self.homeVC = [[HomeViewController alloc]init];
        self.searchVC = [[SearchViewController alloc]init];

        self.accountVC = [[AccountViewController alloc]init];
        self.trendingVC = [[TrendingViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.ContentView.frame = self.homeVC.view.frame;
    [self.ContentView addSubview:self.homeVC.view];
    [self showMessageBox];
    [self animatedMessageBox];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeButton:(id)sender {
    [self showMessageBox];
    [self animatedMessageBox];
    self.Button_Home.selected = YES;
    self.Button_Search.selected = NO;
    self.Button_Account.selected = NO;
    self.Button_Trending.selected = NO;
    self.ContentView.frame = self.homeVC.view.frame;
    [self.ContentView addSubview:self.homeVC.view];
    [self.view bringSubviewToFront:self.homeVC.view];
}

- (IBAction)onSearchButton:(id)sender {
    // hide message box
    [self hideMessageBox];
    
    self.Button_Home.selected = NO;
    self.Button_Search.selected = YES;
    self.Button_Account.selected = NO;
    self.Button_Trending.selected = NO;
    self.ContentView.frame = self.searchVC.view.frame;
    [self.ContentView addSubview:self.searchVC.view];
    [self.view bringSubviewToFront:self.searchVC.view];
}

- (IBAction)onComposeButton:(id)sender {
    self.composeVC = [[ComposeViewController alloc]init];
    [self.view addSubview:self.composeVC.view];
    [self.view bringSubviewToFront:self.composeVC.view];
}

- (IBAction)onAccountButton:(id)sender {
    [self showMessageBox];
    [self animatedMessageBox];
    self.Button_Home.selected = NO;
    self.Button_Search.selected = NO;
    self.Button_Account.selected = YES;
    self.Button_Trending.selected = NO;
    self.ContentView.frame = self.accountVC.view.frame;
    [self.ContentView addSubview:self.accountVC.view];
    [self.view bringSubviewToFront:self.accountVC.view];
}

- (IBAction)onTrendingButton:(id)sender {
    [self showMessageBox];
    [self animatedMessageBox];
    self.Button_Home.selected = NO;
    self.Button_Search.selected = NO;
    self.Button_Account.selected = NO;
    self.Button_Trending.selected = YES;
    self.ContentView.frame = self.trendingVC.view.frame;
    [self.ContentView addSubview:self.trendingVC.view];
    [self.view bringSubviewToFront:self.trendingVC.view];
}

#pragma mark - private method
-(void)animatedMessageBox{
    [UIView animateWithDuration:0.5 animations:^{
        self.messageBoxView.alpha = 1;
    }];
    CGRect frame = self.messageBoxView.frame;
    frame.origin.y = 482;
    frame.origin.y -=5;
    [UIView animateWithDuration:1.0f delay:0 options:UIViewAnimationOptionAutoreverse |UIViewAnimationOptionCurveEaseIn| UIViewAnimationOptionRepeat animations:^{
        self.messageBoxView.frame = frame;
        CGRect frame = self.messageBoxView.frame;
        frame.origin.y +=5;
        self.messageBoxView.frame = frame;
        
    } completion:nil];

}

-(void)showMessageBox{
 //   CGRect frame = self.messageBoxView.frame;
//    frame.origin.y -=10;
    [UIView animateWithDuration:0.5 animations:^{
        self.messageBoxView.alpha = 1;
   //     self.messageBoxView.frame = frame;
    }];
}

-(void)hideMessageBox{
    CGRect frame = self.messageBoxView.frame;
    frame.origin.y +=10;
    [UIView animateWithDuration:0.2 animations:^{
        self.messageBoxView.frame = frame;
        self.messageBoxView.alpha = 0;
    }];
}

@end
