#import "iOSInstall.h"

@implementation iOSInstall

@synthesize callbackId;

- (void)iOSInstall:(CDVInvokedUrlCommand *)command {
    self.callbackId = command.callbackId;

    PFUser *user = [PFUser currentUser];
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [[PFInstallation currentInstallation] setObject:user.objectId forKey:@"userId"];
    [[PFInstallation currentInstallation] saveEventually];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@""];
    NSString* javaScript = [pluginResult toSuccessCallbackString:self.callbackId];
    [self writeJavascript:javaScript];
}

@end
