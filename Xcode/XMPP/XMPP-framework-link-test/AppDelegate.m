//
//  AppDelegate.m
//  XMPP-framework-link-test
//
//  Created by Armando Di Cianno on 8/10/15.
//
//

#import "AppDelegate.h"

@import XMPP;
@import XMPP.Extensions.BandwidthMonitor;
@import XMPP.Extensions.FileTransfer;
@import XMPP.Extensions.GoogleSharedStatus;
@import XMPP.Extensions.ProcessOne;
@import XMPP.Extensions.Reconnect;
@import XMPP.Extensions.Roster;
@import XMPP.Extensions.JabberRPC;
@import XMPP.Extensions.LastActivity;
@import XMPP.Extensions.PrivacyLists;
@import XMPP.Extensions.MultiUserChat;
@import XMPP.Extensions.vCardTemp;
@import XMPP.Extensions.vCardTemp.Storage.CoreData;
@import XMPP.Extensions.ResultSetManagement;
@import XMPP.Extensions.PublishSubscribe;
@import XMPP.Extensions.SOCKS5Bytestreams;
@import XMPP.Extensions.OutOfBandData;
@import XMPP.Extensions.InBandRegistration;
@import XMPP.Extensions.DateAndTimeProfiles;
@import XMPP.Extensions.ChatStateNotifications;
@import XMPP.Extensions.SoftwareVersion;
@import XMPP.Extensions.GatewayInteraction;
@import XMPP.Extensions.JIDEscaping;
@import XMPP.Extensions.EntityCapabilities;
@import XMPP.Extensions.EntityCapabilities.Storage.CoreData;
@import XMPP.Extensions.Ping;
@import XMPP.Extensions.MessageArchiving;
@import XMPP.Extensions.MessageArchiving.Storage.CoreData;
@import XMPP.Extensions.URISchemeQueryComponents;
@import XMPP.Extensions.vCardBasedAvatars;
@import XMPP.Extensions.UserNickname;
@import XMPP.Extensions.MessageDeliveryReceipts;
@import XMPP.Extensions.BlockingCommand;
@import XMPP.Extensions.StreamManagement;
@import XMPP.Extensions.EntityTime;
@import XMPP.Extensions.DelayedDelivery;
@import XMPP.Extensions.PersistentStorageOfPrivateDataViaPubSub;
@import XMPP.Extensions.Attention;
@import XMPP.Extensions.MessageCarbons;
@import XMPP.Extensions.StanzaForwarding;
@import XMPP.Extensions.LastMessageCorrection;
@import XMPP.Extensions.ChatMarkers;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    XMPPBandwidthMonitor *bm = [XMPPBandwidthMonitor new];
    NSLog(@"%@", bm);
    
    XMPPIncomingFileTransfer *ift = [XMPPIncomingFileTransfer new];
    XMPPOutgoingFileTransfer *oft = [XMPPOutgoingFileTransfer new];
    NSLog(@"%@ %@", ift, oft);
    
    XMPPGoogleSharedStatus *gss = [XMPPGoogleSharedStatus new];
    NSLog(@"%@", gss);
    
    XMPPProcessOne *po = [XMPPProcessOne new];
    NSLog(@"%@", po);
    
    XMPPReconnect *reconnect = [XMPPReconnect new];
    NSLog(@"%@", reconnect);

    XMPPRosterMemoryStorage *rosterMemStorage = [XMPPRosterMemoryStorage new];
    XMPPRoster *roster = [[XMPPRoster alloc] initWithRosterStorage:rosterMemStorage];
    NSLog(@"%@ %@", roster, rosterMemStorage);
    
    XMPPJabberRPCModule *jabberRPC = [XMPPJabberRPCModule new];
    NSLog(@"%@", jabberRPC);
    
    XMPPLastActivity *lastActivity = [XMPPLastActivity new];
    NSLog(@"%@", lastActivity);

    XMPPPrivacy *privacy = [XMPPPrivacy new];
    NSLog(@"%@", privacy);
    
    XMPPRoomMemoryStorage *roomMemStorage = [XMPPRoomMemoryStorage new];
    XMPPJID *roomJID = [XMPPJID jidWithString:@"foo@muc.bar.dev"];
    XMPPRoom *room = [[XMPPRoom alloc] initWithRoomStorage:roomMemStorage jid:roomJID];
    XMPPMUC *muc = [XMPPMUC new];
    NSLog(@"%@ %@ %@", muc, room, roomJID);

    XMPPvCardCoreDataStorage *vccds = [[XMPPvCardCoreDataStorage alloc] initWithInMemoryStore];
    XMPPvCardTempModule *vCardTempModule = [[XMPPvCardTempModule alloc] initWithvCardStorage:vccds];
    NSLog(@"%@ %@", vCardTempModule, vccds);
    
    XMPPResultSet *rs = [XMPPResultSet resultSet];
    NSLog(@"%@", rs);
    
    XMPPJID *psJID = [XMPPJID jidWithString:@"pubsub.bar.dev"];
    XMPPPubSub *pubsub = [[XMPPPubSub alloc] initWithServiceJID:psJID];
    NSLog(@"%@ %@", pubsub, psJID);
    
    XMPPStream *tsStream = [XMPPStream new];
    XMPPJID *tsJID = [XMPPJID jidWithString:@"ts@foo.bar.dev"];
    TURNSocket *ts = [[TURNSocket alloc] initWithStream:tsStream toJID:tsJID];
    NSLog(@"%@ %@ %@", ts, tsStream, tsJID);
    
    XMPPIQ *oobdIQ = [XMPPIQ iq];
    XMPPMessage *oodbMessage = [XMPPMessage message];
    NSLog(@"%@ %@", @([oobdIQ hasOutOfBandData]), @([oodbMessage hasOutOfBandData]));

    XMPPRegistration *ibr = [XMPPRegistration new];
    NSLog(@"%@", ibr);

    XMPPDateTimeProfiles *dtp = [XMPPDateTimeProfiles new];
    NSLog(@"%@", dtp);
    
    XMPPMessage *csnMessage = [XMPPMessage message];
    NSLog(@"%@", @([csnMessage hasChatState]));

    XMPPSoftwareVersion *swv = [[XMPPSoftwareVersion alloc] initWithDispatchQueue:nil];
    NSLog(@"%@ %@ %@", [swv name], [swv version], [swv os]);

    XMPPStream *transportsStream = [XMPPStream new];
    XMPPTransports *transports = [[XMPPTransports alloc] initWithStream:transportsStream];
    NSLog(@"%@ %@", transports, transportsStream);
    
    XMPPJID *escapingJID = [XMPPJID jidWithString:@"derp@escape.bar.dev"];
    NSLog(@"%@ %@", [[escapingJID full] jidEscapedString], [[escapingJID full] jidUnescapedString]);
    
    XMPPCapabilitiesCoreDataStorage *capDataStorage = [XMPPCapabilitiesCoreDataStorage sharedInstance];
    XMPPCapabilities *capabilities = [[XMPPCapabilities alloc] initWithCapabilitiesStorage:capDataStorage];
    NSLog(@"%@ %@", capabilities, capDataStorage);

    XMPPPing *ping = [XMPPPing new];
    XMPPAutoPing *autoPing = [XMPPAutoPing new];
    NSLog(@"%@ %@", ping, autoPing);
    
    XMPPMessageArchivingCoreDataStorage *msgArchivingStorage = [XMPPMessageArchivingCoreDataStorage sharedInstance];
    XMPPMessageArchiving *msgArchiving = [[XMPPMessageArchiving alloc] initWithMessageArchivingStorage:msgArchivingStorage];
    NSLog(@"%@ %@", msgArchiving, msgArchivingStorage);
    
    XMPPURI *xmppURI = [[XMPPURI alloc] initWithURIString:@"xmpp:name@domain.dev?message"];
    NSLog(@"%@ %@", xmppURI, [xmppURI jid]);

    XMPPvCardAvatarModule *vCardBasedAvatars = [[XMPPvCardAvatarModule alloc] initWithvCardTempModule:vCardTempModule];
    NSLog(@"%@ %@", vCardBasedAvatars, vCardTempModule);
    
    XMPPMessage *nickMessage = [XMPPMessage message];
    XMPPPresence *nickPresence = [XMPPPresence presence];
    NSLog(@"m:%@ p:%@", nickMessage.nick, nickPresence.nick);
    
    XMPPMessageDeliveryReceipts *msgDeliveryReceipts = [XMPPMessageDeliveryReceipts new];
    NSLog(@"req:%@ recv:%@", @([msgDeliveryReceipts autoSendMessageDeliveryRequests]), @([msgDeliveryReceipts autoSendMessageDeliveryReceipts]));

    XMPPBlocking *blocking = [XMPPBlocking new];
    NSLog(@"%@ clear:%@ retr:%@", blocking, @([blocking autoClearBlockingListInfo]), @([blocking autoRetrieveBlockingListItems]));
    
    XMPPStreamManagementMemoryStorage *streamManagementMemStorage = [XMPPStreamManagementMemoryStorage new];
    XMPPStreamManagement *streamManagement = [[XMPPStreamManagement alloc] initWithStorage:streamManagementMemStorage];
    NSLog(@"%@ %@", streamManagement, streamManagementMemStorage);
    
    XMPPTime *time = [XMPPTime new];
    XMPPAutoTime *autoTime = [XMPPAutoTime new];
    NSLog(@"%@ %@", time, autoTime);
    
    XMPPMessage *delayMessage = [XMPPMessage message];
    NSLog(@"%@ %@", @([delayMessage wasDelayed]), [delayMessage delayedDeliveryDate]);
    
    NSDictionary *psopdvpsDict = [XEP_0223 privateStoragePubSubOptions];
    NSLog(@"%@", psopdvpsDict);
    
    XMPPAttentionModule *attn = [XMPPAttentionModule new];
    NSLog(@"%@", attn);
    
    XMPPMessageCarbons *carbons = [XMPPMessageCarbons new];
    NSLog(@"%@", @([carbons autoEnableMessageCarbons]));

    XMPPMessage *stanzaMsg = [XMPPMessage message];
    NSLog(@"%@", @([stanzaMsg isForwardedStanza]));
    
    XMPPMessage *editMsg = [XMPPMessage message];
    NSLog(@"%@", @([editMsg isMessageCorrection]));

    XMPPMessage *markerMsg = [XMPPMessage message];
    NSLog(@"%@", @([markerMsg hasChatMarker]));
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
