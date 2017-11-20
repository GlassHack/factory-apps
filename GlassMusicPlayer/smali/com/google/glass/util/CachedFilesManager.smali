.class public Lcom/google/glass/util/CachedFilesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELETION_BUDGET_MS:J = 0x3e8L

.field static final MODE_AID_PRIVATE:I = 0x1b0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedInstance:Lcom/google/glass/util/CachedFilesManager;


# instance fields
.field private final dir:Ljava/io/File;

.field public final dirPathLength:I

.field private final filePathToUsageCount:Ljava/util/Map;

.field private final fileSaver:Lcom/google/glass/util/FileSaver;

.field private filesystem:Lcom/google/glass/fs/Filesystem;

.field private final isPrivateCache:Z

.field private final limitInByte:J

.field private final limitInCount:I

.field private numOfFiles:I

.field private pendingTrimmings:I

.field private sizeInBytes:J

.field private final targetLimitInByte:J

.field private final targetLimitInCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 6

    .prologue
    .line 129
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JIZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIZ)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/google/glass/util/FileSaver;

    invoke-direct {v0, p1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 137
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    .line 139
    iput-wide p2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    .line 141
    const/4 v0, 0x1

    shr-long v0, p2, v0

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    .line 143
    iput p4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    .line 145
    shr-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    .line 147
    iput-boolean p5, p0, Lcom/google/glass/util/CachedFilesManager;->isPrivateCache:Z

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 153
    invoke-static {}, Lcom/google/glass/fs/FilesystemProvider;->getInstance()Lcom/google/glass/fs/FilesystemProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/fs/FilesystemProvider;->get()Lcom/google/glass/fs/Filesystem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    .line 157
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 158
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/CachedFilesManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/util/CachedFilesManager$1;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->trimCachedFilesIfNeeded()V

    return-void
.end method

.method private getAvailableExternalStorageSpaceInByte()J
    .locals 6

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 474
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 478
    :goto_0
    return-wide v0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to determine external storage space [path=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    .prologue
    .line 167
    sput-object p0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    .line 168
    return-void
.end method

.method private setupFileBookkeeping()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 486
    :try_start_0
    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 487
    :cond_0
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Scanning for the count and total size of files [dir=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 489
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 490
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 493
    if-eqz v2, :cond_2

    .line 494
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 495
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 497
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long v4, v5, v7

    iput-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 494
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimCachedFilesIfNeeded()V
    .locals 6

    .prologue
    .line 626
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 629
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 632
    :cond_1
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 633
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private trimTo(JI)V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JIZ)V

    .line 662
    return-void
.end method

.method private trimTo(JIZ)V
    .locals 11

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 667
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 670
    array-length v0, v1

    new-array v2, v0, [Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;

    .line 671
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 672
    new-instance v3, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;-><init>(Ljava/io/File;)V

    aput-object v3, v2, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 678
    array-length v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v5, v2, v0

    .line 679
    iget-object v5, v5, Lcom/google/glass/util/CachedFilesManager$FileWithLastModified;->file:Ljava/io/File;

    .line 680
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_2

    .line 678
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    :cond_2
    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 685
    sget-object v6, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Can\'t delete file which is still in use [path=%s, usageCount=%s]."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 686
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v8, v9

    .line 685
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 690
    :cond_3
    iget-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 691
    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 692
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 694
    sget-object v6, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Deleted file [filename=%s, sizeInBytes=%s, numOfFiles=%s, targetSize=%s, targetCount=%s]."

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 695
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    const/4 v5, 0x1

    iget-wide v9, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x2

    iget v9, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    .line 694
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_5

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-gt v5, p3, :cond_5

    .line 713
    :cond_4
    :goto_3
    return-void

    .line 704
    :cond_5
    if-eqz p4, :cond_1

    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v3

    .line 705
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-gt v5, v6, :cond_1

    .line 708
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Timeout during trimming -- exiting [elapsedTime=%sms, size=%s, count=%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 708
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private updateFileBookkeeping(IJI)V
    .locals 6

    .prologue
    .line 509
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 510
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 511
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 512
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 516
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 517
    :cond_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bookkeeping has become corrupt [dir=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearCache(Lcom/google/glass/util/FileType;)V
    .locals 9

    .prologue
    .line 554
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 555
    :try_start_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "clearCache called [type=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    new-instance v2, Lcom/google/android/b/a;

    invoke-direct {v2}, Lcom/google/android/b/a;-><init>()V

    .line 557
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 560
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/util/FileType;->get(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 568
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 569
    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Can\'t delete file which is still in use [filePath=%s, usageCount=%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    .line 569
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 574
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->deleteFiles(Ljava/util/Set;)V

    .line 578
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    return-void
.end method

.method public contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    if-nez v1, :cond_0

    .line 268
    :goto_0
    return v0

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 259
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 268
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteFiles(Ljava/util/Set;)V
    .locals 8

    .prologue
    .line 587
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 588
    :try_start_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "deleteFiles called [count=%d]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 598
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    sub-long v4, v6, v4

    iput-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 600
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 601
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Deleted file [filename=%s, sizeInBytes=%d, numOfFiles=%d]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 602
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 601
    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 604
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Couldn\'t delete file [filename=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 607
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    return-void
.end method

.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->disableMockModifiedTimeForTest()V

    .line 194
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->enableMockModifiedTimeForTest()V

    .line 190
    return-void
.end method

.method public getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/util/FileType;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Lcom/google/glass/util/FileType;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    .line 281
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/google/glass/util/FileType;->get(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v0

    goto :goto_0
.end method

.method public increaseUsage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "increaseUsage called with null filePath."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 213
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized load(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "load requested with null filePath."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/4 v0, 0x0

    .line 302
    :goto_0
    return-object v0

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 292
    invoke-interface {p2, p1}, Lcom/google/glass/util/CachedFilesManager$Loader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to load file [filePath=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 302
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v0
.end method

.method public noPendingTrimmings()Z
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 525
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseUsage(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 224
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 226
    if-nez p1, :cond_0

    .line 227
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "releaseUsage called with null filePath."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    .line 235
    :cond_1
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bad releaseUsage call [usageCount=%s, filePath=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 237
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 238
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 240
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 395
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 398
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 404
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    neg-long v5, v5

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 413
    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    add-long/2addr v4, v6

    .line 415
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->getAvailableExternalStorageSpaceInByte()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    .line 416
    sget-object v6, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Space may be full for content. Will trim and retry [estimatedSize=%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 417
    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 416
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 421
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No space to trim for content [estimatedSize=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 422
    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 421
    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    :goto_0
    return v0

    .line 426
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 467
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Not changing mode on file since it resides on external storage [path=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 438
    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 457
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 458
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v3, Lcom/google/glass/util/CachedFilesManager$3;

    invoke-direct {v3, p0}, Lcom/google/glass/util/CachedFilesManager$3;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 445
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b0

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    :try_start_4
    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to change mode on file [path=%s, errorMessage=%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 448
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 447
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 467
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v0
.end method

.method public saveLink(Lcom/google/glass/util/FileType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 326
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 329
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    .line 331
    invoke-virtual {p0, p1, p3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 335
    invoke-static {p2}, Lcom/google/glass/fs/Filesystem;->maybeTranslatePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 341
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/fs/Filesystem;->createLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :try_start_2
    iget-boolean v0, p0, Lcom/google/glass/util/CachedFilesManager;->isPrivateCache:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Changing mode for file to MODE_AID_PRIVATE [newPath=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :try_start_3
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    const/16 v2, 0x1b0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :goto_0
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 370
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 371
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v2, Lcom/google/glass/util/CachedFilesManager$2;

    invoke-direct {v2, p0}, Lcom/google/glass/util/CachedFilesManager$2;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    return v6

    .line 342
    :catch_0
    move-exception v0

    .line 343
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to link from %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    :try_start_6
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to change mode on file; the link still exists [newPath=%s, errorMessage=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    .line 357
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 356
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not changing mode for file, as managed directory is not private [newPath=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public trimBySize(J)Z
    .locals 4

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    .line 540
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    sub-long/2addr v2, p1

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 541
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public trimToWithoutTimeout()V
    .locals 6

    .prologue
    .line 617
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 619
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JIZ)V

    .line 621
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
