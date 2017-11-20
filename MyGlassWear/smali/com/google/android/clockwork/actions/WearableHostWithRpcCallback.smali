.class public Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
.super Ljava/lang/Object;
.source "WearableHostWithRpcCallback.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;,
        Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;
    }
.end annotation


# static fields
.field public static final ERROR_SEND_RPC_FAILED:I = 0x0

.field public static final ERROR_TIMEOUT:I = 0x1

.field public static final KEY_FEATURE_TAG:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.feature_tag"

.field public static final KEY_INVOCATION_ID:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.invocation_id"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.message_id"

.field public static final KEY_NODE:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.node"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback."

.field public static final KEY_RESULT:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.result"

.field public static final KEY_RPC_DATA:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.rpc_data"

.field public static final KEY_RPC_PATH:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.rpc_path"

.field public static final KEY_SUCCESSFUL:Ljava/lang/String; = "com.google.android.clockwork.actions.RpcWithCallback.successful"

.field public static final MESSAGE_DEFAULT:I = 0x0

.field public static final MESSAGE_NO_MESSAGE:I = 0x3

.field public static final MESSAGE_OPEN_ON_PHONE:I = 0x2

.field public static final MESSAGE_SUCCESS:I = 0x1

.field public static final NO_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HostWithRpcCallback"

.field private static final TIMEOUT_LENGTH_MS:I = 0x1388

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/clockwork/actions/ResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureTag:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNodeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

