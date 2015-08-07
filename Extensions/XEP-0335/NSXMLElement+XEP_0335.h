#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 80000
#import <KissXML/KissXML.h>
#else
@import KissXML;
#endif
#endif

@interface NSXMLElement (XEP_0335)

- (NSXMLElement *)JSONContainer;

- (BOOL)isJSONContainer;
- (BOOL)hasJSONContainer;

- (NSString *)JSONContainerString;
- (NSData *)JSONContainerData;
- (id)JSONContainerObject;

- (void)addJSONContainerWithString:(NSString *)JSONContainerString;
- (void)addJSONContainerWithData:(NSData *)JSONContainerData;
- (void)addJSONContainerWithObject:(id)JSONContainerObject;

@end
