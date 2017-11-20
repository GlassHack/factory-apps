.class public Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
.super Ljava/lang/Object;
.source "NotificationBridger.java"

# interfaces
.implements Lcom/google/android/clockwork/actions/RpcWithCallbackListener;
.implements Lcom/google/android/clockwork/stream/StreamListener;
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/wearable/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;,
        Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;,
        Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BRIDGEABLE_NO_FILTER_BLOCKED:I = 0x4

.field private static final BRIDGEABLE_NO_LOCAL_ONLY:I = 0x5

.field private static final BRIDGEABLE_NO_NOT_CLEARABLE:I = 0x3

.field private static final BRIDGEABLE_NO_NOT_CREATOR_NODE:I = 0x6

.field private static final BRIDGEABLE_NO_NOT_NOTIF_SOURCE:I = 0x1

.field private static final BRIDGEABLE_NO_ONGOING:I = 0x2

.field private static final BRIDGEABLE_YES:I = 0x0

.field public static final INTENT_FAILURE:I = 0x0

.field public static final INTENT_SUCCESS:I = 0x1

.field public static final INTENT_SUCCESS_DISMISSED:I = 0x2

.field private static final KEY_ACTION_INDEX:Ljava/lang/String; = "action_index"

.field private static final KEY_IS_WEARABLE_ACTION:Ljava/lang/String; = "is_wearable_action"

.field private static final KEY_REMOTE_INPUT_RESULTS:Ljava/lang/String; = "remote_input_results"

.field private static final KEY_REMOTE_STREAM_ITEM_ID:Ljava/lang/String; = "remote_stream_item_id"

.field private static final KEY_RPC_COMMAND:Ljava/lang/String; = "rpc_command"

.field private static final MSG_DUMP_STATE:I = 0x6

.field private static final MSG_ON_DATA_CHANGED:I = 0x3

.field private static final MSG_ON_MESSAGE_RECEIVED:I = 0x4

.field private static final MSG_ON_STREAM_CHANGE:I = 0x5

.field private static final MSG_SEND_BRIDGED_ACTION:I = 0x1

.field private static final MSG_SEND_BRIDGED_CONTENT_INTENT:I = 0x2

.field private static final MSG_SHUTDOWN:I = 0x7

.field private static final MSG_STARTUP:I = 0x0

.field private static final MSG_WAIT_FOR_PROCESSING_FOR_TEST:I = 0x8

.field private static final RPC_BRIDGED_ACTION:Ljava/lang/String; = "bridged_action"

.field private static final RPC_BRIDGED_CONTENT_INTENT:Ljava/lang/String; = "bridged_content_intent"

.field private static final TAG:Ljava/lang/String; = "NotificationBridger"

.field private static sInstance:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;


# instance fields
.field private final mBridgedItemsMap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgedNotificationFilter:Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;

.field private final mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialSyncDone:Z

.field private mIsNotificationSink:Z

.field private mIsNotificationSource:Z

.field private final mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mNextBridgedNotificationId:I

.field private mNode:Lcom/google/android/gms/wearable/Node;

.field private final mNotificationManager:Landroid/support/v4/app/NotificationManagerCompat;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteIntentRpcActivityIntent:Landroid/content/Intent;

.field private mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

