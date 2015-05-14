//
//  ViewController.m
//  CustomNavigationController
//
//  Created by Pradeep Kumar Yadav on 11/05/15.
//  Copyright (c) 2015 Pradeep Kumar Yadav. All rights reserved.
//

#import "ViewController.h"
#import "LandscapeView.h"
#import "CustomNavigationControllerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)showLandscapeViewButtonClicked:(id)sender {
  
  LandscapeView *landscape = [[LandscapeView alloc]initWithNibName:@"LandscapeView" bundle:nil];
  CustomNavigationControllerViewController *nav = [[CustomNavigationControllerViewController alloc]initWithRootViewController:landscape];
  nav.navigationBarHidden = true;
  [self presentViewController:nav animated:YES completion:^{
    
  }];
  
}


#pragma mark handeling rotation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
  return UIInterfaceOrientationPortrait;
}
- (BOOL)shouldAutorotate
{
  return NO;
}
- (NSUInteger)supportedInterfaceOrientations
{
  BOOL atLeastIOS6 = [[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0;
  if(atLeastIOS6)
  {
    return UIInterfaceOrientationMaskPortrait;
  }
  else{
    return UIInterfaceOrientationPortrait;
  }
}


@end
