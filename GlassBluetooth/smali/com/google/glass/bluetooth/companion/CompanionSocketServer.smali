.class public Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.super Ljava/lang/Object;
.source "CompanionSocketServer.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;,
        Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;,
        Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;
    }
.end annotation


# static fields
.field private static final FORMATER:Ljava/text/SimpleDateFormat;

.field private static final MAX_PENDING_ITEMS:I = 0x14

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private androidDeviceSDKVersion:I

.field private final binder:Lcom/google/glass/companion/IRemoteCompanionService$Stub;

.field private volatile bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

.field private volatile companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

.field private volatile companionFeatureBits:J

.field private final connectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/bluetooth/companion/CompanionConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

.field private final connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field private final connectivityReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;

.field private final envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

.field private final filesWrapper:Lcom/google/glass/io/FilesWrapper;

.field final locationRequestMap:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/google/glass/companion/Proto$LocationRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

.field private final pendingMessengers:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

.field private previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private volatile remoteVersion:I

.field private final service:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

.field private final setupFinishedReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;

.field private stateHistory:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 87
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 88
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->FORMATER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;)V
    .locals 6
    .param p1, "service"    # Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    .prologue
    .line 386
    .line 387
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 389
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v4

    .line 390
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 386
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;-><init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/android/net/ConnectivityManager;)V

    .line 391
    return-void
.end method

