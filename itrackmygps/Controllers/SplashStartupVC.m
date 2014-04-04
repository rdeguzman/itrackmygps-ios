#import "SplashStartupVC.h"

#import "RegisterVC.h"
#import "LoginVC.h"

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
    
    LoginVC* loginVC = [[LoginVC alloc] initWithNibName:[DeviceUtil nibNameForDevice:@"LoginVC"] bundle:nil];
    [self.navigationController pushViewController:loginVC animated:YES];
}

@end
