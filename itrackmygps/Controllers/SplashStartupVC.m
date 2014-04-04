//
//  SplashStartupVC.m
//  itrackmygps
//
//  Created by rupert on 22/03/2014.
//  Copyright (c) 2014 2RMobile Pty Ltd. All rights reserved.
//

#import "SplashStartupVC.h"

#import "DeviceUtil.h"
#import "RegisterVC.h"

@interface SplashStartupVC ()

@end

@implementation SplashStartupVC

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttonRegisterPressed:(id)sender {
    NSLog(@"buttonRegisterPressed");
    
    RegisterVC* registerVC = [[RegisterVC alloc] initWithNibName:[DeviceUtil nibNameForDevice:@"RegisterVC"] bundle:nil];
    [self.navigationController pushViewController:registerVC animated:YES];
}

-(IBAction)buttonLoginPressed:(id)sender {
    NSLog(@"buttonLoginPressed");
}

@end
