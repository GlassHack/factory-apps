.class public Lcom/google/glass/util/CachedBitmapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


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

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 44
    const/4 v0, 0x0

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
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;IILcom/google/glass/fs/DirectoryTracker;)V

    .line 101
    :try_start_0
    new-instance v0, Lcom/google/glass/fs/DirectoryTracker;

    iget-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/fs/DirectoryTracker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 108
    iput-object v2, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

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

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 307
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 309
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "The file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist. Not decoding it as an image."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const/4 v1, 0x0

    .line 440
    :cond_0
    :goto_0
    return-object v1

    .line 315
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 318
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [B

    .line 319
    if-eqz v8, :cond_2

    .line 320
    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 330
    :cond_2
    :try_start_0
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 335
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Request for bitmap has been cancelled. Will not read file."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    const/4 v1, 0x0

    .line 428
    :try_start_2
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    if-eqz v8, :cond_0

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v6, 0x200000

    cmp-long v1, v1, v6

    if-lez v1, :cond_4

    .line 343
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Shared file read buffer is too small to hold: %s bytes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v2, v1, [B

    .line 345
    move-object/from16 v0, p4

    invoke-static {v3, v2, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v1

    move v3, v1

    move-object v4, v2

    .line 355
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 356
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Request for bitmap has been cancelled. Will not decode dimensions."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    const/4 v1, 0x0

    .line 428
    :try_start_4
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 436
    if-eqz v8, :cond_0

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 347
    :cond_4
    :try_start_5
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    if-nez v1, :cond_5

    .line 348
    const/high16 v1, 0x200000

    new-array v1, v1, [B

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 350
    :cond_5
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 351
    move-object/from16 v0, p4

    invoke-static {v3, v2, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v1

    move v3, v1

    move-object v4, v2

    goto :goto_1

    .line 361
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    const/4 v1, 0x0

    invoke-static {v4, v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 363
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    .line 366
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 367
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 370
    const/4 v7, 0x6

    if-ne v6, v7, :cond_10

    .line 371
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Swapping full width and height. [orientation=%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-interface {v1, v2, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 373
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v9, v1

    move v10, v2

    .line 376
    :goto_2
    const/4 v1, 0x1

    if-gtz p1, :cond_7

    const/16 p1, 0x1

    :cond_7
    div-int v2, v10, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 377
    const/4 v2, 0x1

    if-gtz p2, :cond_8

    const/16 p2, 0x1

    :cond_8
    div-int v7, v9, p2

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 378
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .line 381
    if-eqz p3, :cond_a

    const/16 v1, 0x1388

    .line 382
    :goto_3
    div-int v7, v10, v2

    if-gt v7, v1, :cond_9

    div-int v7, v9, v2

    if-le v7, v1, :cond_b

    .line 384
    :cond_9
    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 381
    :cond_a
    const/16 v1, 0x400

    goto :goto_3

    .line 386
    :cond_b
    iput v2, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 390
    if-eqz p4, :cond_c

    new-instance v1, Lcom/google/glass/util/CachedBitmapFactory$2;

    invoke-direct {v1, v5}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/google/glass/util/Condition;->addCallback(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 398
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 399
    const/4 v1, 0x0

    invoke-static {v4, v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 402
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 403
    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 406
    const/4 v2, 0x6

    if-ne v6, v2, :cond_d

    .line 407
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 408
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 410
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 415
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v2

    .line 421
    :cond_d
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 422
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    aput-object p0, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v4, 0x5

    sub-long v9, v13, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v4

    .line 421
    invoke-interface {v2, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 428
    :try_start_6
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 436
    if-eqz v8, :cond_0

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 424
    :cond_e
    :try_start_7
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Request for bitmap has been cancelled. Will not decode image."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 425
    const/4 v1, 0x0

    .line 428
    :try_start_8
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 436
    if-eqz v8, :cond_0

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 428
    :catchall_0
    move-exception v1

    :try_start_9
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 430
    :catch_0
    move-exception v1

    .line 431
    :try_start_a
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "The file \"%s\" could not be read. Not decoding it as an image."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 432
    const/4 v1, 0x0

    .line 436
    if-eqz v8, :cond_0

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 436
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_f

    .line 437
    sget-object v2, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_f
    throw v1

    :cond_10
    move v9, v1

    move v10, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 225
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2

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
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2

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
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    if-nez p2, :cond_0

    .line 151
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    if-nez v1, :cond_3

    .line 165
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker is not available for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v1}, Lcom/google/glass/fs/DirectoryTracker;->isTracking()Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "DirectoryTracker is not ready for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimTracker:Lcom/google/glass/fs/DirectoryTracker;

    invoke-virtual {v1, v0}, Lcom/google/glass/fs/DirectoryTracker;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_5
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    .line 190
    if-nez p2, :cond_6

    .line 192
    sget-object v0, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    const/4 v1, 0x0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_1
    if-eqz v0, :cond_7

    array-length v1, v0

    if-lez v1, :cond_7

    .line 202
    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v0

    .line 202
    invoke-virtual {v2, v1, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 210
    :cond_6
    :goto_2
    sget-object v0, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Interrupted while fetching attachment from server: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 205
    :cond_7
    sget-object v0, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to get attachment from server: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 262
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/google/glass/util/FileType;->NONE:Lcom/google/glass/util/FileType;

    if-eq v0, v1, :cond_0

    .line 266
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method setDcimDirectoryForTest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 451
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 452
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 453
    return-object v0
.end method
