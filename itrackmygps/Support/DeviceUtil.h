#import <Foundation/Foundation.h>
@interface DeviceUtil : NSObject
@end

@interface DeviceUtil (Device)
+(BOOL)isDeviceAniPad;
+(BOOL)isDeviceAniPhone;
+(NSString *)nibNameForDevice:(NSString*)_nibName;
+(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end