.field private mRpcListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/clockwork/actions/RpcWithCallbackListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mRpcListeners:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mDataListeners:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mNodeListeners:Ljava/util/List;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mCallbacks:Ljava/util/Map;

    .line 87
    iput-object p1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mFeatureTag:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/google/android/clockwork/host/WearableHost;->getInstance()Lcom/google/android/clockwork/host/WearableHost;

    move-result-object v0

    .line 89
    .local v0, "host":Lcom/google/android/clockwork/host/WearableHost;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p0}, Lcom/google/android/clockwork/host/WearableHost;->addListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V

    .line 94
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mHandler:Landroid/os/Handler;

    .line 95
    return-void

    .line 92
    :cond_0
    const-string v1, "HostWithRpcCallback"

    const-string v2, "Error: could not find WearableHost. You should only see this in tests."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    .param p1, "x1"    # Lcom/google/android/gms/wearable/DataMap;
    .param p2, "x2"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendResultRpc(Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/MessageEvent;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    .locals 3
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-object v2, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    sget-object v1, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    .line 104
    .local v0, "instance":Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;

    .end local v0    # "instance":Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    invoke-direct {v0, p0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local v0    # "instance":Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    sget-object v1, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    monitor-exit v2

    return-object v0

    .line 109
    .end local v0    # "instance":Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendResult(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;I)V

    .line 215
    return-void
.end method

.method private sendResult(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/google/android/gms/wearable/DataMap;

    .prologue
    .line 218
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendResult(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;I)V

    .line 219
    return-void
.end method

.method private sendResult(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/google/android/gms/wearable/DataMap;
    .param p3, "errorCode"    # I

    .prologue
    .line 222
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/actions/ResultCallback;

    .line 226
    .local v0, "callback":Lcom/google/android/clockwork/actions/ResultCallback;
    if-nez v0, :cond_2

    .line 227
    const-string v1, "HostWithRpcCallback"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "HostWithRpcCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find callback for id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    .line 233
    invoke-interface {v0, p3}, Lcom/google/android/clockwork/actions/ResultCallback;->onError(I)V

    .line 237
    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_3
    invoke-interface {v0, p2}, Lcom/google/android/clockwork/actions/ResultCallback;->onResult(Lcom/google/android/gms/wearable/DataMap;)V

    goto :goto_1
.end method

.method private sendResultRpc(Lcom/google/android/gms/wearable/DataMap;Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 5
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataMap;
    .param p2, "receivedRpc"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 206
    invoke-interface {p2}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/DataMap;->fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v0

    .line 207
    .local v0, "receivedData":Lcom/google/android/gms/wearable/DataMap;
    new-instance v1, Lcom/google/android/gms/wearable/DataMap;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V

    .line 208
    .local v1, "rpc":Lcom/google/android/gms/wearable/DataMap;
    const-string v2, "com.google.android.clockwork.actions.RpcWithCallback.result"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    .line 209
    const-string v2, "com.google.android.clockwork.actions.RpcWithCallback.invocation_id"

    const-string v3, "com.google.android.clockwork.actions.RpcWithCallback.invocation_id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-interface {p2}, Lcom/google/android/gms/wearable/MessageEvent;->getSourceNodeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/result"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/clockwork/actions/ResultCallback;)V

    .line 211
    return-void
.end method

.method public static setRpcManager(Lcom/google/android/wearable/gmsclient/MessageManager;)V
    .locals 0
    .param p0, "manager"    # Lcom/google/android/wearable/gmsclient/MessageManager;

    .prologue
    .line 98
    sput-object p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

    .line 99
    return-void
.end method


# virtual methods
.method public addDataListener(Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/wearable/DataApi$DataListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public addNodeListener(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mNodeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public addRpcListener(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    if-ne v0, p1, :cond_0

    .line 133
    const-string v0, "HostWithRpcCallback"

    const-string v1, "Tried to call addRpcListener for current result listener, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mRpcListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 3
    .param p1, "event"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 242
    iget-object v2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mDataListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataApi$DataListener;

    .line 243
    .local v1, "listener":Lcom/google/android/gms/wearable/DataApi$DataListener;
    invoke-interface {v1, p1}, Lcom/google/android/gms/wearable/DataApi$DataListener;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V

    goto :goto_0

    .line 245
    .end local v1    # "listener":Lcom/google/android/gms/wearable/DataApi$DataListener;
    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 7
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 184
    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/wearable/DataMap;->fromByteArray([B)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v3

    .line 185
    .local v3, "requestData":Lcom/google/android/gms/wearable/DataMap;
    const-string v5, "com.google.android.clockwork.actions.RpcWithCallback.result"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/wearable/DataMap;->getDataMap(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataMap;

    move-result-object v4

    .line 186
    .local v4, "result":Lcom/google/android/gms/wearable/DataMap;
    if-nez v4, :cond_2

    .line 188
    iget-object v5, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mRpcListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .line 189
    .local v2, "listener":Lcom/google/android/clockwork/actions/RpcWithCallbackListener;
    invoke-interface {v2, p1}, Lcom/google/android/clockwork/actions/RpcWithCallbackListener;->onRpcReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    goto :goto_0

    .line 191
    .end local v2    # "listener":Lcom/google/android/clockwork/actions/RpcWithCallbackListener;
    :cond_0
    iget-object v5, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    new-instance v6, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;

    invoke-direct {v6, p0, p1}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$ResultCallbackSender;-><init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Lcom/google/android/gms/wearable/MessageEvent;)V

    invoke-interface {v5, p1, v6}, Lcom/google/android/clockwork/actions/RpcWithCallbackListener;->onRpcReceived(Lcom/google/android/gms/wearable/MessageEvent;Lcom/google/android/clockwork/actions/ResultCallback;)V

    .line 203
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    const-string v5, "com.google.android.clockwork.actions.RpcWithCallback.invocation_id"

    invoke-virtual {v3, v5}, Lcom/google/android/gms/wearable/DataMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "invocationId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0, v1, v4}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sendResult(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V

    goto :goto_1
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 3
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 249
    iget-object v2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mNodeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    .line 250
    .local v1, "listener":Lcom/google/android/gms/wearable/NodeApi$NodeListener;
    invoke-interface {v1, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_0

    .line 252
    .end local v1    # "listener":Lcom/google/android/gms/wearable/NodeApi$NodeListener;
    :cond_0
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 3
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 256
    iget-object v2, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mNodeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    .line 257
    .local v1, "listener":Lcom/google/android/gms/wearable/NodeApi$NodeListener;
    invoke-interface {v1, p1}, Lcom/google/android/gms/wearable/NodeApi$NodeListener;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    goto :goto_0

    .line 259
    .end local v1    # "listener":Lcom/google/android/gms/wearable/NodeApi$NodeListener;
    :cond_0
    return-void
.end method

.method public removeDataListener(Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/wearable/DataApi$DataListener;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mDataListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public removeNodeListener(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mNodeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public removeRpcListener(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mRpcListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public removeRpcResultProvider(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    if-ne v0, p1, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v0, "HostWithRpcCallback"

    const-string v1, "Tried to remove result listener that wasn\'t set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRpc(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/clockwork/actions/ResultCallback;)V
    .locals 8
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/android/gms/wearable/DataMap;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/google/android/clockwork/actions/ResultCallback;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "invocationId":Ljava/lang/String;
    sget-object v4, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

    if-nez v4, :cond_0

    .line 162
    const-string v4, "HostWithRpcCallback"

    const-string v5, "Tried to send RPC before WearableHostWithRpcCallback was initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    if-eqz p4, :cond_1

    .line 166
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "uuid":Ljava/lang/String;
    move-object v0, v3

    .line 168
    iget-object v4, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mCallbacks:Ljava/util/Map;

    invoke-interface {v4, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v4, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;

    invoke-direct {v5, p0, v3}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$1;-><init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    const-string v4, "com.google.android.clockwork.actions.RpcWithCallback.invocation_id"

    invoke-virtual {p2, v4, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;

    invoke-direct {v2, p0, v0}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;-><init>(Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;Ljava/lang/String;)V

    .line 178
    .local v2, "rpcCallback":Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback$SendRpcCallbackWithId;
    iget-object v4, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mFeatureTag:Ljava/lang/String;

    invoke-static {v4, p3}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "pathAndFeature":Ljava/lang/String;
    sget-object v4, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->sRpcManager:Lcom/google/android/wearable/gmsclient/MessageManager;

    invoke-virtual {p2}, Lcom/google/android/gms/wearable/DataMap;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, p1, v1, v5, v2}, Lcom/google/android/wearable/gmsclient/MessageManager;->sendMessageAsync(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/wearable/gmsclient/MessageManager$SendRpcCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;

    goto :goto_0
.end method

.method public setRpcResultProvider(Lcom/google/android/clockwork/actions/RpcWithCallbackListener;)Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;
    .locals 2
    .param p1, "listener"    # Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "HostWithRpcCallback"

    const-string v1, "Overriding old result listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mResultListener:Lcom/google/android/clockwork/actions/RpcWithCallbackListener;

    .line 117
    iget-object v0, p0, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->mRpcListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "HostWithRpcCallback"

    const-string v1, "setResultListener(): listener was already an RPC listener, removing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    return-object p0
.end method
