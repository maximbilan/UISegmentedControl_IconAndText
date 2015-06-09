//
//  ViewController.m
//  UISegmentedControl_IconAndText
//
//  Created by Maxim Bilan on 6/8/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+UISegmentedControlIconAndText.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self.segmentedControl setImage:[UIImage imageFromImage:[UIImage imageNamed:@"star"]
													 string:@"First"
													   font:[UIFont systemFontOfSize:15]
													  color:[UIColor clearColor]] forSegmentAtIndex:0];
}

@end
