//
//  AppDelegate.m
//  XMPP-framework-link-test-osx
//
//  Created by Armando Di Cianno on 8/27/15.
//
//

#import "AppDelegate.h"

@import XMPP;
@import XMPP.Extensions.GoogleSharedStatus;
//@import XMPP.Extensions.SystemInputActivityMonitor;

@import XMPP.Private;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    //XMPPSystemInputActivityMonitor *siam = [XMPPSystemInputActivityMonitor new];
    //NSLog(@"%@", siam);
    
    XMPPGoogleSharedStatus *google = [[XMPPGoogleSharedStatus alloc] initWithDispatchQueue:nil];
    NSLog(@"%@", @([google sharedStatusSupported]));
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
