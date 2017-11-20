.class public abstract Lcom/google/glass/userevent/UserEventService;
.super Landroid/app/Service;
.source "UserEventService.java"


# static fields
.field public static final EVENT_BATCH_SIZE:I = 0x3e8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final GET_SESSION_ID_PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_QUEUE_FILE_SIZE:J = 0xa00000L

.field private static final MAX_USER_EVENT_PROTO_SIZE:I = 0x100000

.field private static final QUEUE_FILE:Ljava/lang/String; = "user_events_1"

.field private static final REPORT_USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIAL_FILE:Ljava/lang/String; = "serial"

.field private static final TIME_BETWEEN_FLUSHES_MS:J

.field private static final USER_EVENT_LOGGING_STRING_SIZE:I = 0x80

.field private static final USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private executorThread:Ljava/lang/Thread;

.field private queueFile:Lcom/google/glass/protobuf/ProtoListFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoListFile",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field protected requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private serial:Lcom/google/glass/userevent/PersistedLong;

.field protected userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 56
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/userevent/UserEventService$1;

    invoke-direct {v1}, Lcom/google/glass/userevent/UserEventService$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventService;->USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 65
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/userevent/UserEventService$2;

    invoke-direct {v1}, Lcom/google/glass/userevent/UserEventService$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventService;->GET_SESSION_ID_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 74
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/userevent/UserEventService$3;

    invoke-direct {v1}, Lcom/google/glass/userevent/UserEventService$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/userevent/UserEventService;->REPORT_USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 111
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/userevent/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/userevent/UserEventService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executorThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/userevent/UserEventService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService;->executorThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UserEventService;)Lcom/google/glass/protobuf/ProtoListFile;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/userevent/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventService;
    .param p1, "x1"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/userevent/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/userevent/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UserEventService;
    .param p1, "x1"    # [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/userevent/UserEventService;->addToQueue([Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    return-void
.end method

