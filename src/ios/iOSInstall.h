#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>
#import <Parse/Parse.h>

@interface iOSInstall: CDVPlugin{
  NSString* callbackId;
}

@property (nonatomic, retain) NSString* callbackId;
- (void)iOSInstall:(CDVInvokedUrlCommand *)command;
@end
