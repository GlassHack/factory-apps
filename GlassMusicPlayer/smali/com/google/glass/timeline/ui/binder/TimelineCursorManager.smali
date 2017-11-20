.class public Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader;
.source "SourceFile"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# static fields
.field private static final DESCENDING_HINTS:[I

.field private static final ITEM_CACHE_SIZE:I = 0xa

.field private static final LINEAR_SEARCH_MAX_ITERATIONS:I = 0x64

.field private static final POSITION_CACHE_SIZE:I = 0x64

.field private static final ROW_ID_CACHE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private cursorCount:J

.field private final cursorLock:Ljava/util/concurrent/locks/Lock;

.field private descDisplayTime:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private itemCache:Landroid/util/LruCache;

.field private positionCache:Landroid/util/LruCache;

.field private rowIdCache:Landroid/util/LruCache;

.field private final serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->DESCENDING_HINTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 75
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;-><init>()V

    .line 42
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->executor:Ljava/util/concurrent/Executor;

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    .line 50
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    .line 55
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    .line 60
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->rowIdCache:Landroid/util/LruCache;

    .line 76
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 77
    iput-boolean p1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->descDisplayTime:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private setCursor(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 298
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 300
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 302
    :try_start_0
    iput-object p1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    .line 303
    iget-wide v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorCount:J

    .line 304
    sget-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received updated cursor: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorCount:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->itemCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 308
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 309
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->rowIdCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    return-void

    .line 311
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 7

    .prologue
    .line 169
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 172
    iget-wide v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorCount:J

    .line 175
    iget-object v6, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager$1;-><init>(Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;JILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 6

    .prologue
    .line 91
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 92
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 99
    if-nez v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->descDisplayTime:Z

    if-eqz v0, :cond_2

    .line 104
    sget-object v5, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->DESCENDING_HINTS:[I

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getDisplayTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    iget-boolean v4, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->descDisplayTime:Z

    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->binarySearch(Ljava/lang/String;JLandroid/database/Cursor;Z[I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    .line 115
    sget-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not find item %s with binary search, falling back to linear search."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->linearSearch(Ljava/lang/String;Landroid/database/Cursor;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->positionCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 107
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    new-array v5, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v5, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    aput v1, v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 83
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 7

    .prologue
    const-wide/high16 v1, -0x8000000000000000L

    .line 133
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 135
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-wide v0, v1

    .line 163
    :goto_0
    return-wide v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->rowIdCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    if-nez v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-wide v0, v1

    goto :goto_0

    .line 149
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 150
    sget-object v0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not move cursor to position %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-wide v0, v1

    goto :goto_0

    .line 153
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getItemId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->serializationHelper:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->getCreationTime(Landroid/database/Cursor;)J

    move-result-wide v1

    .line 155
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->calculateRowId(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->rowIdCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->setCursor(Landroid/database/Cursor;)V

    .line 295
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
