.class public Lcom/google/glass/io/CachedFilesManager;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;,
        Lcom/google/glass/io/CachedFilesManager$ByteArrayLoader;,
        Lcom/google/glass/io/CachedFilesManager$Loader;
    }
.end annotation


# static fields
.field private static final DELETION_BUDGET_MS:J = 0x3e8L

.field static final MODE_AID_PRIVATE:I = 0x1b0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedInstance:Lcom/google/glass/io/CachedFilesManager;


# instance fields
.field private final dir:Ljava/io/File;

.field public final dirPathLength:I

.field private final filePathToUsageCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "filePathToUsageCount"
    .end annotation
.end field

.field private final fileSaver:Lcom/google/glass/io/FileSaver;

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
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 6
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "limitInByte"    # J
    .param p4, "limitInCount"    # I

    .prologue
    .line 129
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/io/CachedFilesManager;-><init>(Ljava/lang/String;JIZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIZ)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "limitInByte"    # J
    .param p4, "limitInCount"    # I
    .param p5, "isPrivateCache"    # Z

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/google/glass/io/FileSaver;

    invoke-direct {v0, p1}, Lcom/google/glass/io/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    .line 137
    iget-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->dirPathLength:I

    .line 139
    iput-wide p2, p0, Lcom/google/glass/io/CachedFilesManager;->limitInByte:J

    .line 141
    const/4 v0, 0x1

    shr-long v0, p2, v0

    iput-wide v0, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInByte:J

    .line 143
    iput p4, p0, Lcom/google/glass/io/CachedFilesManager;->limitInCount:I

    .line 145
    shr-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInCount:I

    .line 147
    iput-boolean p5, p0, Lcom/google/glass/io/CachedFilesManager;->isPrivateCache:Z

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    .line 153
    invoke-static {}, Lcom/google/glass/fs/FilesystemProvider;->getInstance()Lcom/google/glass/fs/FilesystemProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/fs/FilesystemProvider;->get()Lcom/google/glass/fs/Filesystem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    .line 157
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 158
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/io/CachedFilesManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/io/CachedFilesManager$1;-><init>(Lcom/google/glass/io/CachedFilesManager;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/io/CachedFilesManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/io/CachedFilesManager;->setupFileBookkeeping()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/io/CachedFilesManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/io/CachedFilesManager;->trimCachedFilesIfNeeded()V

    return-void
.end method

.method private getAvailableExternalStorageSpaceInByte()J
    .locals 6

    .prologue
    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "storagePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 478
    :goto_0
    return-wide v2

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to determine external storage space [path=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/io/CachedFilesManager;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/google/glass/io/CachedFilesManager;->sharedInstance:Lcom/google/glass/io/CachedFilesManager;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/google/glass/io/CachedFilesManager;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 167
    sput-object p0, Lcom/google/glass/io/CachedFilesManager;->sharedInstance:Lcom/google/glass/io/CachedFilesManager;

    .line 168
    return-void
.end method

.method private setupFileBookkeeping()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 485
    iget-object v3, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v3

    .line 486
    :try_start_0
    iget v4, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 487
    :cond_0
    sget-object v4, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Scanning for the count and total size of files [dir=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 489
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 490
    iget-object v4, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 493
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 494
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 495
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    iget v5, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 497
    iget-wide v6, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 494
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    monitor-exit v3

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private trimCachedFilesIfNeeded()V
    .locals 6

    .prologue
    .line 626
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/io/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/io/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 629
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/io/CachedFilesManager;->trimTo(JI)V

    .line 632
    :cond_1
    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private trimTo(JI)V
    .locals 1
    .param p1, "targetSize"    # J
    .param p3, "targetCount"    # I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "filePathToUsageCount"
    .end annotation

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/io/CachedFilesManager;->trimTo(JIZ)V

    .line 663
    return-void
.end method

.method private trimTo(JIZ)V
    .locals 19
    .param p1, "targetSize"    # J
    .param p3, "targetCount"    # I
    .param p4, "allowTimeout"    # Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "filePathToUsageCount"
    .end annotation

    .prologue
    .line 668
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 672
    .local v4, "files":[Ljava/io/File;
    array-length v7, v4

    new-array v5, v7, [Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;

    .line 673
    .local v5, "filesWithLastModified":[Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 674
    new-instance v7, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;

    aget-object v10, v4, v6

    invoke-direct {v7, v10}, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;-><init>(Ljava/io/File;)V

    aput-object v7, v5, v6

    .line 673
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 680
    .local v8, "startTime":J
    array-length v10, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_4

    aget-object v3, v5, v7

    .line 681
    .local v3, "fileWithLastModified":Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;
    iget-object v2, v3, Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;->file:Ljava/io/File;

    .line 682
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_2

    .line 680
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 686
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 687
    sget-object v11, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Can\'t delete file which is still in use [path=%s, usageCount=%s]."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 688
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    .line 687
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 692
    :cond_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 693
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 694
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 696
    sget-object v11, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Deleted file [filename=%s, sizeInBytes=%s, numOfFiles=%s, targetSize=%s, targetCount=%s]."

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 697
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 696
    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    cmp-long v11, v12, p1

    if-gtz v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    move/from16 v0, p3

    if-gt v11, v0, :cond_5

    .line 715
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileWithLastModified":Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;
    :cond_4
    :goto_3
    return-void

    .line 706
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileWithLastModified":Lcom/google/glass/io/CachedFilesManager$FileWithLastModified;
    :cond_5
    if-eqz p4, :cond_1

    const-wide/16 v12, 0x3e8

    add-long/2addr v12, v8

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/glass/io/CachedFilesManager;->limitInByte:J

    cmp-long v11, v12, v14

    if-gtz v11, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/glass/io/CachedFilesManager;->limitInCount:I

    if-gt v11, v12, :cond_1

    .line 710
    sget-object v7, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Timeout during trimming -- exiting [elapsedTime=%sms, size=%s, count=%s]."

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 710
    invoke-interface {v7, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private updateFileBookkeeping(IJI)V
    .locals 6
    .param p1, "filesDelta"    # I
    .param p2, "bytesDelta"    # J
    .param p4, "trimmingsDelta"    # I

    .prologue
    .line 509
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 510
    :try_start_0
    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 511
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 512
    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    .line 516
    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 517
    :cond_0
    sget-object v0, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bookkeeping has become corrupt [dir=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    :cond_1
    monitor-exit v1

    .line 520
    return-void

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearCache(Lcom/google/glass/io/FileType;)V
    .locals 11
    .param p1, "type"    # Lcom/google/glass/io/FileType;

    .prologue
    .line 554
    iget-object v4, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v4

    .line 555
    :try_start_0
    sget-object v3, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "clearCache called [type=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    new-instance v2, Lcom/google/android/util/ArraySet;

    invoke-direct {v2}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 557
    .local v2, "filesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 559
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 560
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/io/FileType;->get(Ljava/lang/String;)Lcom/google/glass/io/FileType;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 568
    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 569
    sget-object v5, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Can\'t delete file which is still in use [filePath=%s, usageCount=%s]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 570
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 569
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 578
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "filesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 574
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "filesToDelete":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/glass/io/CachedFilesManager;->deleteFiles(Ljava/util/Set;)V

    .line 578
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    return-void
.end method

.method public contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z
    .locals 8
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "filePath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 266
    :goto_0
    return v2

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 268
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/io/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    const/4 v2, 0x1

    .line 268
    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v2
.end method

.method public deleteFiles(Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "filenames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v5

    .line 588
    :try_start_0
    sget-object v4, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "deleteFiles called [count=%d]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 597
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 598
    .local v2, "length":J
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 599
    iget-wide v6, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    .line 600
    iget v6, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    .line 601
    sget-object v6, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Deleted file [filename=%s, sizeInBytes=%d, numOfFiles=%d]."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 602
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 601
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 607
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "length":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 604
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "length":J
    :cond_1
    :try_start_1
    sget-object v6, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Couldn\'t delete file [filename=%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 607
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "length":J
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    return-void
.end method

.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/io/FileSaver;->disableMockModifiedTimeForTest()V

    .line 194
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/io/FileSaver;->enableMockModifiedTimeForTest()V

    .line 190
    return-void
.end method

.method public getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    .line 181
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/io/FileType;->prefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Lcom/google/glass/io/FileType;
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    sget-object v1, Lcom/google/glass/io/FileType;->NONE:Lcom/google/glass/io/FileType;

    .line 281
    :goto_0
    return-object v1

    .line 280
    :cond_0
    iget v1, p0, Lcom/google/glass/io/CachedFilesManager;->dirPathLength:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/io/FileType;->get(Ljava/lang/String;)Lcom/google/glass/io/FileType;

    move-result-object v1

    goto :goto_0
.end method

.method public increaseUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object v1, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "increaseUsage called with null filePath."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "usageCount":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 211
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    monitor-exit v2

    goto :goto_0

    .end local v0    # "usageCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 213
    .restart local v0    # "usageCount":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized load(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/io/FileType;",
            "Ljava/lang/String;",
            "Lcom/google/glass/io/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 307
    .local p3, "loader":Lcom/google/glass/io/CachedFilesManager$Loader;, "Lcom/google/glass/io/CachedFilesManager$Loader<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/io/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;
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

.method public load(Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/glass/io/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "loader":Lcom/google/glass/io/CachedFilesManager$Loader;, "Lcom/google/glass/io/CachedFilesManager$Loader<TT;>;"
    const/4 v3, 0x0

    .line 285
    if-nez p1, :cond_0

    .line 286
    sget-object v1, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "load requested with null filePath."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/io/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 292
    invoke-interface {p2, p1}, Lcom/google/glass/io/CachedFilesManager$Loader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    .local v0, "result":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 295
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/io/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

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
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v1
.end method

.method public noPendingTrimmings()Z
    .locals 2

    .prologue
    .line 524
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 525
    :try_start_0
    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->pendingTrimmings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseUsage(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 224
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 226
    if-nez p1, :cond_0

    .line 227
    sget-object v1, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "releaseUsage called with null filePath."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    .local v0, "usageCount":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 235
    :cond_1
    sget-object v1, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bad releaseUsage call [usageCount=%s, filePath=%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "usageCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 237
    .restart local v0    # "usageCount":Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 238
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 240
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z
    .locals 12
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "saver"    # Lcom/google/glass/io/FileSaver$Saver;

    .prologue
    .line 395
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 398
    invoke-direct {p0}, Lcom/google/glass/io/CachedFilesManager;->setupFileBookkeeping()V

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    neg-long v6, v6

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/io/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 411
    :cond_0
    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/io/FileSaver;->write(Lcom/google/glass/io/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 413
    invoke-interface {p3}, Lcom/google/glass/io/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    add-long v2, v6, v8

    .line 415
    .local v2, "estimatedSpace":J
    invoke-direct {p0}, Lcom/google/glass/io/CachedFilesManager;->getAvailableExternalStorageSpaceInByte()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    .line 416
    sget-object v5, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Space may be full for content. Will trim and retry [estimatedSize=%s]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 417
    invoke-interface {p3}, Lcom/google/glass/io/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 416
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/io/CachedFilesManager;->trimBySize(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    sget-object v5, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No space to trim for content [estimatedSize=%s]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 422
    invoke-interface {p3}, Lcom/google/glass/io/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 421
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    const/4 v5, 0x0

    .line 467
    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    .line 465
    .end local v2    # "estimatedSpace":J
    :goto_0
    return v5

    .line 426
    .restart local v2    # "estimatedSpace":J
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->fileSaver:Lcom/google/glass/io/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/io/FileSaver;->write(Lcom/google/glass/io/FileSaver$Saver;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 427
    const/4 v5, 0x0

    .line 467
    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_2
    const/4 v5, 0x0

    .line 467
    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v2    # "estimatedSpace":J
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    sget-object v5, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Not changing mode on file since it resides on external storage [path=%s]."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 438
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/io/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 457
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 458
    invoke-virtual {v5}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/io/CachedFilesManager$3;

    invoke-direct {v6, p0}, Lcom/google/glass/io/CachedFilesManager$3;-><init>(Lcom/google/glass/io/CachedFilesManager;)V

    invoke-interface {v5, v6}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    const/4 v5, 0x1

    .line 467
    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/google/glass/io/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b0

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Unable to change mode on file [path=%s, errorMessage=%s]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 447
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 467
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v4}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v5
.end method

.method public saveLink(Lcom/google/glass/io/FileType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "originalFilePath"    # Ljava/lang/String;
    .param p3, "newFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 326
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 329
    invoke-direct {p0}, Lcom/google/glass/io/CachedFilesManager;->setupFileBookkeeping()V

    .line 331
    invoke-virtual {p0, p1, p3}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "newPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 335
    invoke-static {p2}, Lcom/google/glass/fs/Filesystem;->maybeTranslatePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 341
    .local v3, "sourcePath":Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/io/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    invoke-virtual {v4, v3, v1}, Lcom/google/glass/fs/Filesystem;->createLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :try_start_2
    iget-boolean v4, p0, Lcom/google/glass/io/CachedFilesManager;->isPrivateCache:Z

    if-eqz v4, :cond_0

    .line 348
    sget-object v4, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Changing mode for file to MODE_AID_PRIVATE [newPath=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :try_start_3
    iget-object v4, p0, Lcom/google/glass/io/CachedFilesManager;->filesystem:Lcom/google/glass/fs/Filesystem;

    const/16 v5, 0x1b0

    invoke-virtual {v4, v1, v5}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    :goto_0
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v2, "originalFile":Ljava/io/File;
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/google/glass/io/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 370
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 371
    invoke-virtual {v4}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/io/CachedFilesManager$2;

    invoke-direct {v5, p0}, Lcom/google/glass/io/CachedFilesManager$2;-><init>(Lcom/google/glass/io/CachedFilesManager;)V

    invoke-interface {v4, v5}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 380
    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    .line 378
    return v9

    .line 342
    .end local v2    # "originalFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to link from %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sourcePath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Lcom/google/glass/io/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v4

    .line 355
    .restart local v3    # "sourcePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 356
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    sget-object v4, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to change mode on file; the link still exists [newPath=%s, errorMessage=%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    .line 357
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 356
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v4, Lcom/google/glass/io/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Not changing mode for file, as managed directory is not private [newPath=%s]."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public trimBySize(J)Z
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    .line 540
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    sub-long/2addr v2, p1

    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/io/CachedFilesManager;->trimTo(JI)V

    .line 541
    const/4 v0, 0x1

    monitor-exit v1

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trimToWithoutTimeout()V
    .locals 6

    .prologue
    .line 617
    iget-object v1, p0, Lcom/google/glass/io/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/io/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/io/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 619
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/io/CachedFilesManager;->targetLimitInCount:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/glass/io/CachedFilesManager;->trimTo(JIZ)V

    .line 621
    :cond_1
    monitor-exit v1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
