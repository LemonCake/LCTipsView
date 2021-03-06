# LCTipsView

## Why?

Built an awesome app that has a slick, custom UI? Want to ease the friction a first time user may have when using your app? This is a general purpose tips view that emulates what you would commonly find in apps that find it necessary to give a tour to a first time user. (games, social apps with a more complex interface...etc.) A great first time user experience could make a difference between one coming back for more, or uninstalling your app!

## Installation

Copy LCTipsView.h and LCTipsView.m to your project. Import it to a UIViewController you want to use it in. Done!

## Usage

This little widget allows you to pass in specific UI elements that you may find useful to highlight along with a useful tip. You can choose to display a single tip, or queue up multiple ones.

Allocate and add it to your view like anything else

	LCTipsView *someTips = [[[LCTipsView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];
	[self.view addSubview:someTips];

Queue up tips

	[someTips addTip:@"Type stuff here to search" forView:searchBar];
	[someTips addTip:@"Highlight the whole container!" forView:containerView];
	[someTips addTip:@"Or just parts of it like this kitteh" forView:limeCatImage];

Show it to them!

	[someTips showNextTip];

Customize the overlay or the tips bubble by accessing the overlay and tipsLabel properties

For more refer to the header file.

That's it!