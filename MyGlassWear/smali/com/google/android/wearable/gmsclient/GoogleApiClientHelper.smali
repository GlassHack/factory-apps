.class public Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;
.super Ljava/lang/Object;
.source "GoogleApiClientHelper.java"

# interfaces
.implements Lcom/google/android/wearable/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$1;,
        Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableClient"


# instance fields
.field private final mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient$Builder;)V
    .locals 2
    .param p1, "clientBuilder"    # Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;-><init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$1;)V

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    .line 28
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 32
    return-void
.end method

.method public static throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V
    .locals 3
    .param p0, "result"    # Lcom/google/android/gms/common/api/Result;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 59
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    new-instance v0, Lcom/google/android/wearable/gmsclient/WearableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/WearableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public acquire()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 39
    const-string v0, "WearableClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "WearableClient"

    const-string v1, "acquire: numRefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 4
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 101
    const-string v1, "GoogleApiClientHelper"

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 103
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Connected"

    .line 105
    .local v0, "status":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastConnectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    iget-wide v2, v2, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;->lastConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastDisconnectCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    iget v2, v2, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;->lastDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastDisconnectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    iget-wide v2, v2, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;->lastDisconnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastFailureResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    iget v2, v2, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;->lastFailureResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastFailureTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mConnectionManager:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;

    iget-wide v2, v2, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper$ConnectionManager;->lastFailureTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "Looper"

    invoke-virtual {p1, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 113
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 115
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 116
    return-void

    .line 103
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Connecting"

    goto/16 :goto_0

    :cond_1
    const-string v0, "Disconnected"

    goto/16 :goto_0
.end method

.method public getClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
