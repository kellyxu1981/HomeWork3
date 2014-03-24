//
//  ComposeViewController.m
//  HomeWork3
//
//  Created by Kelly Xu on 3/20/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()
@property (strong, nonatomic) IBOutlet UIView *textView;
@property (strong, nonatomic) IBOutlet UIView *photoView;
@property (strong, nonatomic) IBOutlet UIView *quoteView;
@property (strong, nonatomic) IBOutlet UIView *linkView;
@property (strong, nonatomic) IBOutlet UIView *chatView;
@property (strong, nonatomic) IBOutlet UIView *videoView;

@property (nonatomic,assign) BOOL animating;


- (IBAction)onNeverMindButton:(id)sender;

@end

@implementation ComposeViewController

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
    self.textView.alpha = 0;
    self.photoView.alpha = 0;
    self.quoteView.alpha = 0;
    self.linkView.alpha = 0;
    self.chatView.alpha = 0;
    self.videoView.alpha = 0;
    self.animating = YES;
    

    [self setZeroPosition];
    [self startAnimation];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onNeverMindButton:(id)sender {
        [self endAnimation];
        [self performSelector:@selector(dismissSubView) withObject:nil afterDelay:0.7];


}

-(void)setZeroPosition{
    CGRect frame1 = self.textView.frame;
    CGRect frame2 = self.photoView.frame;
    CGRect frame3 = self.quoteView.frame;
    CGRect frame4 = self.linkView.frame;
    CGRect frame5 = self.chatView.frame;
    CGRect frame6 = self.videoView.frame;
    
    frame1.origin.y = 500;
    frame2.origin.y = 500;
    frame3.origin.y = 500;
    frame4.origin.y = 580;
    frame5.origin.y = 580;
    frame6.origin.y = 580;
    
    self.textView.frame = frame1;
    self.photoView.frame = frame2;
    self.quoteView.frame = frame3;
    self.linkView.frame = frame4;
    self.chatView.frame = frame5;
    self.videoView.frame = frame6;
}

-(void)startAnimation{
    CGRect frame1 = self.textView.frame;
    CGRect frame2 = self.photoView.frame;
    CGRect frame3 = self.quoteView.frame;
    CGRect frame4 = self.linkView.frame;
    CGRect frame5 = self.chatView.frame;
    CGRect frame6 = self.videoView.frame;
    
    frame1.origin.y -= 350;
    frame2.origin.y -= 350;
    frame3.origin.y -= 350;
    frame4.origin.y -= 310;
    frame5.origin.y -= 310;
    frame6.origin.y -= 310;
    
    [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.textView.alpha = 1;
        self.textView.frame = frame1;
    } completion:nil];
    
    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.photoView.alpha = 1;
        self.photoView.frame = frame2;
    } completion:nil];

    [UIView animateWithDuration:0.3 delay:0.1 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.quoteView.alpha = 1;
        self.quoteView.frame = frame3;
    } completion:nil];
    
    [UIView animateWithDuration:0.4 delay:0.3 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.linkView.alpha = 1;
        self.linkView.frame = frame4;
    } completion:nil];
    
    [UIView animateWithDuration:0.3 delay:0.2 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.chatView.alpha = 1;
        self.chatView.frame = frame5;
    } completion:nil];
    
    [UIView animateWithDuration:0.4 delay:0.3 usingSpringWithDamping:0.6
          initialSpringVelocity:0.7 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.videoView.alpha = 1;
        self.videoView.frame = frame6;
    } completion:nil];
}

-(void)endAnimation{
    CGRect frame1 = self.textView.frame;
    CGRect frame2 = self.photoView.frame;
    CGRect frame3 = self.quoteView.frame;
    CGRect frame4 = self.linkView.frame;
    CGRect frame5 = self.chatView.frame;
    CGRect frame6 = self.videoView.frame;
    
    frame1.origin.y -= 550;
    frame2.origin.y -= 550;
    frame3.origin.y -= 550;
    frame4.origin.y -= 510;
    frame5.origin.y -= 510;
    frame6.origin.y -= 510;
    
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.textView.alpha = 0;
        self.textView.frame = frame1;
    } completion:nil];
    
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.photoView.alpha = 0;
        self.photoView.frame = frame2;
    } completion:nil];
    
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.quoteView.alpha = 0;
        self.quoteView.frame = frame3;
    } completion:nil];
    
    [UIView animateWithDuration:0.3 delay:0.3 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.linkView.alpha = 0;
        self.linkView.frame = frame4;
    } completion:nil];
    
    [UIView animateWithDuration:0.2 delay:0.2 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.chatView.alpha = 0;
        self.chatView.frame = frame5;
    } completion:nil];
    
    [UIView animateWithDuration:0.3 delay:0.3 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.videoView.alpha = 0;
        self.videoView.frame = frame6;
    } completion:nil];
    
}

-(void)dismissSubView{
    [self setZeroPosition];
    [self.view removeFromSuperview];

}
@end