.method private addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 8
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    const/4 v7, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->checkThread()V

    .line 443
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v3, v7}, Lcom/google/glass/protobuf/ProtoListFile;->size(Z)J

    move-result-wide v1

    .line 444
    .local v1, "queueFileSize":J
    const-wide/32 v3, 0xa00000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 447
    sget-object v3, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Throwing away log event because queue is full: %d bytes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v3, v3, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventPreferences;->getQueueFullCount()I

    move-result v0

    .line 452
    .local v0, "eventQueueFullCount":I
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/google/glass/userevent/UserEventPreferences;->setQueueFullCount(I)V

    .line 459
    .end local v0    # "eventQueueFullCount":I
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v3, p1}, Lcom/google/glass/protobuf/ProtoListFile;->write(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0
.end method

.method private varargs addToQueue([Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 3
    .param p1, "events"    # [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 430
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 431
    .local v0, "event":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-direct {p0, v0}, Lcom/google/glass/userevent/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "event":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_0
    return-void
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 662
    invoke-static {}, Lcom/google/glass/util/SystemServiceWrapper;->getInstance()Lcom/google/glass/util/SystemServiceWrapper;

    move-result-object v2

    const-string v3, "connectivity"

    .line 663
    invoke-virtual {v2, p0, v3}, Lcom/google/glass/util/SystemServiceWrapper;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 664
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 665
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendBlockingGetSessionIdRequest()V
    .locals 5

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    new-instance v2, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    sget-object v3, Lcom/google/glass/userevent/UserEventService;->GET_SESSION_ID_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    new-instance v4, Lcom/google/glass/userevent/UserEventService$9;

    invoke-direct {v4, p0}, Lcom/google/glass/userevent/UserEventService$9;-><init>(Lcom/google/glass/userevent/UserEventService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 571
    return-void
.end method

.method private varargs sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;I[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 8
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "softwareVersion"    # Ljava/lang/String;
    .param p3, "source"    # I
    .param p4, "events"    # [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    const/4 v3, 0x0

    .line 612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 615
    array-length v0, p4

    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    new-instance v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    .line 621
    .local v2, "request":Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    iput-object p4, v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 622
    invoke-virtual {v2, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 623
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setSoftwareVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 624
    invoke-virtual {v2, p3}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setUserEventSource(I)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 626
    invoke-virtual {p0, v2}, Lcom/google/glass/userevent/UserEventService;->onPreReportAnnotation(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    move-result-object v2

    .line 628
    sget-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sending request with %d event(s)."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    const/4 v7, 0x0

    .line 632
    .local v7, "isImmediate":Z
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/userevent/UserEventService;->REPORT_USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    new-instance v5, Lcom/google/glass/userevent/UserEventService$10;

    invoke-direct {v5, p0, p4}, Lcom/google/glass/userevent/UserEventService$10;-><init>(Lcom/google/glass/userevent/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    move-result v6

    .line 652
    .local v6, "dispatched":Z
    if-nez v6, :cond_0

    .line 653
    sget-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to dispatch user event request. Will retry."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-direct {p0, p4}, Lcom/google/glass/userevent/UserEventService;->addToQueue([Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    goto :goto_0
.end method


# virtual methods
.method public addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 8
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->checkThread()V

    .line 398
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventSerial()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    if-nez v3, :cond_0

    .line 402
    new-instance v3, Lcom/google/glass/userevent/PersistedLong;

    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "serial"

    invoke-direct {v3, v4, v5}, Lcom/google/glass/userevent/PersistedLong;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    .line 404
    :cond_0
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    invoke-virtual {v3}, Lcom/google/glass/userevent/PersistedLong;->get()J

    move-result-wide v1

    .line 408
    .local v1, "value":J
    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    .line 409
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v3}, Lcom/google/glass/userevent/UserEventPreferences;->getSerial()J

    move-result-wide v1

    .line 413
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventSerial(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 416
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/glass/userevent/PersistedLong;->set(JZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-object p1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unexpected problem saving serial."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public batchReportUserEvents(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "softwareVersion"    # Ljava/lang/String;
    .param p3, "source"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    .line 577
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->checkThread()V

    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 583
    iget-object v4, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v4}, Lcom/google/glass/protobuf/ProtoListFile;->read()Ljava/util/List;

    move-result-object v3

    .line 589
    .local v3, "eventsToBatch":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    iget-object v4, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v4}, Lcom/google/glass/protobuf/ProtoListFile;->delete()V

    .line 592
    const/4 v1, 0x0

    .line 593
    .local v1, "eventIndex":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 594
    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    .local v0, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 596
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "eventIndex":I
    .local v2, "eventIndex":I
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2    # "eventIndex":I
    .restart local v1    # "eventIndex":I
    goto :goto_1

    .line 599
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 598
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/glass/userevent/UserEventService;->sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;I[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    goto :goto_0

    .line 601
    .end local v0    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    :cond_1
    return-void
.end method

.method protected abstract canFlushQueueNow(Z)Z
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 306
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->executorThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 310
    :cond_0
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearEventsForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 685
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v0}, Lcom/google/glass/protobuf/ProtoListFile;->delete()V

    .line 686
    return-void
.end method

.method public abstract getEnabledExperiments()[I
.end method

.method public getEventsForTest()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 679
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v0}, Lcom/google/glass/protobuf/ProtoListFile;->read()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIsDogfood()Z
.end method

.method public getLastFlushTimeForTest()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 699
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 700
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventPreferences;->getLastFlushTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getOrFetchSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->checkThread()V

    .line 552
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v1}, Lcom/google/glass/userevent/UserEventPreferences;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventService;->sendBlockingGetSessionIdRequest()V

    .line 555
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v1}, Lcom/google/glass/userevent/UserEventPreferences;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_0
    return-object v0
.end method

.method public getSerialForTest()J
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 711
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 712
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Lcom/google/glass/userevent/PersistedLong;

    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "serial"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/userevent/PersistedLong;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->serial:Lcom/google/glass/userevent/PersistedLong;

    invoke-virtual {v0}, Lcom/google/glass/userevent/PersistedLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getUserEventSource()I
.end method

.method protected log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    .locals 2
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .param p2, "forceFlush"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/userevent/UserEventService$8;-><init>(Lcom/google/glass/userevent/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 390
    return-void
.end method

.method public final logQueued(Z)V
    .locals 13
    .param p1, "forceFlush"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->checkThread()V

    .line 475
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, "currentTimeMillis":J
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v9}, Lcom/google/glass/userevent/UserEventPreferences;->getLastFlushTime()J

    move-result-wide v3

    .line 478
    .local v3, "lastFlushTime":J
    if-nez p1, :cond_1

    sub-long v9, v0, v3

    sget-wide v11, Lcom/google/glass/userevent/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v9}, Lcom/google/glass/protobuf/ProtoListFile;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 489
    invoke-virtual {p0, p1}, Lcom/google/glass/userevent/UserEventService;->canFlushQueueNow(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/userevent/UserEventService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 496
    sget-object v9, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Cannot send user events as there is no data connection."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getOrFetchSessionId()Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, "sessionId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 503
    sget-object v9, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Cannot send user events as we have no session ID."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 508
    :cond_3
    sget-object v9, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Attempting a user event log flush."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v9, v0, v1}, Lcom/google/glass/userevent/UserEventPreferences;->setLastFlushTime(J)V

    .line 512
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "softwareVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getUserEventSource()I

    move-result v7

    .line 517
    .local v7, "source":I
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v9}, Lcom/google/glass/userevent/UserEventPreferences;->getQueueFullCount()I

    move-result v2

    .line 518
    .local v2, "eventQueueFullCount":I
    if-lez v2, :cond_4

    .line 519
    new-instance v8, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 520
    .local v8, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v9, v9, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 521
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 522
    invoke-virtual {v8, v0, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventTimeMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 523
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    const/4 v10, 0x0

    invoke-virtual {p0, v8}, Lcom/google/glass/userevent/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/google/glass/userevent/UserEventService;->sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;I[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 526
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/glass/userevent/UserEventPreferences;->setQueueFullCount(I)V

    .line 530
    .end local v8    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_4
    if-eqz p1, :cond_5

    .line 531
    new-instance v8, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v8}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 532
    .restart local v8    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    iget-object v9, v9, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 533
    invoke-virtual {v8, v0, v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventTimeMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 534
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    const/4 v10, 0x0

    invoke-virtual {p0, v8}, Lcom/google/glass/userevent/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {p0, v5, v6, v7, v9}, Lcom/google/glass/userevent/UserEventService;->sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;I[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 539
    .end local v8    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_5
    invoke-virtual {p0, v5, v6, v7}, Lcom/google/glass/userevent/UserEventService;->batchReportUserEvents(Ljava/lang/String;Ljava/lang/String;I)V

    .line 542
    iget-object v9, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->flush()V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 177
    sget-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 181
    invoke-static {}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->getInstance()Lcom/google/glass/userevent/UserEventPreferences$Provider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    .line 184
    new-instance v0, Lcom/google/glass/userevent/UserEventService$4;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventService$4;-><init>(Lcom/google/glass/userevent/UserEventService;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 196
    new-instance v0, Lcom/google/glass/protobuf/ProtoListFile;

    const-string v2, "user_events_1"

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Lcom/google/glass/userevent/UserEventService;->USER_EVENT_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    const/high16 v5, 0x100000

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/protobuf/ProtoListFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/protobuf/ProtoParser;I)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    .line 201
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v6

    .line 202
    .local v6, "authUtils":Lcom/google/glass/auth/AuthUtils;
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    new-instance v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 203
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 207
    new-instance v0, Lcom/google/glass/userevent/UserEventService$5;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/userevent/UserEventService$5;-><init>(Lcom/google/glass/userevent/UserEventService;Ljava/lang/Runnable;)V

    .line 209
    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventService$5;->start()V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    sget-object v0, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->exit()V

    .line 230
    iput-object v3, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/userevent/UserEventService$6;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventService$6;-><init>(Lcom/google/glass/userevent/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 246
    iput-object v3, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 250
    :cond_1
    iput-object v3, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    .line 251
    return-void
.end method

.method public onPostLog(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 349
    return-void
.end method

.method public onPreLogAnnotation(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 0
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 337
    return-object p1
.end method

.method public onPreReportAnnotation(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 0
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .prologue
    .line 323
    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 255
    sget-object v5, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "onStartCommand, intent=%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    if-eqz p1, :cond_3

    .line 261
    :try_start_0
    const-string v5, "user_event"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "user_event"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 264
    .local v1, "event":[B
    invoke-static {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    .line 265
    .local v4, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-virtual {v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    sget-object v5, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "User event logging requested with empty action."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/glass/userevent/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v1    # "event":[B
    .end local v4    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_1
    :try_start_2
    const-string v5, "force_flush"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 278
    .local v2, "isFlushForced":Z
    if-eqz v2, :cond_2

    .line 279
    sget-object v5, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Scheduling log flush."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/google/glass/userevent/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    .line 284
    :cond_2
    const-string v5, "force_save_to_disk"

    const/4 v6, 0x0

    .line 285
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 286
    .local v3, "isSaveToDiskForced":Z
    if-eqz v3, :cond_3

    .line 287
    sget-object v5, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Scheduling flush to disk."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v5, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/google/glass/userevent/UserEventService$7;

    invoke-direct {v6, p0}, Lcom/google/glass/userevent/UserEventService$7;-><init>(Lcom/google/glass/userevent/UserEventService;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 301
    .end local v2    # "isFlushForced":Z
    .end local v3    # "isSaveToDiskForced":Z
    :cond_3
    :goto_0
    return v11

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v5, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Unable to parse user event proto"

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 297
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Lcom/google/glass/userevent/UserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Ender (or some other old apk) sent an incompatible proto: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v6, v0, v5, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setEventsForTest(Ljava/util/List;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 691
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v1}, Lcom/google/glass/protobuf/ProtoListFile;->delete()V

    .line 692
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 693
    .local v0, "event":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v2, p0, Lcom/google/glass/userevent/UserEventService;->queueFile:Lcom/google/glass/protobuf/ProtoListFile;

    invoke-virtual {v2, v0}, Lcom/google/glass/protobuf/ProtoListFile;->write(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 695
    .end local v0    # "event":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_0
    return-void
.end method

.method public setExecutorForTest(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 706
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 707
    return-void
.end method

.method public setRequestDispatcherForTest(Lcom/google/glass/net/ProtoRequestDispatcher;)Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .param p1, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 217
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 218
    .local v0, "swap":Lcom/google/glass/net/ProtoRequestDispatcher;
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 219
    return-object v0
.end method

.method public setSessionIdForTest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 670
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 671
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v1}, Lcom/google/glass/userevent/UserEventPreferences;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v1, p1}, Lcom/google/glass/userevent/UserEventPreferences;->setSessionId(Ljava/lang/String;)V

    .line 673
    return-object v0
.end method
