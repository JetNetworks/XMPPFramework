#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 80000
#import <KissXML/KissXML.h>
#else
@import KissXML;
#endif
#endif

@class XMPPIQ;
@class XMPPMessage;
@class XMPPPresence;

@interface NSXMLElement (XEP_0297)

#pragma mark Forwarded Stanza 

- (NSXMLElement *)forwardedStanza;

- (BOOL)hasForwardedStanza;

- (BOOL)isForwardedStanza;

#pragma mark Delayed Delivery Date

- (NSDate *)forwardedStanzaDelayedDeliveryDate;

#pragma mark XMPPElement

- (XMPPIQ *)forwardedIQ;

- (BOOL)hasForwardedIQ;

- (XMPPMessage *)forwardedMessage;

- (BOOL)hasForwardedMessage;

- (XMPPPresence *)forwardedPresence;

- (BOOL)hasForwardedPresence;

@end