.field private final mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;Landroid/support/v4/app/NotificationManagerCompat;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/google/android/wearable/gmsclient/WearableClient;
    .param p3, "notificationManager"    # Landroid/support/v4/app/NotificationManagerCompat;

    .prologue
    const/4 v2, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$LocalBroadcastReceiver;-><init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;)V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNextBridgedNotificationId:I

    .line 134
    iput-boolean v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSource:Z

    .line 137
    iput-boolean v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSink:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    .line 143
    iput-object p3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNotificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    .line 144
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 145
    const-string v0, "bridger"

    invoke-static {v0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->getInstance(Ljava/lang/String;)Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    .line 146
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->setRpcResultProvider(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    .line 147
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->addDataListener(Lcom/google/android/gms/wearable/DataApi$DataListener;)V

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/gms/wearable/DataMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
    .param p1, "x1"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleRpcReceived(Lcom/google/android/gms/wearable/DataMap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gms/wearable/DataMap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->isBridgedContentIntentRpc(Lcom/google/android/gms/wearable/DataMap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V
    .locals 1
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "item"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p3, "isGroupMember"    # Z

    .prologue
    .line 1059
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1060
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1061
    invoke-interface {p2}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    check-cast p2, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .end local p2    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItemGroup(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItemGroup;)V

    .line 1066
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1067
    return-void

    .line 1064
    .restart local p2    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_0
    check-cast p2, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .end local p2    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItemEntry(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V

    goto :goto_0
.end method

.method private dumpStreamItemEntry(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V
    .locals 4
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "item"    # Lcom/google/android/clockwork/stream/StreamItemEntry;
    .param p3, "isGroupMember"    # Z

    .prologue
    .line 1088
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 1089
    .local v1, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    if-eqz v1, :cond_2

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->isDisplayableStreamItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1092
    const-string v2, "displayable"

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1098
    invoke-direct {p0, p2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    .line 1099
    .local v0, "bridgeableStatus":I
    if-nez v0, :cond_3

    .line 1100
    if-eqz p3, :cond_1

    .line 1101
    const-string v2, "bridgeable"

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1107
    .end local v0    # "bridgeableStatus":I
    :cond_1
    :goto_1
    return-void

    .line 1094
    :cond_2
    if-eqz p3, :cond_0

    .line 1095
    const-string v2, "local"

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    .restart local v0    # "bridgeableStatus":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not bridgeable, bridgeableStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dumpStreamItemGroup(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItemGroup;)V
    .locals 5
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "item"    # Lcom/google/android/clockwork/stream/StreamItemGroup;

    .prologue
    const/4 v4, 0x1

    .line 1070
    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getSummary()Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1071
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1073
    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getSummary()Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v2

    invoke-direct {p0, p1, v2, v4}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V

    .line 1074
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1076
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " children"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1079
    invoke-virtual {p2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1080
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-direct {p0, p1, v0, v4}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V

    goto :goto_0

    .line 1082
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1084
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sInstance:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    return-object v0
.end method

.method private getLocalStreamItemIdFromRemote(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .locals 1
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    return-object v0
.end method

.method private getNextBridgedItemId()Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .locals 5

    .prologue
    .line 874
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bridged_notification"

    iget v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNextBridgedNotificationId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNextBridgedNotificationId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getRemoteInputResultsDataFromActionIntent(ZILandroid/content/Intent;Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/gms/wearable/DataMap;
    .locals 6
    .param p1, "isWearableAction"    # Z
    .param p2, "actionIndex"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "streamItemId"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .prologue
    const/4 v4, 0x0

    .line 670
    iget-object v5, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v5, p4}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v3

    .line 671
    .local v3, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-nez v3, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-object v4

    .line 675
    :cond_1
    if-eqz p1, :cond_2

    .line 676
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 679
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 686
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    .line 687
    .local v2, "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_0

    .line 690
    invoke-static {p3}, Landroid/support/v4/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 691
    .local v1, "remoteInputResults":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 694
    invoke-static {v2, v1}, Lcom/google/android/clockwork/stream/bridger/RemoteInputConverter;->getDataMapForRemoteInputResults([Landroid/support/v4/app/RemoteInput;Landroid/os/Bundle;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v4

    goto :goto_0

    .line 681
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v1    # "remoteInputResults":Landroid/os/Bundle;
    .end local v2    # "remoteInputs":[Landroid/support/v4/app/RemoteInput;
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/NotificationCompat;->getActionCount(Landroid/app/Notification;)I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 684
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/support/v4/app/NotificationCompat;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .restart local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    goto :goto_1
.end method

.method private getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I
    .locals 3
    .param p1, "streamItem"    # Lcom/google/android/clockwork/stream/StreamItem;

    .prologue
    .line 889
    iget-boolean v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSource:Z

    if-nez v1, :cond_0

    .line 890
    const/4 v1, 0x1

    .line 904
    :goto_0
    return v1

    .line 892
    :cond_0
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 893
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 894
    const/4 v1, 0x2

    goto :goto_0

    .line 895
    :cond_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 896
    const/4 v1, 0x3

    goto :goto_0

    .line 897
    :cond_2
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedNotificationFilter:Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;

    invoke-virtual {v1, p1}, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;->shouldFilter(Lcom/google/android/clockwork/stream/StreamItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    const/4 v1, 0x4

    goto :goto_0

    .line 899
    :cond_3
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/NotificationCompat;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 900
    const/4 v1, 0x5

    goto :goto_0

    .line 901
    :cond_4
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v2}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 902
    const/4 v1, 0x6

    goto :goto_0

    .line 904
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleBridgedNotificationAction(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLandroid/os/Bundle;)I
    .locals 11
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .param p2, "actionIndex"    # I
    .param p3, "isWearableAction"    # Z
    .param p4, "remoteInputResults"    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 743
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 744
    const-string v7, "NotificationBridger"

    const-string v8, "handleBridgedNotificationAction"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    iget-object v8, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v7, v8}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v3

    .line 747
    .local v3, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-nez v3, :cond_1

    .line 748
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bridged action: stream item not found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :goto_0
    return v6

    .line 754
    :cond_1
    if-eqz p3, :cond_3

    .line 755
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p2, v7, :cond_2

    .line 756
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bridged action: wearable action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "on stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getWearableOptions()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;

    .line 770
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    :goto_1
    iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v7, :cond_5

    .line 771
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bridged action: action intent does not exist on action for stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/app/NotificationCompat;->getActionCount(Landroid/app/Notification;)I

    move-result v7

    if-lt p2, v7, :cond_4

    .line 764
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bridged action: normal action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "on stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 768
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v7, p2}, Landroid/support/v4/app/NotificationCompat;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .restart local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    goto :goto_1

    .line 776
    :cond_5
    :try_start_0
    const-string v7, "NotificationBridger"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 777
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  sending action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pending intent for stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_6
    iget-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 781
    .local v1, "actionPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v8, v8, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v7, p4, v8}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sendWithRemoteInputResults(Landroid/app/PendingIntent;[Landroid/support/v4/app/RemoteInput;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    const-string v6, "com.google.android.gm"

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 789
    .local v4, "timestamp":J
    iget-object v6, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/clockwork/stream/StreamManager;->setLastGmailActionElapsedTimestamp(J)V

    .line 790
    const-string v6, "NotificationBridger"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 791
    const-string v6, "NotificationBridger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  gmail action taken at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isLegacyGmailNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 796
    iget-object v6, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItem(Lcom/google/android/clockwork/stream/StreamItemId;)V

    .line 797
    const-string v6, "NotificationBridger"

    invoke-static {v6, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 798
    const-string v6, "NotificationBridger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dismissed legacy gmail item for action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    .end local v4    # "timestamp":J
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 783
    .end local v1    # "actionPendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v7, "NotificationBridger"

    const-string v8, "Bridged action intent failed: pending intent was cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleBridgedNotificationContentIntent(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)I
    .locals 7
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "dismissed":Z
    const-string v4, "NotificationBridger"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    const-string v4, "NotificationBridger"

    const-string v5, "handleBridgedNotificationContentIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    iget-object v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    iget-object v5, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v4, v5}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v2

    .line 812
    .local v2, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-nez v2, :cond_1

    .line 813
    const-string v4, "NotificationBridger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bridged content intent: stream item not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    return v3

    .line 817
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_2

    .line 818
    const-string v4, "NotificationBridger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bridged content intent: content intent does not exist on item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :cond_2
    :try_start_0
    const-string v4, "NotificationBridger"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 824
    const-string v4, "NotificationBridger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  sending content pending intent for stream item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    .line 828
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 829
    const/4 v0, 0x1

    .line 830
    iget-object v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItem(Lcom/google/android/clockwork/stream/StreamItemId;)V

    .line 832
    :cond_4
    iget-object v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    if-eqz v0, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    .line 833
    :catch_0
    move-exception v1

    .line 834
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationBridger"

    const-string v5, "Bridged content intent failed: pending intent was cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 837
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private handleDataItemChanged(Lcom/google/android/gms/wearable/DataItem;)V
    .locals 4
    .param p1, "dataItem"    # Lcom/google/android/gms/wearable/DataItem;

    .prologue
    const/4 v3, 0x3

    .line 383
    const-string v1, "NotificationBridger"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "NotificationBridger"

    const-string v2, "handleDataItemChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mInitialSyncDone:Z

    if-nez v1, :cond_2

    .line 387
    const-string v1, "NotificationBridger"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const-string v1, "NotificationBridger"

    const-string v2, "  ignoring because initial sync has not been performed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 392
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteStreamItemIdFromDataItemUri(Landroid/net/Uri;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    .line 394
    .local v0, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->isDisplayableStreamItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-static {p1}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->postBridgedNotificationForDataItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;)V

    goto :goto_0

    .line 398
    :cond_3
    const-string v1, "NotificationBridger"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    const-string v1, "NotificationBridger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ignoring non-displayable stream item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDataItemDeleted(Landroid/net/Uri;)V
    .locals 6
    .param p1, "dataItemUri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x3

    .line 405
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    const-string v3, "NotificationBridger"

    const-string v4, "handleDataItemDeleted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mInitialSyncDone:Z

    if-nez v3, :cond_2

    .line 409
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const-string v3, "NotificationBridger"

    const-string v4, "  ignoring because initial sync has not been performed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    invoke-static {p1}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteStreamItemIdFromDataItemUri(Landroid/net/Uri;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    .line 416
    .local v0, "dataItemStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    iget-object v3, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v4}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    iget-object v1, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 420
    .local v1, "localStreamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v3, v1}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v2

    .line 421
    .local v2, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-eqz v2, :cond_1

    .line 422
    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v3

    if-nez v3, :cond_4

    .line 423
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    const-string v3, "NotificationBridger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  dismissing local notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_3
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v3, v1}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItem(Lcom/google/android/clockwork/stream/StreamItemId;)V

    goto :goto_0

    .line 428
    :cond_4
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    const-string v3, "NotificationBridger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  not dismissing local non-bridgeable notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v1    # "localStreamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .end local v2    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getLocalStreamItemIdFromRemote(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    .line 440
    .restart local v1    # "localStreamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    if-nez v1, :cond_6

    .line 441
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    const-string v3, "NotificationBridger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  skipping cancel of unexpected remote notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v3, v0}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v3, "NotificationBridger"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 449
    const-string v3, "NotificationBridger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  cancelling bridged notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_7
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v3, v1}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItem(Lcom/google/android/clockwork/stream/StreamItemId;)V

    goto/16 :goto_0
.end method

.method private handleDataItemsChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "dataEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataEvent;

    .line 372
    .local v0, "event":Lcom/google/android/gms/wearable/DataEvent;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 373
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleDataItemChanged(Lcom/google/android/gms/wearable/DataItem;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 375
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleDataItemDeleted(Landroid/net/Uri;)V

    goto :goto_0

    .line 377
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unrecognized data event type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    .end local v0    # "event":Lcom/google/android/gms/wearable/DataEvent;
    :cond_2
    return-void
.end method

.method private handleDumpState(Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;)V
    .locals 12
    .param p1, "dumpContext"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;

    .prologue
    .line 999
    :try_start_0
    iget-object v2, p1, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->ipw:Lcom/google/android/wearable/util/IndentingPrintWriter;

    .line 1000
    .local v2, "ipw":Lcom/google/android/wearable/util/IndentingPrintWriter;
    iget-boolean v10, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mInitialSyncDone:Z

    if-nez v10, :cond_0

    .line 1001
    const-string v10, "*** initial sync not done"

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    :cond_0
    iget-boolean v10, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSink:Z

    if-eqz v10, :cond_1

    .line 1004
    const-string v10, "is notification sink"

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    :cond_1
    iget-boolean v10, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSource:Z

    if-eqz v10, :cond_2

    .line 1007
    const-string v10, "is notification source"

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v11}, Lcom/google/common/collect/BiMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " items in bridged items map (bridged from remote)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    iget-object v10, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamManager;->getTopLevelItems()Ljava/util/ArrayList;

    move-result-object v9

    .line 1012
    .local v9, "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " active stream items:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1014
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v5, "localNonBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v4, "localBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v6, "remoteItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItem;

    .line 1019
    .local v3, "item":Lcom/google/android/clockwork/stream/StreamItem;
    instance-of v10, v3, Lcom/google/android/clockwork/stream/StreamItemGroup;

    if-eqz v10, :cond_3

    .line 1020
    move-object v0, v3

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getRepresentative()Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    .line 1024
    .local v8, "representativeId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    :goto_1
    iget-object v10, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v10}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 1026
    .local v7, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    if-eqz v7, :cond_4

    .line 1027
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1054
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ipw":Lcom/google/android/wearable/util/IndentingPrintWriter;
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    .end local v4    # "localBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v5    # "localNonBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v6    # "remoteItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .end local v7    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .end local v8    # "representativeId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .end local v9    # "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :catchall_0
    move-exception v10

    iget-object v11, p1, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->dumpCompleted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V

    throw v10

    .line 1022
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ipw":Lcom/google/android/wearable/util/IndentingPrintWriter;
    .restart local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    .restart local v4    # "localBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v5    # "localNonBridgableItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v6    # "remoteItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    .restart local v9    # "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :cond_3
    :try_start_1
    move-object v0, v3

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    .restart local v8    # "representativeId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    goto :goto_1

    .line 1028
    .restart local v7    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v10

    if-nez v10, :cond_5

    .line 1029
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1031
    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1034
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    .end local v7    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .end local v8    # "representativeId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local non bridgeable items:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1036
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItem;

    .line 1037
    .restart local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v10, 0x0

    invoke-direct {p0, v2, v3, v10}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V

    goto :goto_2

    .line 1039
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1040
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " local bridgeable items:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1042
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItem;

    .line 1043
    .restart local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v10, 0x0

    invoke-direct {p0, v2, v3, v10}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V

    goto :goto_3

    .line 1045
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1046
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " remote items:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1048
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItem;

    .line 1049
    .restart local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    const/4 v10, 0x0

    invoke-direct {p0, v2, v3, v10}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Z)V

    goto :goto_4

    .line 1051
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1052
    invoke-virtual {v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1054
    iget-object v10, p1, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->dumpCompleted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v10}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1056
    return-void
.end method

.method private handleRpcReceived(Lcom/google/android/gms/wearable/DataMap;)I
    .locals 5
    .param p1, "requestData"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 513
    const-string v2, "rpc_command"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "rpcCommand":Ljava/lang/String;
    const/4 v0, 0x0

    .line 515
    .local v0, "remoteInputResults":Landroid/os/Bundle;
    const-string v2, "remote_input_results"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    const-string v2, "remote_input_results"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/bridger/RemoteInputConverter;->getRemoteInputResultsFromDataMap(Lcom/google/android/gms/wearable/DataMap;)Landroid/os/Bundle;

    move-result-object v0

    .line 519
    :cond_0
    const-string v2, "bridged_action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    const-string v2, "remote_stream_item_id"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v2

    const-string v3, "action_index"

    invoke-virtual {p1, v3}, Lcom/google/android/gms/wearable/DataMap;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_wearable_action"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/wearable/DataMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleBridgedNotificationAction(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLandroid/os/Bundle;)I

    move-result v2

    .line 529
    :goto_0
    return v2

    .line 525
    :cond_1
    const-string v2, "bridged_content_intent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    const-string v2, "remote_stream_item_id"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleBridgedNotificationContentIntent(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)I

    move-result v2

    goto :goto_0

    .line 529
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleRpcReceived([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 508
    invoke-static {p1}, Lcom/google/android/gms/wearable/DataMap;->fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    .line 509
    .local v0, "requestData":Lcom/google/android/gms/wearable/DataMap;
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleRpcReceived(Lcom/google/android/gms/wearable/DataMap;)I

    move-result v1

    return v1
.end method

.method private handleShutdown()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "NotificationBridger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "NotificationBridger"

    const-string v1, "handleShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 356
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->removeRpcResultProvider(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mWearableHost:Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    invoke-virtual {v0, p0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->removeDataListener(Lcom/google/android/gms/wearable/DataApi$DataListener;)V

    .line 358
    return-void
.end method

.method private handleStartup()V
    .locals 15

    .prologue
    .line 221
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 222
    const-string v12, "NotificationBridger"

    const-string v13, "handleStartup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/WearableClient;->getNodeManager()Lcom/google/android/wearable/gmsclient/NodeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/NodeManager;->getLocalNode()Lcom/google/android/gms/wearable/Node;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    const/4 v3, 0x0

    .line 233
    .local v3, "dataItems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/wearable/DataItem;>;"
    :try_start_1
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/DataManager;->getDataItems()Ljava/lang/Iterable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 240
    :goto_1
    new-instance v12, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;

    iget-object v13, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedNotificationFilter:Lcom/google/android/clockwork/stream/bridger/BridgedNotificationFilter;

    .line 242
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v12}, Lcom/google/android/clockwork/stream/StreamManager;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 246
    .local v11, "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 247
    .local v7, "localDataItemsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v8, "remoteStreamDataItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataItem;

    .line 251
    .local v1, "dataItem":Lcom/google/android/gms/wearable/DataItem;
    invoke-interface {v1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v12

    const-string v13, "bridger"

    invoke-static {v12, v13}, Lcom/google/android/clockwork/host/WearableHostUtil;->isForFeature(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 254
    invoke-interface {v1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteStreamItemIdFromDataItemUri(Landroid/net/Uri;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v9

    .line 256
    .local v9, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    iget-object v12, v9, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    iget-object v13, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v13}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 258
    invoke-interface {v1}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 226
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .end local v3    # "dataItems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/wearable/DataItem;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "localDataItemsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "remoteStreamDataItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;>;"
    .end local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .end local v11    # "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    :catch_0
    move-exception v4

    .line 227
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "NotificationBridger"

    const-string v13, "error getting local node"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 229
    .local v4, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v12, "NotificationBridger"

    const-string v13, "error getting local node"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    .end local v4    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .restart local v3    # "dataItems":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/android/gms/wearable/DataItem;>;"
    :catch_2
    move-exception v4

    .line 235
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "NotificationBridger"

    const-string v13, "error getting dataItems"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 237
    .local v4, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v12, "NotificationBridger"

    const-string v13, "error getting dataItems"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 260
    .end local v4    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .restart local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "localDataItemsToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "remoteStreamDataItems":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;>;"
    .restart local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .restart local v11    # "streamItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v12

    invoke-interface {v8, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 265
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/DataItem;
    .end local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 266
    .local v10, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-direct {p0, v10}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    .line 267
    .local v0, "bridgeableStatus":I
    if-eqz v0, :cond_5

    .line 268
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 269
    const-string v12, "NotificationBridger"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  ignoring non bridgeable stream item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", bridgeableStatus="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 274
    :cond_5
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    invoke-static {v12, v10}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->buildDataMapRequest(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v1

    .line 277
    .local v1, "dataItem":Lcom/google/android/gms/wearable/PutDataMapRequest;
    :try_start_2
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/wearable/gmsclient/DataManager;->putDataItem(Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/wearable/DataItem;

    .line 278
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 279
    const-string v12, "NotificationBridger"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  published dataItem "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_2 .. :try_end_2} :catch_5

    .line 286
    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 281
    :catch_4
    move-exception v4

    .line 282
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "NotificationBridger"

    const-string v13, "Error setting dataItem"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 283
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 284
    .local v4, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v12, "NotificationBridger"

    const-string v13, "Error setting dataItem"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 290
    .end local v0    # "bridgeableStatus":I
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/PutDataMapRequest;
    .end local v4    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .end local v10    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, "dataItemPath":Ljava/lang/String;
    :try_start_3
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v12}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItem(Ljava/lang/String;)V

    .line 293
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 294
    const-string v12, "NotificationBridger"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  removed orphaned dataItem "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_5

    .line 296
    :catch_6
    move-exception v4

    .line 297
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "NotificationBridger"

    const-string v13, "Error deleting dataItem"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 298
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_7
    move-exception v4

    .line 299
    .local v4, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v12, "NotificationBridger"

    const-string v13, "Error deleting dataItem"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 304
    .end local v2    # "dataItemPath":Ljava/lang/String;
    .end local v4    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    :cond_9
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 305
    .restart local v10    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v13}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 308
    invoke-static {v10}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->remoteStreamItemIdFromStreamItem(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v9

    .line 310
    .restart local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v13

    invoke-interface {v12, v9, v13}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNextBridgedNotificationId:I

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v13

    iget v13, v13, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNextBridgedNotificationId:I

    goto :goto_6

    .line 317
    .end local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .end local v10    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_b
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 318
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 319
    .restart local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataMapItem;

    .line 320
    .local v1, "dataItem":Lcom/google/android/gms/wearable/DataMapItem;
    invoke-direct {p0, v9}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->isDisplayableStreamItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 321
    invoke-direct {p0, v9, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->postBridgedNotificationForDataItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;)V

    goto :goto_7

    .line 323
    :cond_d
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 324
    const-string v12, "NotificationBridger"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  ignoring non-displayable stream item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 330
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/DataMapItem;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;>;"
    .end local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    :cond_e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 331
    .restart local v10    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v13}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 334
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v12}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v12

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 336
    .restart local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 337
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 338
    const-string v12, "NotificationBridger"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  removing orphaned notification for stream item "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_10
    iget-object v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNotificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    iget v14, v14, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-virtual {v12, v13, v14}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    goto :goto_8

    .line 345
    .end local v9    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .end local v10    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_11
    const-string v12, "NotificationBridger"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 346
    const-string v12, "NotificationBridger"

    const-string v13, "  full sync completed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_12
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mInitialSyncDone:Z

    .line 349
    return-void
.end method

.method private handleStreamChange(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 11
    .param p1, "event"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    const/4 v10, 0x3

    .line 541
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 542
    const-string v7, "NotificationBridger"

    const-string v8, "handleStreamChange"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-boolean v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mInitialSyncDone:Z

    if-nez v7, :cond_2

    .line 545
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 546
    const-string v7, "NotificationBridger"

    const-string v8, "  ignoring because initial sync has not been performed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_1
    return-void

    .line 552
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->getModifiedItems()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 553
    .local v6, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    .line 554
    .local v0, "bridgeableStatus":I
    if-eqz v0, :cond_6

    .line 555
    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v8}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 557
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 558
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ensuring data item removed for non bridgeable stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bridgeableStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_4
    invoke-static {v6}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->dataItemPathForStreamItem(Lcom/google/android/clockwork/stream/StreamItemEntry;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "dataItemPath":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v7}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItem(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v3

    .line 565
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "NotificationBridger"

    const-string v8, "unable to delete dataItem."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 566
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 567
    .local v3, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v7, "NotificationBridger"

    const-string v8, "unable to delete dataItem."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 570
    .end local v2    # "dataItemPath":Ljava/lang/String;
    .end local v3    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    :cond_5
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 571
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ignoring change to non bridgeable remote stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bridgeableStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    :cond_6
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->buildDataMapRequest(Landroid/content/Context;Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v1

    .line 579
    .local v1, "dataItem":Lcom/google/android/gms/wearable/PutDataMapRequest;
    :try_start_1
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v7}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/wearable/gmsclient/DataManager;->putDataItem(Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/wearable/DataItem;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_1 .. :try_end_1} :catch_3

    .line 585
    :goto_1
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 586
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  published dataItem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 580
    :catch_2
    move-exception v3

    .line 581
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "NotificationBridger"

    const-string v8, "error setting dataItem"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 582
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 583
    .local v3, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v7, "NotificationBridger"

    const-string v8, "error setting dataItem"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 592
    .end local v0    # "bridgeableStatus":I
    .end local v1    # "dataItem":Lcom/google/android/gms/wearable/PutDataMapRequest;
    .end local v3    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .end local v6    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->getRemovedItems()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 594
    .restart local v6    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v8}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 595
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getStreamItemBridgeableStatus(Lcom/google/android/clockwork/stream/StreamItem;)I

    move-result v0

    .line 596
    .restart local v0    # "bridgeableStatus":I
    if-eqz v0, :cond_9

    .line 597
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 598
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  ignoring remove of non bridgeable stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bridgeableStatus="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 603
    :cond_9
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 604
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  removing dataItem for local stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_a
    invoke-static {v6}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->dataItemPathForStreamItem(Lcom/google/android/clockwork/stream/StreamItemEntry;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .end local v0    # "bridgeableStatus":I
    .restart local v2    # "dataItemPath":Ljava/lang/String;
    :goto_3
    :try_start_2
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v7}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItem(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_2

    .line 625
    :catch_4
    move-exception v3

    .line 626
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "NotificationBridger"

    const-string v8, "unable to delete dataItem."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 608
    .end local v2    # "dataItemPath":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b
    iget-object v7, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v7}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 610
    .local v5, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    if-nez v5, :cond_c

    .line 611
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 612
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  skipping stream item remove for unexpected remote item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 617
    :cond_c
    const-string v7, "NotificationBridger"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 618
    const-string v7, "NotificationBridger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  removing dataItem for remote stream item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_d
    invoke-static {v5}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->dataItemPathForRemoteStreamItemId(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dataItemPath":Ljava/lang/String;
    goto :goto_3

    .line 627
    .end local v5    # "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    :catch_5
    move-exception v3

    .line 628
    .local v3, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v7, "NotificationBridger"

    const-string v8, "unable to delete dataItem."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method private static isBridgedContentIntentRpc(Lcom/google/android/gms/wearable/DataMap;)Z
    .locals 2
    .param p0, "data"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 504
    const-string v0, "bridged_content_intent"

    const-string v1, "rpc_command"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDisplayableStreamItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Z
    .locals 3
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    const/4 v0, 0x0

    .line 916
    iget-boolean v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSink:Z

    if-nez v1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v2}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postBridgedNotificationForDataItem(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMapItem;)V
    .locals 5
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .param p2, "dataItem"    # Lcom/google/android/gms/wearable/DataMapItem;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getLocalStreamItemIdFromRemote(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    .line 462
    .local v1, "streamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/WearableClient;->getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/google/android/clockwork/stream/bridger/StreamItemConverter;->notificationFromDataItem(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/wearable/DataMapItem;)Landroid/app/Notification;

    move-result-object v0

    .line 464
    .local v0, "notification":Landroid/app/Notification;
    if-nez v1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getNextBridgedItemId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    .line 466
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mBridgedItemsMap:Lcom/google/common/collect/BiMap;

    invoke-interface {v2, p1, v1}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mNotificationManager:Landroid/support/v4/app/NotificationManagerCompat;

    iget-object v3, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    iget v4, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 469
    const-string v2, "NotificationBridger"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    const-string v2, "NotificationBridger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  displaying bridged notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    return-void
.end method

.method private sendBridgedActionRpc(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLcom/google/android/gms/wearable/DataMap;)V
    .locals 3
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .param p2, "actionIndex"    # I
    .param p3, "isWearableAction"    # Z
    .param p4, "remoteInputResults"    # Lcom/google/android/gms/wearable/DataMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 719
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 720
    .local v0, "message":Lcom/google/android/gms/wearable/DataMap;
    const-string v1, "rpc_command"

    const-string v2, "bridged_action"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "remote_stream_item_id"

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v1, "action_index"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string v1, "is_wearable_action"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    if-eqz p4, :cond_0

    .line 725
    const-string v1, "remote_input_results"

    invoke-virtual {v0, v1, p4}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 727
    :cond_0
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sendRemoteIntentRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 728
    return-void
.end method

.method private sendBridgedContentIntentRpc(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)V
    .locals 3
    .param p1, "remoteStreamItemId"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .prologue
    .line 734
    new-instance v0, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 735
    .local v0, "message":Lcom/google/android/gms/wearable/DataMap;
    const-string v1, "rpc_command"

    const-string v2, "bridged_content_intent"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "remote_stream_item_id"

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sendRemoteIntentRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 738
    return-void
.end method

.method private sendRemoteIntentRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "rpcData"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mRemoteIntentRpcActivityIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 700
    const-string v1, "bridger"

    invoke-static {v1}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->getInstance(Ljava/lang/String;)Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    move-result-object v1

    const-string v2, "/rpc"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/clockwork/actions/ResultCallback;)V

    .line 712
    :goto_0
    return-void

    .line 703
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mRemoteIntentRpcActivityIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 704
    .local v0, "startIntent":Landroid/content/Intent;
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.feature_tag"

    const-string v2, "bridger"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.rpc_path"

    const-string v2, "/rpc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.node"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "com.google.android.clockwork.actions.RpcWithCallback.rpc_data"

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMap;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendWithRemoteInputResults(Landroid/app/PendingIntent;[Landroid/support/v4/app/RemoteInput;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;
    .param p3, "remoteInputResults"    # Landroid/os/Bundle;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 842
    if-eqz p3, :cond_1

    .line 843
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 844
    .local v0, "overlayIntent":Landroid/content/Intent;
    const-string v1, "com.google.android.gm"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    invoke-static {v0, p3}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->addRemoteInputResultsToIntentForGmail(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 854
    :goto_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 858
    .end local v0    # "overlayIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 852
    .restart local v0    # "overlayIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {p2, v0, p3}, Landroid/support/v4/app/RemoteInput;->addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 856
    .end local v0    # "overlayIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    goto :goto_1
.end method

.method public static setInstance(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)V
    .locals 2
    .param p0, "instance"    # Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    .prologue
    .line 155
    sget-object v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sInstance:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set NotificationBridger instance twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    sput-object p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sInstance:Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    .line 159
    return-void
.end method


# virtual methods
.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 5
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 986
    new-instance v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;

    invoke-direct {v0, p1, p2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;-><init>(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V

    .line 988
    .local v0, "dumpContext":Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 989
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 991
    :try_start_0
    iget-object v3, v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;->dumpCompleted:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_0
    return-void

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "NotificationBridger"

    const-string v4, "Dump interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 924
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 955
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 926
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleStartup()V

    move v1, v2

    .line 927
    goto :goto_0

    .line 929
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleShutdown()V

    move v1, v2

    .line 930
    goto :goto_0

    .line 932
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleDataItemsChanged(Ljava/util/List;)V

    move v1, v2

    .line 933
    goto :goto_0

    .line 935
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleRpcReceived([B)I

    move v1, v2

    .line 936
    goto :goto_0

    .line 938
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleStreamChange(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    move v1, v2

    .line 939
    goto :goto_0

    .line 941
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;

    .line 942
    .local v0, "data":Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;
    iget-object v1, v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->remoteStreamItemId:Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    iget v3, v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->actionIndex:I

    iget-boolean v4, v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->isWearableAction:Z

    iget-object v5, v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;->remoteInputResults:Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sendBridgedActionRpc(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;IZLcom/google/android/gms/wearable/DataMap;)V

    move v1, v2

    .line 944
    goto :goto_0

    .line 946
    .end local v0    # "data":Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->sendBridgedContentIntentRpc(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)V

    move v1, v2

    .line 947
    goto :goto_0

    .line 949
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleDumpState(Lcom/google/android/clockwork/stream/bridger/NotificationBridger$DumpContext;)V

    move v1, v2

    .line 950
    goto :goto_0

    .line 952
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->handleWaitForProcessingForTest(Ljava/util/concurrent/Semaphore;)V

    move v1, v2

    .line 953
    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public handleNotificationAction(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 638
    const-string v0, "NotificationBridger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "NotificationBridger"

    const-string v1, "handleNotificationAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    const-string v0, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v4

    .line 643
    .local v4, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    const-string v0, "action_index"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 644
    .local v2, "actionIndex":I
    const-string v0, "is_wearable_action"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 646
    .local v3, "isWearableAction":Z
    invoke-direct {p0, v4}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getLocalStreamItemIdFromRemote(Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;)Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v6

    .line 647
    .local v6, "localStreamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    invoke-direct {p0, v3, v2, p1, v6}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->getRemoteInputResultsDataFromActionIntent(ZILandroid/content/Intent;Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v5

    .line 649
    .local v5, "remoteInputResults":Lcom/google/android/gms/wearable/DataMap;
    iget-object v8, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    new-instance v0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$SendBridgedActionData;-><init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;IZLcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;Lcom/google/android/gms/wearable/DataMap;)V

    invoke-virtual {v8, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 651
    .local v7, "msg":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 652
    return-void
.end method

.method public handleNotificationContentIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 659
    const-string v1, "NotificationBridger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    const-string v1, "NotificationBridger"

    const-string v2, "handleNotificationContentIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    const-string v1, "com.google.android.wearable.stream.REMOTE_STREAM_ITEM_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    move-result-object v0

    .line 664
    .local v0, "remoteStreamItemId":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 665
    return-void
.end method

.method handleWaitForProcessingForTest(Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "waitComplete"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 217
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 218
    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 3
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return-void
.end method

.method public onRpcReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 3
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public onRpcReceived(Lcom/google/android/gms/wearable/MessageEvent;Lcom/google/android/clockwork/actions/ResultCallback;)V
    .locals 4
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;
    .param p2, "callback"    # Lcom/google/android/clockwork/actions/ResultCallback;

    .prologue
    .line 482
    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v1

    .line 483
    .local v1, "rpc":[B
    invoke-static {v1}, Lcom/google/android/gms/wearable/DataMap;->fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    .line 484
    .local v0, "data":Lcom/google/android/gms/wearable/DataMap;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger$1;-><init>(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/clockwork/actions/ResultCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method public onStreamChange(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method

.method public setIsNotificationSink(Z)V
    .locals 0
    .param p1, "isNotificationSink"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSink:Z

    .line 189
    return-void
.end method

.method public setIsNotificationSource(Z)V
    .locals 0
    .param p1, "isNotificationSource"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mIsNotificationSource:Z

    .line 181
    return-void
.end method

.method public setRemoteIntentRpcActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rpcActivity"    # Landroid/content/Intent;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mRemoteIntentRpcActivityIntent:Landroid/content/Intent;

    .line 168
    return-void
.end method

.method public setStreamManager(Lcom/google/android/clockwork/stream/StreamManager;)V
    .locals 1
    .param p1, "streamManager"    # Lcom/google/android/clockwork/stream/StreamManager;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    .line 172
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mStreamManager:Lcom/google/android/clockwork/stream/StreamManager;

    invoke-virtual {v0, p0}, Lcom/google/android/clockwork/stream/StreamManager;->addListener(Lcom/google/android/clockwork/stream/StreamListener;)V

    .line 173
    return-void
.end method

.method shutdownForTest()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 208
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationBridger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    .line 195
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.clockwork.INITIAL_NOTIFICATIONS_FETCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 197
    return-void
.end method

.method waitForProcessingForTest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 212
    .local v0, "waitComplete":Ljava/util/concurrent/Semaphore;
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 214
    return-void
.end method
