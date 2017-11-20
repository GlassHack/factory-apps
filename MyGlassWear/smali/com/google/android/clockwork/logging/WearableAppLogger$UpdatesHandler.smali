.class Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;
.super Landroid/os/Handler;
.source "WearableAppLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/logging/WearableAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatesHandler"
.end annotation


# static fields
.field public static final DATA_CHANGED:I = 0x3

.field public static final EVENT:I = 0x5

.field public static final INIT:I = 0x1

.field public static final PEER_CONNECTED:I = 0x4

.field public static final PUBLISH_ANDROID_ID:I = 0x2

.field public static final UPLOAD:I = 0x6


# instance fields
.field private mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

.field final synthetic this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    .line 200
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    return-void
.end method

.method private loadOtherPeerNode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 284
    iget-object v4, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v4}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/wearable/gmsclient/WearableClient;->getNodeManager()Lcom/google/android/wearable/gmsclient/NodeManager;

    move-result-object v1

    .line 287
    .local v1, "nm":Lcom/google/android/wearable/gmsclient/NodeManager;
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->getConnectedNodes()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 298
    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    const/4 v3, 0x0

    .line 299
    .local v3, "otherPeerId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 300
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/Node;

    invoke-interface {v4}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v3

    .line 313
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 315
    const-string v4, "WearableAppLogger"

    const-string v5, "Unable to load peer node."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v2    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    .end local v3    # "otherPeerId":Ljava/lang/String;
    :goto_1
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "WearableAppLogger"

    const-string v5, "failed to look up other nodes."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v4, "WearableAppLogger"

    const-string v5, "failed to look up other nodes."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v0    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    .restart local v2    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    .restart local v3    # "otherPeerId":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 303
    iget-object v4, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v4}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$300(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 304
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 308
    const-string v4, "WearableAppLogger"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    const-string v4, "WearableAppLogger"

    const-string v5, "loadOtherPeerNode: unrecognized mesh, too many nodes."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->updateOther(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private maybePublishAndroidId(J)V
    .locals 5
    .param p1, "androidId"    # J

    .prologue
    const/4 v4, 0x3

    .line 242
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 244
    const-string v2, "WearableAppLogger"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "WearableAppLogger"

    const-string v3, "maybePublishAndroidId: unknown android id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    const-string v2, "WearableAppLogger"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const-string v2, "WearableAppLogger"

    const-string v3, "maybePublishAndroidId: publishing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    invoke-static {}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/PutDataMapRequest;->create(Ljava/lang/String;)Lcom/google/android/gms/wearable/PutDataMapRequest;

    move-result-object v1

    .line 258
    .local v1, "put":Lcom/google/android/gms/wearable/PutDataMapRequest;
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    const-string v3, "component"

    iget-object v4, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v4}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$700(Lcom/google/android/clockwork/logging/WearableAppLogger;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V

    .line 260
    iget-object v2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v2}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v0

    .line 261
    .local v0, "dm":Lcom/google/android/wearable/gmsclient/DataManager;
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/PutDataMapRequest;->asPutDataRequest()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;-><init>(Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;J)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/wearable/gmsclient/DataManager;->putDataItemAsync(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V

    .line 281
    return-void

    .line 247
    .end local v0    # "dm":Lcom/google/android/wearable/gmsclient/DataManager;
    .end local v1    # "put":Lcom/google/android/gms/wearable/PutDataMapRequest;
    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v2}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$500(Lcom/google/android/clockwork/logging/WearableAppLogger;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 249
    const-string v2, "WearableAppLogger"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "WearableAppLogger"

    const-string v3, "maybePublishAndroidId: already published"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendLogEvent(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)V
    .locals 8
    .param p1, "event"    # Lcom/google/android/clockwork/logging/WearableAppLogger$Event;

    .prologue
    .line 342
    invoke-static {p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->access$1000(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$700(Lcom/google/android/clockwork/logging/WearableAppLogger;)I

    move-result v1

    iput v1, v0, Lcom/google/common/logging/Cw$CwEvent;->component:I

    .line 344
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v0}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$900(Lcom/google/android/clockwork/logging/WearableAppLogger;)J

    move-result-wide v6

    .line 345
    .local v6, "otherAndroidId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->access$1000(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v0

    iput-wide v6, v0, Lcom/google/common/logging/Cw$CwEvent;->otherAndroidId:J

    .line 349
    :cond_0
    const-string v0, "WearableAppLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const-string v0, "WearableAppLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLogEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->access$1000(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    invoke-static {p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->access$1000(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)Lcom/google/common/logging/Cw$CwEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 354
    .local v4, "cwEventBytes":[B
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Lcom/google/android/gms/playlog/OneTimePlayLogger;

    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/OneTimePlayLogger;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

    invoke-static {p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;->access$1100(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v3}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$1200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/playlog/OneTimePlayLogger;->cacheLogEvent(JLjava/lang/String;[B[Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x6

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 361
    return-void
.end method

.method private updateOther(Ljava/lang/String;)V
    .locals 6
    .param p1, "otherPeerId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 323
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1, p1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$302(Lcom/google/android/clockwork/logging/WearableAppLogger;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$100(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "other_peer_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$400(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataMapItem;

    .line 329
    .local v0, "mPeerSettings":Lcom/google/android/gms/wearable/DataMapItem;
    if-eqz v0, :cond_2

    .line 330
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/DataMapItem;->getDataMap()Lcom/google/android/gms/wearable/DataMap;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/DataMap;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$902(Lcom/google/android/clockwork/logging/WearableAppLogger;J)J

    .line 334
    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$900(Lcom/google/android/clockwork/logging/WearableAppLogger;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    .line 335
    const-string v1, "WearableAppLogger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "WearableAppLogger"

    const-string v2, "Updated other android id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1, v4, v5}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$902(Lcom/google/android/clockwork/logging/WearableAppLogger;J)J

    goto :goto_1
.end method

.method private upload()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/OneTimePlayLogger;->send()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->mLogger:Lcom/google/android/gms/playlog/OneTimePlayLogger;

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 205
    const-string v6, "WearableAppLogger"

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    const-string v6, "WearableAppLogger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v9, :cond_2

    .line 209
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    iget-object v7, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "logging"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$102(Lcom/google/android/clockwork/logging/WearableAppLogger;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 210
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    iget-object v7, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$100(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "other_peer_id"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$302(Lcom/google/android/clockwork/logging/WearableAppLogger;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v6}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 212
    .local v0, "androidId":J
    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->maybePublishAndroidId(J)V

    .line 213
    invoke-direct {p0}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->loadOtherPeerNode()V

    .line 239
    .end local v0    # "androidId":J
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v10, :cond_3

    .line 216
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v6}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7, v12, v13}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 217
    .restart local v0    # "androidId":J
    invoke-direct {p0, v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->maybePublishAndroidId(J)V

    goto :goto_0

    .line 219
    .end local v0    # "androidId":J
    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 220
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/wearable/Node;

    invoke-interface {v6}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->updateOther(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_4
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v11, :cond_8

    .line 224
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 225
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/DataEvent;

    .line 226
    .local v3, "event":Lcom/google/android/gms/wearable/DataEvent;
    invoke-interface {v3}, Lcom/google/android/gms/wearable/DataEvent;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/wearable/DataMapItem;->fromDataItem(Lcom/google/android/gms/wearable/DataItem;)Lcom/google/android/gms/wearable/DataMapItem;

    move-result-object v2

    .line 227
    .local v2, "dataItem":Lcom/google/android/gms/wearable/DataMapItem;
    invoke-interface {v3}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 228
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v6}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$400(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/DataMapItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_6
    invoke-interface {v3}, Lcom/google/android/gms/wearable/DataEvent;->getType()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 230
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v6}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$400(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/DataMapItem;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 233
    .end local v2    # "dataItem":Lcom/google/android/gms/wearable/DataMapItem;
    .end local v3    # "event":Lcom/google/android/gms/wearable/DataEvent;
    :cond_7
    iget-object v6, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v6}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$300(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->updateOther(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9

    .line 235
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;

    invoke-direct {p0, v6}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendLogEvent(Lcom/google/android/clockwork/logging/WearableAppLogger$Event;)V

    goto/16 :goto_0

    .line 236
    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->upload()V

    goto/16 :goto_0
.end method
