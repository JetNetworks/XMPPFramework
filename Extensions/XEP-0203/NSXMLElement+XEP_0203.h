#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 80000
#import <KissXML/KissXML.h>
#else
@import KissXML;
#endif
#endif


@interface NSXMLElement (XEP_0203)

- (BOOL)wasDelayed;
- (NSDate *)delayedDeliveryDate;

@end
