.class public Lcom/google/android/wearable/app/PeerConnectionListener;
.super Ljava/lang/Object;
.source "PeerConnectionListener.java"

# interfaces
.implements Lcom/google/android/clockwork/host/WearableHostConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;
    }
.end annotation


# static fields
.field private static final MIN_MYGLASS_COMPANION_VERSION:I = 0x142

.field private static final MYGLASS_COMPANION_PACKAGE:Ljava/lang/String; = "com.google.glass.companion"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private context:Landroid/content/Context;

.field private dataManager:Lcom/google/android/wearable/gmsclient/DataManager;

.field private queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataManager"    # Lcom/google/android/wearable/gmsclient/DataManager;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->context:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->dataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    .line 105
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 108
    invoke-direct {p0}, Lcom/google/android/wearable/app/PeerConnectionListener;->onConnectionChange()V

    .line 109
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/android/wearable/app/PeerConnectionListener;->broadcastConnection(Landroid/content/Context;Z)V

    return-void
.end method

.method private static broadcastConnection(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isConnected"    # Z

    .prologue
    .line 127
    sget-object v1, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Broadcasting wear connection. [isConnected=%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.WEAR_CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private onConnectionChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->cancel(Z)Z

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    .line 183
    :cond_0
    sget-object v0, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying for connected Wear device."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v0, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    iget-object v1, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    .line 185
    iget-object v1, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->queryWearDeviceTask:Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;

    .line 186
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 185
    invoke-virtual {v1, v0, v2}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 187
    return-void
.end method

.method private setSetupData()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 138
    sget-object v6, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "setting setup data"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object v6, Lcom/google/android/clockwork/setup/Constants;->DATA_ITEM_NAME:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v2

    .line 140
    .local v2, "dataItem":Lcom/google/android/gms/wearable/PutDataMapRequest;
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v3

    .line 141
    .local v3, "dataMap":Lcom/google/android/gms/wearable/DataMap;
    const-string v6, "has_oem_info"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v6, "default_disable_doze"

    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string v6, "oem_companion_pkg"

    const-string v7, "com.google.glass.companion"

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v6, "oem_companion_min_version"

    const/16 v7, 0x142

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v6, "product_name"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 156
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 157
    const-string v6, "source_mac"

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v6, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 165
    .local v4, "res":Landroid/content/res/Resources;
    sget v6, Lcom/google/android/wearable/app/R$drawable;->hero_header:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 166
    .local v5, "stream":Ljava/io/InputStream;
    new-instance v6, Lcom/google/android/clockwork/utils/FdStreamWrapper;

    invoke-direct {v6, v5}, Lcom/google/android/clockwork/utils/FdStreamWrapper;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lcom/google/android/clockwork/utils/FdStreamWrapper;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v1

    .line 167
    .local v1, "asset":Lcom/google/android/gms/wearable/Asset;
    const-string v6, "product_image"

    invoke-virtual {v3, v6, v1}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 169
    iget-object v6, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->dataManager:Lcom/google/android/wearable/gmsclient/DataManager;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v7

    new-instance v8, Lcom/google/android/wearable/app/PeerConnectionListener$1;

    invoke-direct {v8, p0}, Lcom/google/android/wearable/app/PeerConnectionListener$1;-><init>(Lcom/google/android/wearable/app/PeerConnectionListener;)V

    invoke-virtual {v6, v7, v8}, Lcom/google/android/wearable/gmsclient/DataManager;->putDataItemAsync(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V

    .line 176
    return-void

    .line 161
    .end local v1    # "asset":Lcom/google/android/gms/wearable/Asset;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_0
    sget-object v6, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "unable to get Bluetooth adapter."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 4
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPeerConnected, node=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/wearable/app/PeerConnectionListener;->setSetupData()V

    .line 115
    iget-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_CONNECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 116
    invoke-direct {p0}, Lcom/google/android/wearable/app/PeerConnectionListener;->onConnectionChange()V

    .line 117
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 4
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/wearable/app/PeerConnectionListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPeerDisconnected, node=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->WEAR_COMPANION_DISCONNECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/wearable/app/PeerConnectionListener;->onConnectionChange()V

    .line 124
    return-void
.end method
