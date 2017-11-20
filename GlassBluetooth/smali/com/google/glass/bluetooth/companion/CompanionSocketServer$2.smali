.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;
.super Lcom/google/glass/companion/IRemoteCompanionService$Stub;
.source "CompanionSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-direct {p0}, Lcom/google/glass/companion/IRemoteCompanionService$Stub;-><init>()V

    return-void
.end method

.method private handleCompanionInfo(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)V
    .locals 7
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 236
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v2

    iget-wide v0, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 237
    .local v0, "requestId":J
    const-string v2, "No messenger specified for request id = %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2, v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Adding messenger for request id = %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$400(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Landroid/util/LruCache;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$100(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$200(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Lcom/google/glass/companion/Proto$Envelope;)V

    .line 242
    return-void
.end method

.method private handleLocationRequest(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)V
    .locals 8
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 257
    const-string v3, "null messenger in location request: [%s]"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {p2, v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v2

    .line 260
    .local v2, "request":Lcom/google/glass/companion/Proto$LocationRequest;
    iget-object v1, v2, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 261
    .local v1, "provider":Ljava/lang/String;
    iget v3, v2, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    packed-switch v3, :pswitch_data_0

    .line 305
    new-instance v3, Ljava/lang/IllegalArgumentException;

    iget v4, v2, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x36

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid request type for location request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :pswitch_0
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Requesting location update for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v4, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    monitor-enter v4

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v3, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    .line 267
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 268
    .local v0, "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 270
    .restart local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v3, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v3, v1, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    .line 275
    monitor-exit v4

    .line 302
    :goto_0
    return-void

    .line 275
    .end local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 279
    :pswitch_1
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Removing location update for %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v4, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    monitor-enter v4

    .line 282
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v3, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    .line 283
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    .restart local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    if-nez v0, :cond_1

    .line 285
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Got STOP_LISTENING request for unknown provider: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    monitor-exit v4

    goto :goto_0

    .line 301
    .end local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 288
    .restart local v0    # "locationRequestByMessenger":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/Messenger;Lcom/google/glass/companion/Proto$LocationRequest;>;"
    :cond_1
    :try_start_2
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 289
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Got STOP_LISTENING request for unknown messenger: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    monitor-exit v4

    goto :goto_0

    .line 293
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    :cond_3
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "No active messenger left for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iget-object v3, v3, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->locationRequestMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$100(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v3

    invoke-static {v3, v1, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    .line 301
    :goto_1
    monitor-exit v4

    goto :goto_0

    .line 299
    :cond_4
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v3, v1, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$500(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhotoG2C(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)V
    .locals 2
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;
    .param p2, "timelineId"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2$1;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method


# virtual methods
.method public ping()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$900(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->ping()V

    .line 367
    return-void
.end method

.method public send(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const-string v3, "Envelope"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Bundle;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 199
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "bundle contains envelope: [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const-string v3, "Messenger"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 203
    .local v1, "messenger":Landroid/os/Messenger;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->handleCompanionInfo(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)V

    .line 217
    .end local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v1    # "messenger":Landroid/os/Messenger;
    :cond_0
    :goto_0
    const-string v3, "Screencast_device"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    const-string v3, "Screencast_device"

    .line 219
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 218
    invoke-static {v4, v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$300(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 221
    :cond_1
    return-void

    .line 205
    .restart local v0    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .restart local v1    # "messenger":Landroid/os/Messenger;
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationRequestG2C()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->handleLocationRequest(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasPhotoG2C()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Timeline_id"

    .line 208
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    const-string v3, "Timeline_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "timelineId":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->handlePhotoG2C(Lcom/google/glass/companion/Proto$Envelope;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v2    # "timelineId":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$2;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$100(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->access$200(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Lcom/google/glass/companion/Proto$Envelope;)V

    goto :goto_0
.end method
