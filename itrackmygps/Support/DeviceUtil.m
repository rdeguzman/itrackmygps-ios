#import "DeviceUtil.h"

@implementation DeviceUtil

@end

@implementation DeviceUtil (Device)

+(BOOL)isDeviceAniPad{
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
		return YES;
	}
	else{
		return NO;
	}
}

+(BOOL)isDeviceAniPhone{
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
		return YES;
	}
	else{
		return NO;
	}
}

+ (NSString *)nibNameForDevice:(NSString*)_nibName{
	NSString* _newNibName = nil;
	
	if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad){
		_newNibName = [NSString stringWithFormat:@"%@_ipad", _nibName];
		NSLog(@"iPad: %@", _newNibName);
	}
	else{
		_newNibName = [NSString stringWithFormat:@"%@_iphone", _nibName];
		NSLog(@"iPhone: %@", _newNibName);
	}
	
	return _newNibName;
}

+ (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if( [DeviceUtil isDeviceAniPad] && (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight)){
		return YES;
	}
	else if([DeviceUtil isDeviceAniPad] == NO && (interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)){
		return YES;
	}
	else{
		return NO;
	}
}

@end