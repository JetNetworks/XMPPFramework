//
//  XMPP.h
//  XMPP

#import <Foundation/Foundation.h>

#import "XMPPConfig.h"

// Core, Authentication
#import "XMPPCore.h"

#import "XMPPConstants.h"
#import "XMPPParser.h"

#if USE_XMPP_CORE_DATA
    #import "XMPPCoreDataStorage.h"
    #import "XMPPCoreDataStorageProtected.h"
#endif

// Extensions
#if USE_XMPP_EXT_BANDWIDTH_MONITOR
    #import "XMPPBandwidthMonitor.h"
#endif

#if USE_XMPP_EXT_FILE_TRANSFER
    #import "XMPPFileTransfer.h"
    #import "XMPPIncomingFileTransfer.h"
    #import "XMPPOutgoingFileTransfer.h"
#endif

#if USE_XMPP_EXT_GOOGLE_SHARED_STATUS
    #import "XMPPGoogleSharedStatus.h"
#endif

#if USE_XMPP_EXT_SYSTEM_INPUT_ACTIVITY_MONITOR && 0
    #import "XMPPSystemInputActivityMonitor.h"
#endif

#if USE_XMPP_EXT_RECONNECT
    #import "XMPPReconnect.h"
#endif

#if USE_XMPP_EXT_ROSTER
    #import "XMPPRoster.h"
#endif

#ifdef USE_XMPP_EXT_PROCESS_ONE
    #import "XMPPProcessOne.h"
#endif

#if USE_XMPP_XEP_0009
    #import "XMPPJabberRPCModule.h"
#endif

#if USE_XMPP_XEP_0012
    #import "XMPPLastActivity.h"
    #import "XMPPIQ+LastActivity.h"
#endif

#if USE_XMPP_XEP_0016
    #import "XMPPPrivacy.h"
#endif

#if USE_XMPP_XEP_0045
    #import "XMPPMUC.h"
    #import "XMPPRoom.h"
    #import "XMPPMessage+XEP0045.h"
    #if USE_XMPP_CORE_DATA
        #import "XMPPRoomHybridStorageProtected.h"
    #endif
#endif

#if USE_XMPP_XEP_0054
    #import "XMPPvCardTempModule.h"
    // For CoreData related header, see after import of 0153
#endif

#if USE_XMPP_XEP_0059
    #import "XMPPResultSet.h"
#endif

#if USE_XMPP_XEP_0060
    #import "XMPPPubSub.h"
#endif

#if USE_XMPP_XEP_0065
    #import "TURNSocket.h"
#endif

#if USE_XMPP_XEP_0066
    #import "XMPPIQ+XEP_0066.h"
    #import "XMPPMessage+XEP_0066.h"
#endif

#if USE_XMPP_XEP_0077
    #import "XMPPRegistration.h"
#endif

#if USE_XMPP_XEP_0082
    #import "XMPPDateTimeProfiles.h"
#endif

#if USE_XMPP_XEP_0085
    #import "XMPPMessage+XEP_0085.h"
#endif

#if USE_XMPP_XEP_0092
    #import "XMPPSoftwareVersion.h"
#endif

#if USE_XMPP_XEP_0100
    #import "XMPPTransports.h"
#endif

#if USE_XMPP_XEP_0106
    #import "NSString+XEP_0106.h"
#endif

#if USE_XMPP_XEP_0115
    #import "XMPPCapabilities.h"
#endif

#if USE_XMPP_XEP_0136
    #import "XMPPMessageArchiving.h"
    #if USE_XMPP_CORE_DATA
        #import "XMPPMessageArchivingCoreDataStorage.h"
    #endif
#endif

#if USE_XMPP_XEP_0147
    #import "XMPPURI.h"
#endif

#if USE_XMPP_XEP_0153
    #if USE_XMPP_XEP_0054
        #import "XMPPvCardAvatarModule.h"
    #endif
#endif

#if USE_XMPP_CORE_DATA
    #if USE_XMPP_XEP_0054 && USE_XMPP_XEP_0153
        #import "XMPPvCardCoreDataStorage.h"
    #endif
#endif

#if USE_XMPP_XEP_0172
    #import "XMPPMessage+XEP_0172.h"
    #import "XMPPPresence+XEP_0172.h"
#endif

#if USE_XMPP_XEP_0184
    #import "XMPPMessageDeliveryReceipts.h"
#endif

#if USE_XMPP_XEP_0191
    #import "XMPPBlocking.h"
#endif

#if USE_XMPP_XEP_0198
    #import "XMPPStreamManagement.h"
    #import "XMPPStreamManagementMemoryStorage.h"
#endif

#if USE_XMPP_XEP_0199
    #import "XMPPPing.h"
    #import "XMPPAutoPing.h"
#endif

#ifdef USE_XMPP_XEP_0202
    #import "XMPPTime.h"
    #import "XMPPAutoTime.h"
#endif

#if USE_XMPP_XEP_0203
    #import "NSXMLElement+XEP_0203.h"
#endif

#if USE_XMPP_XEP_0223
    #import "XEP_0223.h"
#endif

#if USE_XMPP_XEP_0224
    #import "XMPPAttentionModule.h"
#endif

#if USE_XMPP_XEP_0280
    #import "XMPPMessageCarbons.h"
#endif

#if USE_XMPP_XEP_0297
    #import "NSXMLElement+XEP_0297.h"
#endif

#if USE_XMPP_XEP_0308
    #import "XMPPMessage+XEP_0308.h"
#endif

#if USE_XMPP_XEP_0333
    #import "XMPPMessage+XEP_0333.h"
#endif

#if USE_XMPP_XEP_0335
    #import "NSXMLElement+XEP_0335.h"
#endif
