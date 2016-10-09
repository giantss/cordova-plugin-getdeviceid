#import <Cordova/CDVPlugin.h>

@interface DeviceInfo : CDVPlugin

@property(nonatomic, copy) NSString *callback;

- (void)getDeviceId:(CDVInvokedUrlCommand *)command;



@end
