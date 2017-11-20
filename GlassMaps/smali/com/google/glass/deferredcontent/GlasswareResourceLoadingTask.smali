.class public abstract Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# static fields
.field static final CACHE_INTERRUPTED_RETRY_DELAY_MS:J

.field static final CACHE_RETRY_DELAY_MS:J

.field static final CACHE_VALIDATION_INTERVAL_MS:J

.field private static final MAX_CACHE_ENTRIES:I = 0x40

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;

.field public static final SHARED_CACHE:Landroid/util/LruCache;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cacheFilename:Ljava/lang/String;

.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final clock:Lcom/google/glass/time/Clock;

.field private entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

.field private final projectId:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final resourceType:I

.field private final sharedCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;

    invoke-direct {v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_INTERRUPTED_RETRY_DELAY_MS:J

    .line 74
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 147
    iput-object p2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 148
    iput-object p3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 149
    iput-object p4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    .line 150
    iput-object p5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    .line 151
    iput-object p6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 152
    iput-object p7, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    .line 153
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p8}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->getFilenameSuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    .line 154
    iput p8, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 155
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    return v0
.end method

.method private downloadResourceAndUpdateValidationTime()V
    .locals 7

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResource()J

    move-result-wide v0

    .line 265
    sget-object v2, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Will request %s:%s again in %dms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    .line 267
    return-void
.end method

.method static getFilenameSuffix(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 160
    :pswitch_0
    const-string v0, "LARGE"

    .line 168
    :goto_0
    return-object v0

    .line 162
    :pswitch_1
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 164
    :pswitch_2
    const-string v0, "SMALL"

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v0, "MESSAGES"

    goto :goto_0

    .line 168
    :pswitch_4
    const-string v0, "STYLESHEET"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private loadFromDiskCache()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/FileType;->GLASSWARE_ICON:Lcom/google/glass/util/FileType;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 341
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v1

    .line 347
    :goto_0
    return v0

    .line 344
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    .line 345
    array-length v3, v2

    invoke-static {v0, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->a([B)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 347
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private populateCacheEntry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/FileType;->GLASSWARE_ICON:Lcom/google/glass/util/FileType;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to load from cache: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    new-array v1, v4, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 255
    :cond_1
    return-void
.end method

.method private saveToDiskCache(J[B)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/FileType;->GLASSWARE_ICON:Lcom/google/glass/util/FileType;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;-><init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 333
    return-void
.end method


# virtual methods
.method protected abstract bindContent(Ljava/lang/Object;)V
.end method

.method protected dispatchRequest(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;)Lcom/google/glass/net/ProtoResponse;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v2, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    return-object v0
.end method

.method downloadResource()J
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 272
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting resource: %s:%s, fingerprint=%s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 272
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-instance v1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    .line 276
    iget v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setType(I)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 277
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 278
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 280
    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->dispatchRequest(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getStatus()I

    move-result v1

    if-nez v1, :cond_2

    .line 292
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->hasFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    sget-object v1, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "New resource: %s:%s, fingerprint=%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getFingerprint()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 293
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getFingerprint()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getData()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    .line 299
    :goto_0
    sget-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 307
    :goto_1
    return-wide v0

    .line 287
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Request interrupted: %s:%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    sget-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_INTERRUPTED_RETRY_DELAY_MS:J

    goto :goto_1

    .line 297
    :cond_1
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No update: %s:%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getStatus()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 302
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Resource not found: %s:%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const-wide/16 v0, 0x0

    new-array v2, v5, [B

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    .line 304
    sget-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    goto :goto_1

    .line 306
    :cond_3
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Request failed: %s:%s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    sget-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    goto :goto_1
.end method

.method protected final loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 200
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    if-nez v0, :cond_4

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 202
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v0, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 205
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->populateCacheEntry()V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->waitForDecodedData()Ljava/lang/Object;

    move-result-object v0

    .line 214
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getNextValidationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;

    invoke-direct {v3, p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;-><init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 234
    :cond_3
    sget-object v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Already updating resource: %s:%s, fingerprint=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v6, v5, v2

    iget v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    .line 234
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected final loadContentFromCache()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 179
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$100(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_0
    monitor-exit v1

    .line 183
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
.end method

.method protected abstract prepareContent(F)V
.end method

.method setEntryForTest(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)V
    .locals 0

    .prologue
    .line 352
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 353
    iput-object p1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 354
    return-void
.end method
