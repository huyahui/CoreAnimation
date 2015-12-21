//
//  DukeViewController.m
//  CoreAnimation
//
//  Created by Duke on 13-6-23.
//  Copyright (c) 2013年 Duke. All rights reserved.
//

#import "DukeViewController.h"
#import "CoreAnimationEffect.h"

@interface DukeViewController ()

@end

@implementation DukeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor purpleColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIView *animationView = [[UIView alloc] initWithFrame:CGRectMake(120, 40, 100, 100)];
    animationView.backgroundColor = [UIColor yellowColor];
    animationView.tag = 12;
    
    [self.view addSubview:animationView];
    [animationView release], animationView = nil;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Click" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonActionSender:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 80, 40)];
    [button setCenter:self.view.center];
    
    [self.view addSubview:button];
}

- (void)buttonActionSender:(UIButton *)sender
{
    [CoreAnimationEffect animationCubeFromBottom:[self.view viewWithTag:12]];
//    [CoreAnimationEffect animationMoveDown:[self.view viewWithTag:12] duration:1.2];
//    [CoreAnimationEffect animationSuckEffect:[self.view viewWithTag:12]];
//    [CoreAnimationEffect animationPushUp:[self.view viewWithTag:12]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

