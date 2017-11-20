.class public abstract Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "GlasswareResourceLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<TResult;>;"
    }
.end annotation


# static fields
.field static final CACHE_INTERRUPTED_RETRY_DELAY_MS:J

.field static final CACHE_RETRY_DELAY_MS:J

.field static final CACHE_VALIDATION_INTERVAL_MS:J

.field private static final MAX_CACHE_ENTRIES:I = 0x40

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cacheFilename:Ljava/lang/String;

.field private final cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

.field private final clock:Lcom/google/glass/time/Clock;

.field private entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final projectId:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final resourceType:I

.field private final sharedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;

    invoke-direct {v1}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_INTERRUPTED_RETRY_DELAY_MS:J

    .line 72
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/io/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedFilesManager"    # Lcom/google/glass/io/CachedFilesManager;
    .param p3, "requestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p5, "clock"    # Lcom/google/glass/time/Clock;
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "projectId"    # Ljava/lang/String;
    .param p8, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/io/CachedFilesManager;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;",
            "Lcom/google/glass/time/Clock;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    .local p4, "sharedCache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 145
    iput-object p2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    .line 146
    iput-object p3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 147
    iput-object p4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    .line 148
    iput-object p5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    .line 149
    iput-object p6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 150
    iput-object p7, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    .line 151
    invoke-static {p8}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->getFilenameSuffix(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    .line 152
    iput p8, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 153
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    return v0
.end method

.method private downloadResourceAndUpdateValidationTime()V
    .locals 7

    .prologue
    .line 262
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResource()J

    move-result-wide v0

    .line 263
    .local v0, "nextDelay":J
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

    .line 264
    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    .line 265
    return-void
.end method

.method static getFilenameSuffix(I)Ljava/lang/String;
    .locals 3
    .param p0, "resourceType"    # I

    .prologue
    .line 156
    packed-switch p0, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/AssertionError;

    const/16 v1, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown resource type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 158
    :pswitch_0
    const-string v0, "LARGE"

    .line 166
    :goto_0
    return-object v0

    .line 160
    :pswitch_1
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "SMALL"

    goto :goto_0

    .line 164
    :pswitch_3
    const-string v0, "MESSAGES"

    goto :goto_0

    .line 166
    :pswitch_4
    const-string v0, "STYLESHEET"

    goto :goto_0

    .line 156
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
    .locals 8

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 338
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v4, Lcom/google/glass/io/FileType;->GLASSWARE_ICON:Lcom/google/glass/io/FileType;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v6, Lcom/google/glass/io/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v6}, Lcom/google/glass/io/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/io/CachedFilesManager;->load(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 339
    .local v0, "fileData":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v7, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v2

    .line 342
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    new-array v1, v3, [B

    .line 343
    .local v1, "resourceData":[B
    array-length v3, v1

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 345
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private populateCacheEntry()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v4, 0x0

    .line 245
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v1, Lcom/google/glass/io/FileType;->GLASSWARE_ICON:Lcom/google/glass/io/FileType;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    sget-object v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to load from cache: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    new-array v1, v4, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 253
    :cond_1
    return-void
.end method

.method private saveToDiskCache(J[B)V
    .locals 5
    .param p1, "fingerprint"    # J
    .param p3, "data"    # [B

    .prologue
    .line 319
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v1, Lcom/google/glass/io/FileType;->GLASSWARE_ICON:Lcom/google/glass/io/FileType;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$3;-><init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    .line 331
    return-void
.end method


# virtual methods
.method protected abstract bindContent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected dispatchRequest(Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;)Lcom/google/glass/net/ProtoResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;",
            ")",
            "Lcom/google/glass/net/ProtoResponse",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v2, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    return-object v0
.end method

.method downloadResource()J
    .locals 16
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v15, 0x3

    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 270
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Requesting resource: %s:%s, fingerprint=%s"

    new-array v8, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 271
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v9}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v13

    .line 270
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    new-instance v4, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;-><init>()V

    .line 274
    .local v4, "request":Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-virtual {v4, v6}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->setType(I)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 275
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v6}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;->setFingerprint(J)Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;

    .line 278
    const/4 v5, 0x0

    .line 280
    .local v5, "response":Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->dispatchRequest(Lcom/google/googlex/glass/common/proto/nano/ResourceRequest;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v3

    .line 281
    .local v3, "r":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;>;"
    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v3}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 290
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->hasData()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->hasFingerprint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "New resource: %s:%s, fingerprint=%s"

    new-array v8, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 292
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->getFingerprint()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v13

    .line 291
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->getFingerprint()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->getData()[B

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    .line 297
    :goto_0
    sget-wide v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 305
    .end local v3    # "r":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;>;"
    :goto_1
    return-wide v6

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Request interrupted: %s:%s"

    new-array v8, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    sget-wide v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_INTERRUPTED_RETRY_DELAY_MS:J

    goto :goto_1

    .line 295
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "r":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;>;"
    :cond_1
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "No update: %s:%s"

    new-array v8, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ResourceResponse;->getStatus()I

    move-result v6

    if-ne v6, v13, :cond_3

    .line 300
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Resource not found: %s:%s"

    new-array v8, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    const-wide/16 v6, 0x0

    new-array v8, v12, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    .line 302
    sget-wide v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    goto :goto_1

    .line 304
    :cond_3
    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Request failed: %s:%s"

    new-array v8, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v9, v8, v12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    sget-wide v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    goto :goto_1
.end method

.method protected final loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 10
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/Condition;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 189
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    const/4 v0, 0x0

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    const/4 v2, 0x0

    .line 196
    .local v2, "isNewEntry":Z
    iget-object v4, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 198
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    if-nez v3, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 200
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3, v5, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v2, 0x1

    .line 203
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-eqz v2, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->populateCacheEntry()V

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->waitForDecodedData()Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "bitmap":Ljava/lang/Object;, "TResult;"
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getNextValidationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 217
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;

    invoke-direct {v4, p0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$2;-><init>(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v3}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 203
    .end local v0    # "bitmap":Ljava/lang/Object;, "TResult;"
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 232
    .restart local v0    # "bitmap":Ljava/lang/Object;, "TResult;"
    :cond_4
    sget-object v3, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Already updating resource: %s:%s, fingerprint=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->resourceType:I

    .line 233
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v7}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 232
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected final loadContentFromCache()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 177
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;->access$100(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 181
    :goto_0
    return-object v0

    .line 180
    :cond_0
    monitor-exit v1

    .line 181
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract newCacheEntry()Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end method

.method protected abstract prepareContent()V
.end method

.method setEntryForTest(Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask<TResult;>;"
    .local p1, "entry":Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;, "Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry<TResult;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 351
    iput-object p1, p0, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask$CacheEntry;

    .line 352
    return-void
.end method
