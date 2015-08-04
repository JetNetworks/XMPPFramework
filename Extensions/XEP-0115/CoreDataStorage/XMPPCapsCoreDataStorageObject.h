#import <CoreData/CoreData.h>

#if TARGET_OS_IPHONE
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 80000
#import <KissXML/KissXML.h>
#else
@import KissXML;
#endif
#endif

@class XMPPCapsResourceCoreDataStorageObject;


@interface XMPPCapsCoreDataStorageObject : NSManagedObject

@property (nonatomic, strong) NSXMLElement *capabilities;

@property (nonatomic, strong) NSString * hashStr;
@property (nonatomic, strong) NSString * hashAlgorithm;
@property (nonatomic, strong) NSString * capabilitiesStr;

@property (nonatomic, strong) NSSet * resources;

@end


@interface XMPPCapsCoreDataStorageObject (CoreDataGeneratedAccessors)

- (void)addResourcesObject:(XMPPCapsResourceCoreDataStorageObject *)value;
- (void)removeResourcesObject:(XMPPCapsResourceCoreDataStorageObject *)value;
- (void)addResources:(NSSet *)value;
- (void)removeResources:(NSSet *)value;

@end
