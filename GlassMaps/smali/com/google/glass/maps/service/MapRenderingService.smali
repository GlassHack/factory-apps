.class public Lcom/google/glass/maps/service/MapRenderingService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final AGGRESSIVE_EXIT_ENABLED:Z = false

.field private static final MAX_HEIGHT:I = 0x168

.field private static final MAX_WIDTH:I = 0x280

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final incoming:Landroid/os/Messenger;

.field private final tasks:Ljava/util/Map;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 166
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 167
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->tasks:Ljava/util/Map;

    .line 171
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/maps/service/MapRenderingService$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/service/MapRenderingService$1;-><init>(Lcom/google/glass/maps/service/MapRenderingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->incoming:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/glass/maps/service/MapRenderingService;->getRequestString(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/service/MapRenderingService;->sendResponse(Landroid/os/Messenger;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/glass/maps/service/MapRenderingService;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method private exitProcessIfIdle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getNavigationManager()Lcom/google/glass/maps/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationManager;->isRouteInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Exiting navigation process"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->destroy()V

    .line 211
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not exiting process due to active navigation"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getRequestString(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasCenter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getCenter()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getCenter()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasZoom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLatSpan()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLngSpan()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 219
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    .line 229
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Message did not have replyTo."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid incoming message!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    :try_start_1
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getType()I

    move-result v2

    .line 239
    new-instance v3, Lcom/google/glass/maps/service/UriParser;

    invoke-direct {v3}, Lcom/google/glass/maps/service/UriParser;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/maps/service/UriParser;->parse(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 241
    invoke-virtual {v0, v2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :cond_2
    invoke-static {v0}, Lcom/google/glass/maps/service/MapRenderingService;->isValidRequest(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 257
    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid request: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 259
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v7}, Lcom/google/glass/maps/service/MapRenderingService;->sendResponse(Landroid/os/Messenger;Ljava/lang/String;[B)V

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 243
    sget-object v2, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error parsing URI"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v7}, Lcom/google/glass/maps/service/MapRenderingService;->sendResponse(Landroid/os/Messenger;Ljava/lang/String;[B)V

    goto :goto_0

    .line 250
    :cond_3
    throw v0

    .line 263
    :cond_4
    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received request %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/maps/service/MapRenderingService;->getRequestString(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 267
    new-instance v1, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;-><init>(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService;->tasks:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService;->executor:Ljava/util/concurrent/ExecutorService;

    new-array v3, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 273
    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService;->tasks:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, v6}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->cancel(Z)Z

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isValidRequest(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 302
    if-nez p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getWidth()I

    move-result v2

    const/16 v3, 0x280

    if-gt v2, v3, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getHeight()I

    move-result v2

    const/16 v3, 0x168

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method private sendResponse(Landroid/os/Messenger;Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 285
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->tasks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    .line 287
    iput-object p2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    .line 288
    if-eqz p3, :cond_0

    .line 289
    invoke-virtual {v0, p3}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->setImage([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    .line 291
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "payload"

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 294
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to deliver response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->incoming:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 188
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/maps/service/MapRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/maps/service/MapRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/NavigationApplicationState;->initialize(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 201
    return-void
.end method
