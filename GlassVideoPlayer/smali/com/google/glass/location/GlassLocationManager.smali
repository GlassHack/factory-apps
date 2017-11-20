.class public Lcom/google/glass/location/GlassLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_LEVEL_ID:Ljava/lang/String; = "levelId"

.field public static final EXTRA_LEVEL_NUMBER_E3:Ljava/lang/String; = "levelNumberE3"

.field public static final EXTRA_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final EXTRA_SATELLITES_USED_IN_FIX:Ljava/lang/String; = "satellites"

.field public static final EXTRA_VISIBLE_SATELLITES:Ljava/lang/String; = "visible_satellites"

.field public static final REMOTE_GPS_PROVIDER:Ljava/lang/String; = "remote_gps"

.field public static final REMOTE_NETWORK_PROVIDER:Ljava/lang/String; = "remote_network"

.field private static instance:Lcom/google/glass/location/GlassLocationManager;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final incoming:Landroid/os/Messenger;

.field private final lastKnownLocations:Ljava/util/Map;

.field private final listeners:Ljava/util/ArrayList;

.field private nextListenerId:I

.field private outgoing:Landroid/os/Messenger;

.field private final systemLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/Map;

    .line 150
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    .line 152
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/GlassLocationManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/location/GlassLocationManager$1;-><init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->incoming:Landroid/os/Messenger;

    .line 159
    new-instance v0, Lcom/google/glass/location/GlassLocationManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GlassLocationManager$2;-><init>(Lcom/google/glass/location/GlassLocationManager;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    .line 174
    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    .line 175
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->systemLocationManager:Landroid/location/LocationManager;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/location/GlassLocationManager;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private declared-synchronized connectIfNecessary()V
    .locals 5

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 181
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Opening connection to LocationService from: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    sget-object v1, Lcom/google/glass/location/LocationConstants;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "bindService() failed. Remaining disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/google/glass/location/GlassLocationManager;
    .locals 3

    .prologue
    .line 128
    const-class v1, Lcom/google/glass/location/GlassLocationManager;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "GlassLocationManager was not initialised."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {v0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    .line 134
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    return-object v0
.end method

.method private declared-synchronized handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 254
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 255
    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Connected to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    .line 257
    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 260
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->incoming:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 263
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 264
    const-string v3, "name"

    iget-object v4, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 266
    invoke-direct {p0, v1}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(Landroid/os/Message;)V

    move v1, v0

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 270
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    iget-object v0, v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 272
    :cond_0
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleDisconnection()V
    .locals 3

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 277
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disconnected from LocationService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 284
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 301
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unhandled message type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_0
    return-void

    .line 288
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->snapshotListeners()[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 293
    iget-object v6, v5, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v6}, Lcom/google/glass/location/LocationRequest;->getListenerId()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 294
    iget-object v5, v5, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    invoke-interface {v5, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 117
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/location/GlassLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    .line 122
    :cond_0
    return-void
.end method

.method private sendMessage(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 313
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 314
    invoke-direct {p0, v0}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(Landroid/os/Message;)V

    .line 315
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-eq v0, v1, :cond_0

    .line 320
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dropping message: %s, state: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    .line 321
    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v3, v2, v5

    .line 320
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    .line 337
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sending message: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 330
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "RemoteException sending message: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    .line 333
    invoke-static {v3}, Lcom/google/glass/location/LocationConstants;->messageTypeToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 332
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->handleDisconnection()V

    .line 335
    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->connectIfNecessary()V

    goto :goto_0
.end method

.method public static setInstanceForTest(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0

    .prologue
    .line 142
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 143
    sput-object p0, Lcom/google/glass/location/GlassLocationManager;->instance:Lcom/google/glass/location/GlassLocationManager;

    .line 144
    return-void
.end method

.method private declared-synchronized snapshotListeners()[Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/location/GlassLocationManager$ListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized disconnect()V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 246
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disconnecting..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IntentSender;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 248
    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->connectionState:Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 230
    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->systemLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 232
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v1, v0

    .line 236
    goto :goto_0

    .line 240
    :cond_2
    :try_start_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUpdates(Landroid/location/LocationListener;)V
    .locals 3

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    iget-object v0, v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->listener:Landroid/location/LocationListener;

    if-ne v0, p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    .line 222
    const/4 v2, 0x3

    iget-object v0, v0, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 225
    :cond_1
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 8

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;

    new-instance v0, Lcom/google/glass/location/LocationRequest;

    .line 209
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget v2, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/glass/location/GlassLocationManager;->nextListenerId:I

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/LocationRequest;-><init>(IILjava/lang/String;JF)V

    invoke-direct {v7, v0, p5}, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;-><init>(Lcom/google/glass/location/LocationRequest;Landroid/location/LocationListener;)V

    .line 211
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const/4 v0, 0x2

    iget-object v1, v7, Lcom/google/glass/location/GlassLocationManager$ListenerRecord;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/glass/location/LocationRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/GlassLocationManager;->sendMessage(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastKnownLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 342
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->lastKnownLocations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void
.end method
