
#import "DeviceInfo.h"


@implementation DeviceInfo

/**
 *  获取设备id
 */
- (void)getDeviceId:(CDVInvokedUrlCommand *)command
{
	   _callback = command.callbackId;
    Class cls = NSClassFromString(@"UMANUtil");
    SEL deviceIDSelector = @selector(openUDIDString);
    NSString *deviceID = nil;
    if(cls && [cls respondsToSelector:deviceIDSelector]){
        deviceID = [cls performSelector:deviceIDSelector];
    }
//    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:@{@"oid" : deviceID}
//                                                       options:NSJSONWritingPrettyPrinted
//                                                         error:nil];
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:deviceID];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:self.callback];
    //NSLog(@"%@", [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
    
}
@end
