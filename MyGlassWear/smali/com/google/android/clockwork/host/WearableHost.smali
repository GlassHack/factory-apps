.class public Lcom/google/android/clockwork/host/WearableHost;
.super Ljava/lang/Object;
.source "WearableHost.java"

# interfaces
.implements Lcom/google/android/wearable/util/Dumpable;


# static fields
.field public static final SLASH_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "WearableHost"

.field private static sInstance:Lcom/google/android/clockwork/host/WearableHost;


# instance fields
.field private mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

.field private final mClientLock:Ljava/lang/Object;

.field private mListenerRegistered:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mListenerLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/host/WearableHost;->SLASH_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClientLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mListenerRegistered:Z

    return-void
.end method

.method public static acquireApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/host/WearableHost;->getClientInternal(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/WearableClient;->acquireApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/host/WearableHost;->getClientInternal(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v0

    return-object v0
.end method

.method private getClientInternal(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/android/clockwork/host/WearableHost;->mClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/google/android/wearable/gmsclient/WearableClient;

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/wearable/gmsclient/WearableClient;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V

    iput-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static getFeatureFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "featureAndPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 110
    sget-object v1, Lcom/google/android/clockwork/host/WearableHost;->SLASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "segments":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/android/clockwork/host/WearableHost;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    return-object v0
.end method

.method public static releaseApiClient(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/host/WearableHost;->getClientInternal(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    .line 62
    return-void
.end method

.method public static setInstance(Lcom/google/android/clockwork/host/WearableHost;)V
    .locals 2
    .param p0, "instance"    # Lcom/google/android/clockwork/host/WearableHost;

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set WearableHost instance twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    sput-object p0, Lcom/google/android/clockwork/host/WearableHost;->sInstance:Lcom/google/android/clockwork/host/WearableHost;

    .line 47
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->addConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V

    .line 97
    return-void
.end method

.method public addListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V
    .locals 3
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/wearable/gmsclient/WearableListener;

    .prologue
    .line 75
    const-string v0, "WearableHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "WearableHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListenerForFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/clockwork/host/ListenerDispatcher;->addListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V

    .line 79
    return-void
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 1
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 134
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/clockwork/host/ListenerDispatcher;->dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V

    .line 135
    iget-object v0, p0, Lcom/google/android/clockwork/host/WearableHost;->mClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/wearable/gmsclient/WearableClient;->dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V

    .line 136
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 137
    return-void
.end method

.method public removeConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/host/WearableHostConnectionListener;

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->removeConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V

    .line 104
    return-void
.end method

.method public removeListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V
    .locals 3
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/google/android/wearable/gmsclient/WearableListener;

    .prologue
    .line 86
    const-string v0, "WearableHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "WearableHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListenerForFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/clockwork/host/ListenerDispatcher;->removeListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V

    .line 90
    return-void
.end method
