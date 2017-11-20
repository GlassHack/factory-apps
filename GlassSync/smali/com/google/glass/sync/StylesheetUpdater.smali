.class public Lcom/google/glass/sync/StylesheetUpdater;
.super Ljava/lang/Object;
.source "StylesheetUpdater.java"


# static fields
.field private static final MIN_UPDATE_INTERVAL_MS:J

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final application:Landroid/content/Context;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private lastUpdateElapsedRealtime:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/sync/StylesheetUpdater$1;

    invoke-direct {v1}, Lcom/google/glass/sync/StylesheetUpdater$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/sync/StylesheetUpdater;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/StylesheetUpdater;->MIN_UPDATE_INTERVAL_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "glass_sync"

    .line 29
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    sget-wide v0, Lcom/google/glass/sync/StylesheetUpdater;->MIN_UPDATE_INTERVAL_MS:J

    neg-long v0, v0

    iput-wide v0, p0, Lcom/google/glass/sync/StylesheetUpdater;->lastUpdateElapsedRealtime:J

    .line 47
    iput-object p1, p0, Lcom/google/glass/sync/StylesheetUpdater;->application:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/glass/sync/StylesheetUpdater;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/StylesheetUpdater;Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetUpdater;
    .param p1, "x1"    # Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/sync/StylesheetUpdater;->handleResponse(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/sync/StylesheetUpdater;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetUpdater;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/StylesheetUpdater;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetUpdater;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getFingerprint()J
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater;->application:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/stylesheet/StylesheetProviderConstants;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 120
    .local v7, "fingerprint":J
    if-eqz v6, :cond_1

    .line 122
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 126
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    return-wide v7

    .line 126
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleResponse(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
    .locals 8
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 93
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/sync/StylesheetUpdater;->lastUpdateElapsedRealtime:J

    .line 96
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getFingerprint()J

    move-result-wide v0

    .line 98
    .local v0, "fingerprint":J
    iget-object v2, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Stylesheet updated! fingerprint=%#X, size=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    .line 98
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getData()[B

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/sync/StylesheetUpdater;->writeStylesheet([BJ)V

    .line 107
    .end local v0    # "fingerprint":J
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No change."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Update failed: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeStylesheet([BJ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "fingerprint"    # J

    .prologue
    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "stylesheet_blob"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 112
    const-string v1, "stylesheet_fingerprint"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    iget-object v1, p0, Lcom/google/glass/sync/StylesheetUpdater;->application:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/glass/stylesheet/StylesheetProviderConstants;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 114
    return-void
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/google/glass/sync/StylesheetUpdater;->lastUpdateElapsedRealtime:J

    sub-long v8, v4, v10

    .line 58
    .local v8, "msSinceLastUpdate":J
    sget-wide v4, Lcom/google/glass/sync/StylesheetUpdater;->MIN_UPDATE_INTERVAL_MS:J

    cmp-long v1, v8, v4

    if-gez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Skipping update, last update was %s sec ago"

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-interface {v1, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/sync/StylesheetUpdater;->getFingerprint()J

    move-result-wide v6

    .line 64
    .local v6, "fingerprint":J
    iget-object v1, p0, Lcom/google/glass/sync/StylesheetUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Checking for stylesheet update, fingerprint=%#X"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v12

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v2, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    .line 66
    .local v2, "request":Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setType(I)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 67
    const-string v1, "base_style_kitkat_1.css"

    invoke-virtual {v2, v1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 68
    invoke-virtual {v2, v6, v7}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 70
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 72
    .local v0, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/sync/StylesheetUpdater;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    new-instance v5, Lcom/google/glass/sync/StylesheetUpdater$2;

    invoke-direct {v5, p0}, Lcom/google/glass/sync/StylesheetUpdater$2;-><init>(Lcom/google/glass/sync/StylesheetUpdater;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    goto :goto_0
.end method