.method constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothInterface;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/android/net/ConnectivityManager;)V
    .locals 5
    .param p1, "service"    # Lcom/google/glass/bluetooth/GlassBluetoothInterface;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p4, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p5, "connectivityManager"    # Lcom/google/glass/android/net/ConnectivityManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->androidDeviceSDKVersion:I

    .line 100
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 116
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    .line 122
    iput v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->remoteVersion:I

    .line 167
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stateHistory:Landroid/util/LruCache;

    .line 176
    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;I)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->pendingMessengers:Landroid/util/LruCache;

    .line 192
    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->binder:Lcom/google/glass/companion/IRemoteCompanionService$Stub;

    .line 374
    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;

    .line 399
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->service:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    .line 400
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 401
    iput-object p3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 402
    iput-object p4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 403
    iput-object p5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 405
    invoke-interface {p1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 407
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-direct {v1, v0}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    .line 408
    new-instance v1, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {v1, v0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 410
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->init()V

    .line 411
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v1, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 413
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 417
    new-instance v1, Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-direct {v1, v0}, Lcom/google/glass/bluetooth/companion/PresharedKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    .line 418
    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/PresharedKey;->fetchKey()V

    .line 422
    :cond_0
    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;

    invoke-direct {v1, p0, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setupFinishedReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;

    .line 423
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setupFinishedReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 425
    invoke-static {}, Lcom/google/glass/io/FilesWrapperProvider;->getInstance()Lcom/google/glass/io/FilesWrapperProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/io/FilesWrapperProvider;->get()Lcom/google/glass/io/FilesWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->filesWrapper:Lcom/google/glass/io/FilesWrapper;

    .line 427
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$1200(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    .line 428
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->service:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/PresharedKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->createNetworkSocketThread()V

    return-void
.end method

.method static synthetic access$1700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p1, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setupScreencastAndPair(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->pendingMessengers:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->startOrUpdateLocationListening(Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/io/FilesWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->filesWrapper:Lcom/google/glass/io/FilesWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/ConnectionRestorer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    return-object v0
.end method

.method private createNetworkSocketThread()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1009
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1010
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 1011
    .local v1, "isTethered":Z
    :goto_0
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v6, v4}, Lcom/google/glass/android/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1012
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v4

    .line 1014
    .local v0, "isOnWifi":Z
    :goto_1
    sget-object v6, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "isTethered = %s, isOnWifi = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    const/4 v3, 0x0

    .line 1017
    .local v3, "type":Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    if-eqz v1, :cond_6

    .line 1018
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    .line 1024
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v6}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v6

    if-eq v6, v3, :cond_1

    .line 1025
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    sget-object v7, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 1029
    :cond_1
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v6}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1030
    :cond_2
    sget-object v6, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Starting NetworkSocketThread for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-interface {v6, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-static {p0, v3, v4}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->startSocketThread(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .line 1033
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/companion/PresharedKey;->fetchKey()V

    .line 1034
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    invoke-virtual {v4, v5}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->setKey(Lcom/google/glass/bluetooth/companion/PresharedKey;)V

    .line 1036
    :cond_3
    return-void

    .end local v0    # "isOnWifi":Z
    .end local v1    # "isTethered":Z
    .end local v3    # "type":Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    :cond_4
    move v1, v5

    .line 1010
    goto :goto_0

    .restart local v1    # "isTethered":Z
    :cond_5
    move v0, v5

    .line 1012
    goto :goto_1

    .line 1019
    .restart local v0    # "isOnWifi":Z
    .restart local v3    # "type":Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    :cond_6
    if-eqz v0, :cond_0

    .line 1020
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    goto :goto_2
.end method

.method private notifyCompanionPropertiesChanged()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "com.google.glass.extra.COMPANION_WIFI_CONNECTED"

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 611
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->getWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 610
    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    const-string v5, "com.google.glass.extra.COMPANION_INTERACTIVE_STATE"

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 613
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->getIsInteractiveState()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 612
    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 620
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionDeviceInfo;->getGpsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v1, v3

    .line 621
    .local v1, "isGpsEnabled":Z
    :goto_2
    const-string v2, "com.google.glass.extra.EXTRA_COMPANION_GPS_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    const-string v2, "com.google.glass.extra.COMPANION_FEATURES_ENABLED"

    iget-wide v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 624
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 625
    return-void

    .end local v1    # "isGpsEnabled":Z
    :cond_1
    move v2, v4

    .line 611
    goto :goto_0

    :cond_2
    move v2, v4

    .line 613
    goto :goto_1

    :cond_3
    move v1, v4

    .line 620
    goto :goto_2
.end method

.method private reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V
    .locals 3
    .param p1, "state"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stateHistory:Landroid/util/LruCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method

.method private setupScreencastAndPair(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 4
    .param p1, "companionDevice"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 790
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Attempting to pair to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->createBond()Z

    .line 792
    return-void
.end method

.method private startOrUpdateLocationListening(Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "eventEnvelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 439
    iget-object v11, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    monitor-enter v11

    .line 442
    :try_start_0
    iget-object v10, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    .line 443
    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    .line 444
    .local v9, "requestsForProvider":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/glass/companion/Proto$LocationRequest;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 445
    .local v3, "minTime":J
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 446
    .local v2, "minDistance":F
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/Proto$LocationRequest;

    .line 447
    .local v5, "request":Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinTime()J

    move-result-wide v7

    .line 448
    .local v7, "requestMinTime":J
    cmp-long v12, v7, v3

    if-gez v12, :cond_1

    .line 449
    move-wide v3, v7

    .line 452
    :cond_1
    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$LocationRequest;->getMinDistance()F

    move-result v6

    .line 453
    .local v6, "requestMinDistance":F
    cmpg-float v12, v6, v2

    if-gez v12, :cond_0

    .line 454
    move v2, v6

    goto :goto_0

    .line 459
    .end local v5    # "request":Lcom/google/glass/companion/Proto$LocationRequest;
    .end local v6    # "requestMinDistance":F
    .end local v7    # "requestMinTime":J
    :cond_2
    invoke-virtual {p2}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v1

    .line 460
    .local v1, "locationRequest":Lcom/google/glass/companion/Proto$LocationRequest;
    invoke-virtual {v1, v3, v4}, Lcom/google/glass/companion/Proto$LocationRequest;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 461
    invoke-virtual {v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 462
    move-object v0, p2

    .line 463
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 466
    iget-object v10, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    invoke-static {v10, p1, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    .line 467
    monitor-exit v11

    .line 468
    return-void

    .line 467
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v1    # "locationRequest":Lcom/google/glass/companion/Proto$LocationRequest;
    .end local v2    # "minDistance":F
    .end local v3    # "minTime":J
    .end local v9    # "requestsForProvider":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/glass/companion/Proto$LocationRequest;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private stopListeningForProvider(Ljava/lang/String;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 876
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stop listening for location updates of provider: [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    new-instance v1, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    .line 878
    .local v1, "stopLocationRequest":Lcom/google/glass/companion/Proto$LocationRequest;
    iput v6, v1, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 879
    iput-object p1, v1, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 880
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 881
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 882
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    invoke-static {v2, p1, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    .line 883
    return-void
.end method

.method private updateFeatureBits(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V
    .locals 6
    .param p1, "companionFeatureInfo"    # Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .prologue
    const-wide/16 v4, 0x4

    const-wide/16 v2, 0x2

    .line 736
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->hasIsPhotoSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 738
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->getIsPhotoSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 742
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->hasIsKeyboardTextEntrySupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 744
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$CompanionFeatureInfo;->getIsKeyboardTextEntrySupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 748
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 474
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setupFinishedReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$SetupFinishedReceiver;->unregister(Landroid/content/Context;)V

    .line 480
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectivityReceiver:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->service:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$ConnectivityBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 481
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->close()V

    .line 486
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 676
    const-string v2, "========CompanionSocketServer==========="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stateHistory:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    .line 679
    .local v1, "stateSnapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;>;"
    sget-object v4, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->FORMATER:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;>;"
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method

.method public getBinder()Lcom/google/glass/companion/IRemoteCompanionService$Stub;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->binder:Lcom/google/glass/companion/IRemoteCompanionService$Stub;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->service:Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    invoke-interface {v0}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method handleCompanionDeviceInfoEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 1
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 898
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionDeviceInfoC2G()Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 899
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionPropertiesChanged()V

    .line 900
    return-void
.end method

.method handleCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V
    .locals 0
    .param p1, "companionFeatureInfo"    # Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->updateFeatureBits(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    .line 757
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionPropertiesChanged()V

    .line 758
    return-void
.end method

.method handleCompanionInfoEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 6
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 886
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    .line 887
    .local v1, "info":Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->pendingMessengers:Landroid/util/LruCache;

    iget-wide v4, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 888
    .local v2, "messenger":Landroid/os/Messenger;
    if-eqz v2, :cond_0

    .line 890
    :try_start_0
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createMessage(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Replying message with id but the recipient process has died."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleLocationEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 13
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 834
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    .line 835
    .local v1, "locationMessage":Lcom/google/glass/companion/Proto$LocationMessage;
    iget-object v8, v1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    :goto_0
    const-string v11, "Missing provider in LocationMessage: [%s]"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v8, v11, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 837
    iget-object v7, v1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    .line 839
    .local v7, "provider":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    monitor-enter v9

    .line 840
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 841
    .local v2, "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 842
    :cond_0
    invoke-direct {p0, v7}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stopListeningForProvider(Ljava/lang/String;)V

    .line 843
    monitor-exit v9

    .line 869
    :goto_1
    return-void

    .end local v2    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    .end local v7    # "provider":Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 835
    goto :goto_0

    .line 845
    .restart local v2    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    .restart local v7    # "provider":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 846
    .local v6, "messengers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Messenger;>;"
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createMessage(Lcom/google/glass/companion/Proto$Envelope;)Landroid/os/Message;

    move-result-object v3

    .line 847
    .local v3, "message":Landroid/os/Message;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 848
    .local v5, "messengerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Messenger;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 849
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    .local v4, "messenger":Landroid/os/Messenger;
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v8, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed sending location update for provider [%s] to messenger: [%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-interface {v8, v0, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 868
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "messenger":Landroid/os/Messenger;
    .end local v5    # "messengerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Messenger;>;"
    .end local v6    # "messengers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Messenger;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 856
    .restart local v2    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    .restart local v3    # "message":Landroid/os/Message;
    .restart local v4    # "messenger":Landroid/os/Messenger;
    .restart local v5    # "messengerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Messenger;>;"
    .restart local v6    # "messengers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/Messenger;>;"
    :catch_1
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v8, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Failed sending location update for provider [%s] to messenger: [%s]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-interface {v8, v0, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 864
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "messenger":Landroid/os/Messenger;
    :cond_3
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 865
    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    invoke-direct {p0, v7}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->stopListeningForProvider(Ljava/lang/String;)V

    .line 868
    :cond_4
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;)V
    .locals 6
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "itemType"    # Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 711
    if-nez p1, :cond_1

    .line 712
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Invalid or no TimelineItem given [item=%s, itemType=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Inserting item into timeline [id=%s, itemType=%s]."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 718
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    goto :goto_0
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCompanionConnected(Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 7
    .param p1, "companionServerThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    const/4 v6, 0x1

    .line 519
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v0

    .line 520
    .local v0, "connectionType":Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->getLogType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->getConnectedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 523
    .local v1, "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v0, v3, :cond_3

    .line 524
    invoke-virtual {v1, v6}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->addMyGlassConnectionType(I)Z

    .line 526
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->RFCOMM_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    .line 535
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-virtual {v3, v1}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->onCompanionConnected(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 536
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.google.glass.extra.STATE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v3

    sget-object v4, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v3, v4, :cond_1

    .line 541
    iget-wide v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 544
    :cond_1
    const-string v3, "com.google.glass.extra.COMPANION_FEATURES_ENABLED"

    iget-wide v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 545
    const-string v3, "com.google.glass.extra.COMPANION_REMOTE_VERSION"

    iget v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->remoteVersion:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    const-string v3, "com.google.glass.extra.COMPANION_LOCATION_VERSION"

    sget v4, Lcom/google/glass/companion/CompanionConstants;->VERSION:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    if-eqz v1, :cond_2

    .line 548
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 550
    :cond_2
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 554
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionPropertiesChanged()V

    .line 557
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;

    invoke-direct {v4, p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 571
    return-void

    .line 527
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v0, v3, :cond_4

    .line 528
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->addMyGlassConnectionType(I)Z

    .line 530
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->TETHERING_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    goto :goto_0

    .line 531
    :cond_4
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v0, v3, :cond_0

    .line 532
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->WIFI_CONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    goto :goto_0
.end method

.method public notifyCompanionDisconnected(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V
    .locals 7
    .param p1, "connection"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 574
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_1

    .line 576
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Get a different CompanionConnection in notifyCompanionDisconnected."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    monitor-exit v3

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 580
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {p0, v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->setCompanionDeviceInfo(Lcom/google/glass/companion/Proto$CompanionDeviceInfo;)V

    .line 584
    invoke-virtual {p0, v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->resetCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    .line 587
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionPropertiesChanged()V

    .line 589
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 590
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->envelopeSendingHandler:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    invoke-virtual {v2, v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 591
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->onCompanionDisconnected()V

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.glass.extra.STATE"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 595
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->DISCONNECTED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    .line 598
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .line 599
    .local v0, "companionServerThread":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->unblock()V

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->networkSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .line 603
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->unblock()V

    goto :goto_0

    .line 580
    .end local v0    # "companionServerThread":Lcom/google/glass/bluetooth/companion/CompanionServerThread;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method notifyVersionMismatch(II)V
    .locals 2
    .param p1, "glassVersion"    # I
    .param p2, "companionVersion"    # I

    .prologue
    .line 628
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$4;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method

.method public onBluetoothAdapterDisabled()V
    .locals 1

    .prologue
    .line 660
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 661
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_DISABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    .line 662
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->close()V

    .line 665
    :cond_0
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 2

    .prologue
    .line 649
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 650
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_ENABLED:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    .line 651
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-static {p0, v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->startSocketThread(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->bluetoothSocketThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .line 655
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRestorer:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->recover()V

    .line 656
    return-void
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 1
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 687
    if-eqz p1, :cond_0

    .line 688
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_PAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;->BT_UNPAIR:Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->reportState(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$State;)V

    goto :goto_0
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 695
    return-void
.end method

.method public prepareConnection(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Z
    .locals 6
    .param p1, "connection"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 504
    sget-object v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "prepare a CompanionConnection when there is already one."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    monitor-exit v2

    .line 514
    :goto_0
    return v1

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 508
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->handshake()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    const/4 v1, 0x1

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to handshake"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method resetCompanionFeatureInfo(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V
    .locals 2
    .param p1, "companionFeatureInfo"    # Lcom/google/glass/companion/Proto$CompanionFeatureInfo;

    .prologue
    .line 751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionFeatureBits:J

    .line 752
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->updateFeatureBits(Lcom/google/glass/companion/Proto$CompanionFeatureInfo;)V

    .line 753
    return-void
.end method

.method setCompanionAndroidSDKVersion(I)V
    .locals 0
    .param p1, "sdkVersion"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->androidDeviceSDKVersion:I

    .line 733
    return-void
.end method

.method setCompanionDeviceInfo(Lcom/google/glass/companion/Proto$CompanionDeviceInfo;)V
    .locals 0
    .param p1, "companionDeviceInfo"    # Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->companionDeviceInfo:Lcom/google/glass/companion/Proto$CompanionDeviceInfo;

    .line 729
    return-void
.end method

.method setRemoteVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 724
    iput p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->remoteVersion:I

    .line 725
    return-void
.end method

.method stopScreencastAndRestorePairing()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 804
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->COMPANION_SCREENCAST:Lcom/google/glass/userevent/UserEventAction;

    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->connectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/bluetooth/companion/CompanionConnection;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->getConnectedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    .line 811
    .local v0, "screencastDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 812
    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 813
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Forgetting temporary screencast device: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    .line 816
    iput-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->temporaryScreencastDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 820
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v1, :cond_0

    .line 821
    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Re-pairing with %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->createBond()Z

    .line 824
    iput-object v6, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 827
    .end local v0    # "screencastDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_0
    return-void

    .line 804
    :cond_1
    const-string v1, "2"

    goto :goto_0
.end method

.method unpair(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 4
    .param p1, "connectedDevice"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v3, 0x0

    .line 769
    if-nez p1, :cond_0

    .line 770
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skip: no BluetoothDeviceWrapper to unpair!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    :goto_0
    return-void

    .line 773
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 774
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unpairing from Companion device: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-nez v0, :cond_1

    .line 776
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skip: no BluetoothDevice to unpair!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->previouslyConnectedCompanionDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    goto :goto_0
.end method

.method wakeupScreen()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 702
    return-void
.end method
