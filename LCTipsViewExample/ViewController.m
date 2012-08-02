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

@end

@implementation ViewController
@synthesize searchBar;
@synthesize containerView;
@synthesize limeCatImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)showTipsAgain:(id)sender {
    NSLog(@"view x: %f y: %f width: %f height: %f", self.view.frame.origin.x, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
    LCTipsView *someTips = [[[LCTipsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];
    someTips.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    
    [someTips addTip:@"Type stuff here to search" forView:searchBar];
    [someTips addTip:@"Highlight the whole container!" forView:containerView];
    [someTips addTip:@"Or just parts of it like this kitteh" forView:limeCatImage];
    [self.view addSubview:someTips];
    
    [someTips showNextTip];
}

@end
