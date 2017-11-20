.class public Lcom/google/glass/sync/HtmlItemPreProcessor;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final JAVASCRIPT_TIMEOUT_SEC:J = 0x5L

.field private static final MAX_SYNC_SIZE_TO_PROCESS_ALL:I = 0xb

.field private static final PRE_PROCESS_TIME_THRESHOLD:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "glass_sync"

    .line 41
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/HtmlItemPreProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/HtmlItemPreProcessor;->PRE_PROCESS_TIME_THRESHOLD:J

    .line 59
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/sync/HtmlItemPreProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 60
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 59
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/HtmlItemPreProcessor;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedBitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 73
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/sync/HtmlItemPreProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/HtmlItemPreProcessor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/HtmlItemPreProcessor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/HtmlItemPreProcessor;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/HtmlItemPreProcessor;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method private createAsyncTask(Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    new-instance v0, Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/sync/HtmlItemPreProcessor$1;-><init>(Lcom/google/glass/sync/HtmlItemPreProcessor;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method filterItemsToProcess(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xb

    if-gt v6, v7, :cond_0

    .line 95
    .end local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :goto_0
    return-object p1

    .line 87
    .restart local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, "now":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 90
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v6

    sub-long v4, v2, v6

    .line 91
    .local v4, "timeDelta":J
    sget-wide v6, Lcom/google/glass/sync/HtmlItemPreProcessor;->PRE_PROCESS_TIME_THRESHOLD:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "timeDelta":J
    :cond_2
    move-object p1, v0

    .line 95
    goto :goto_0
.end method

.method public processItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    sget-object v0, Lcom/google/glass/sync/HtmlItemPreProcessor;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/google/glass/sync/HtmlItemPreProcessor;->createAsyncTask(Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
