//
//  ViewController.m
//  LCTipsViewExample
//
//  Created by Joshua Wu on 8/1/12.
//  Copyright (c) 2012 Joshua Wu. All rights reserved.
//

#import "ViewController.h"
#import "LCTipsView.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet UIView *containerView;
@property (nonatomic, retain) IBOutlet UIImageView *limeCatImage;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, retain) IBOutlet UIButton *startButton;

@end

@implementation ViewController
@synthesize searchBar;
@synthesize containerView;
@synthesize limeCatImage;
@synthesize startButton;

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    LCTipsView *someTips = [[[LCTipsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];
    [someTips addTip:@"Click here to start the demo!" forView:startButton];
    [self.view addSubview:someTips];
    
    [someTips showNextTip];
}

- (IBAction)showTipsAgain:(id)sender {
    LCTipsView *someTips = [[[LCTipsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];    
    [someTips addTip:@"Type stuff here to search" forView:searchBar];
    [someTips addTip:@"Highlight the whole container!" forView:containerView];
    [someTips addTip:@"Or just parts of it like this kitteh" forView:limeCatImage];
    [self.view addSubview:someTips];
    
    [someTips showNextTip];
}

@end
