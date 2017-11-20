.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/CachedBitmapFactory$Provider;
    }
.end annotation


# static fields
.field private static final FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final FILE_READ_BUFFER_SIZE:I = 0x200000

.field private static final MAX_IMAGE_SIZE:I = 0x400

.field private static final NOT_FOR_RENDER_MAX_IMAGE_SIZE:I = 0x1388

.field private static final TEMP_STORAGE_BUFFER_SIZE_BYTES:I = 0x4000

.field private static final TEMP_STORAGE_NUM_BUFFERS:I = 0x4

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedFileReadBuffer:[B

.field private static tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

.field protected final context:Landroid/content/Context;

.field private dcimDirectory:Ljava/lang/String;

.field private dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

.field protected final minHeight:I

.field protected final minWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 45
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;IILcom/google/glass/fs/DirectoryTracker;)V

    .line 101
    :try_start_0
    new-instance v1, Lcom/google/glass/fs/DirectoryTracker;

    iget-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/glass/fs/DirectoryTracker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 109
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker threw IOException during construction."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/google/glass/fs/DirectoryTracker;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "tracker"    # Lcom/google/glass/fs/DirectoryTracker;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 84
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->context:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    .line 86
    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    .line 87
    iput-object p4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    .line 88
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 89
    sget-object v0, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private static isCancelled(Lcom/google/glass/util/Condition;)Z
    .locals 1
    .param p0, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 444
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/Condition;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "notForRender"    # Z
    .param p4, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 307
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 309
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, 0x38

    move/from16 v0, v28

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v28, "The file \""

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\" does not exist. Not decoding it as an image."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const/4 v2, 0x0

    .line 440
    .end local p1    # "minWidth":I
    .end local p2    # "minHeight":I
    :cond_0
    :goto_0
    return-object v2

    .line 315
    .restart local p1    # "minWidth":I
    .restart local p2    # "minHeight":I
    :cond_1
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 318
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    .line 319
    .local v27, "tempStorage":[B
    if-eqz v27, :cond_2

    .line 320
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 330
    :cond_2
    :try_start_0
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 335
    .local v25, "startTime":J
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not read file."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    const/4 v2, 0x0

    .line 428
    :try_start_2
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    if-eqz v27, :cond_0

    .line 437
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v28, 0x200000

    cmp-long v3, v3, v28

    if-lez v3, :cond_4

    .line 343
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Shared file read buffer is too small to hold: %s bytes"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v8, v28

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v9, v3, [B

    .line 345
    .local v9, "buffer":[B
    move-object/from16 v0, p4

    invoke-static {v13, v9, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v16

    .line 355
    .local v16, "length":I
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 356
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not decode dimensions."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    const/4 v2, 0x0

    .line 428
    :try_start_4
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 436
    if-eqz v27, :cond_0

    .line 437
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    .end local v9    # "buffer":[B
    .end local v16    # "length":I
    :cond_4
    :try_start_5
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    if-nez v3, :cond_5

    .line 348
    const/high16 v3, 0x200000

    new-array v3, v3, [B

    sput-object v3, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 350
    :cond_5
    sget-object v9, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 351
    .restart local v9    # "buffer":[B
    move-object/from16 v0, p4

    invoke-static {v13, v9, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v16

    .restart local v16    # "length":I
    goto :goto_1

    .line 361
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    const/4 v3, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v9, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 363
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    .line 366
    .local v19, "orientation":I
    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 367
    .local v15, "fullWidth":I
    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 370
    .local v14, "fullHeight":I
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 371
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Swapping full width and height. [orientation=%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 373
    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 376
    :cond_7
    const/4 v3, 0x1

    if-gtz p1, :cond_8

    const/16 p1, 0x1

    .end local p1    # "minWidth":I
    :cond_8
    div-int v4, v15, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 377
    .local v22, "sampleSizeX":I
    const/4 v3, 0x1

    if-gtz p2, :cond_9

    const/16 p2, 0x1

    .end local p2    # "minHeight":I
    :cond_9
    div-int v4, v14, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 378
    .local v23, "sampleSizeY":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v21

    .line 381
    .local v21, "sampleSize":I
    if-eqz p3, :cond_b

    const/16 v17, 0x1388

    .line 382
    .local v17, "limit":I
    :goto_2
    div-int v3, v15, v21

    move/from16 v0, v17

    if-gt v3, v0, :cond_a

    div-int v3, v14, v21

    move/from16 v0, v17

    if-le v3, v0, :cond_c

    .line 384
    :cond_a
    mul-int/lit8 v21, v21, 0x2

    goto :goto_2

    .line 381
    .end local v17    # "limit":I
    :cond_b
    const/16 v17, 0x400

    goto :goto_2

    .line 386
    .restart local v17    # "limit":I
    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 390
    if-eqz p4, :cond_d

    new-instance v3, Lcom/google/glass/util/CachedBitmapFactory$2;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/glass/util/Condition;->addCallback(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 398
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 399
    const/4 v3, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v9, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 402
    .local v11, "endTime":J
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 403
    .local v5, "decodedWidth":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 406
    .local v6, "decodedHeight":I
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    .line 407
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 408
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 410
    const/16 v24, 0x0

    .line 411
    .local v24, "shouldFilter":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 415
    .local v20, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    move-object/from16 v2, v20

    .line 421
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "shouldFilter":Z
    :cond_e
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    .line 422
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    const/16 v28, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    const/16 v28, 0x2

    aput-object p0, v8, v28

    const/16 v28, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    const/16 v28, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    const/16 v28, 0x5

    sub-long v29, v11, v25

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v8, v28

    .line 421
    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    :try_start_6
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 436
    if-eqz v27, :cond_0

    .line 437
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 424
    .end local v5    # "decodedWidth":I
    .end local v6    # "decodedHeight":I
    .end local v11    # "endTime":J
    :cond_f
    :try_start_7
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not decode image."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 425
    const/4 v2, 0x0

    .line 428
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_8
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 436
    if-eqz v27, :cond_0

    .line 437
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 428
    .end local v9    # "buffer":[B
    .end local v14    # "fullHeight":I
    .end local v15    # "fullWidth":I
    .end local v16    # "length":I
    .end local v17    # "limit":I
    .end local v19    # "orientation":I
    .end local v21    # "sampleSize":I
    .end local v22    # "sampleSizeX":I
    .end local v23    # "sampleSizeY":I
    .end local v25    # "startTime":J
    :catchall_0
    move-exception v3

    :try_start_9
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 430
    :catch_0
    move-exception v10

    .line 431
    .local v10, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "The file \"%s\" could not be read. Not decoding it as an image."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    aput-object p0, v8, v28

    invoke-interface {v3, v10, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 432
    const/4 v2, 0x0

    .line 436
    if-eqz v27, :cond_0

    .line 437
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 436
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v27, :cond_10

    .line 437
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_10
    throw v3
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 222
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 225
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 230
    :goto_0
    return v1

    .line 229
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 230
    .local v0, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "lookupOnly"    # Z
    .param p3, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v1, 0x0

    .line 136
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lookupOnly"    # Z
    .param p3, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 254
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;
    .locals 10
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .param p2, "lookupOnly"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 164
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    if-nez v4, :cond_3

    .line 165
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "DirectoryTracker is not available for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v4}, Lcom/google/glass/fs/DirectoryTracker;->isTracking()Z

    move-result v4

    if-nez v4, :cond_4

    .line 171
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "DirectoryTracker is not ready for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v4, v3}, Lcom/google/glass/fs/DirectoryTracker;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 190
    .local v0, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    if-nez p2, :cond_6

    .line 192
    sget-object v4, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 193
    const/4 v1, 0x0

    .line 196
    .local v1, "content":[B
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_1
    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 202
    sget-object v4, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v6

    .line 202
    invoke-virtual {v0, v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 210
    .end local v1    # "content":[B
    :cond_6
    :goto_2
    sget-object v4, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 197
    .restart local v1    # "content":[B
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Interrupted while fetching attachment from server: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_7
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to get attachment from server: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 260
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 262
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v0

    .line 265
    .local v0, "type":Lcom/google/glass/util/FileType;
    sget-object v1, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    if-eq v0, v1, :cond_0

    .line 266
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 274
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method setDcimDirectoryForTest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "dcimDirectory"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 451
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 452
    .local v0, "previous":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 453
    return-object v0
.end method
