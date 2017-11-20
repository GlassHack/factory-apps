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

.field protected final minHeight:I

.field protected final minWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 47
    sget-object v1, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->context:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    .line 89
    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    .line 90
    new-instance v0, Lcom/google/glass/timeline/AttachmentHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    .line 91
    sget-object v0, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private static isCancelled(Lcom/google/glass/util/Condition;)Z
    .locals 1
    .param p0, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 426
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
    .line 272
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadBitmapFile(Ljava/lang/String;IIZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 32
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "notForRender"    # Z
    .param p4, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 289
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 291
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "The file \""

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\" does not exist. Not decoding it as an image."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const/4 v2, 0x0

    .line 422
    .end local p1    # "minWidth":I
    .end local p2    # "minHeight":I
    :cond_0
    :goto_0
    return-object v2

    .line 297
    .restart local p1    # "minWidth":I
    .restart local p2    # "minHeight":I
    :cond_1
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    .local v18, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    .line 301
    .local v25, "tempStorage":[B
    if-eqz v25, :cond_2

    .line 302
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 312
    :cond_2
    :try_start_0
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 317
    .local v26, "startTime":J
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not read file."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    const/4 v2, 0x0

    .line 410
    :try_start_2
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    if-eqz v25, :cond_0

    .line 419
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/32 v30, 0x200000

    cmp-long v3, v28, v30

    if-lez v3, :cond_4

    .line 325
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Shared file read buffer is too small to hold: %s bytes"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v8, v28

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v3, v0

    new-array v9, v3, [B

    .line 327
    .local v9, "buffer":[B
    move-object/from16 v0, p4

    invoke-static {v11, v9, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v16

    .line 337
    .local v16, "length":I
    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/google/glass/util/CachedBitmapFactory;->isCancelled(Lcom/google/glass/util/Condition;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 338
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not decode dimensions."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    const/4 v2, 0x0

    .line 410
    :try_start_4
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 418
    if-eqz v25, :cond_0

    .line 419
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 329
    .end local v9    # "buffer":[B
    .end local v16    # "length":I
    :cond_4
    :try_start_5
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    if-nez v3, :cond_5

    .line 330
    const/high16 v3, 0x200000

    new-array v3, v3, [B

    sput-object v3, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 332
    :cond_5
    sget-object v9, Lcom/google/glass/util/CachedBitmapFactory;->sharedFileReadBuffer:[B

    .line 333
    .restart local v9    # "buffer":[B
    move-object/from16 v0, p4

    invoke-static {v11, v9, v0}, Lcom/google/glass/util/FileHelper;->read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I

    move-result v16

    .restart local v16    # "length":I
    goto :goto_1

    .line 343
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 344
    const/4 v3, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v9, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 345
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    .line 348
    .local v19, "orientation":I
    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 349
    .local v15, "fullWidth":I
    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 352
    .local v14, "fullHeight":I
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 353
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Swapping full width and height. [orientation=%d]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v8, v28

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 355
    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 358
    :cond_7
    const/4 v3, 0x1

    if-gtz p1, :cond_8

    const/16 p1, 0x1

    .end local p1    # "minWidth":I
    :cond_8
    div-int v4, v15, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 359
    .local v22, "sampleSizeX":I
    const/4 v3, 0x1

    if-gtz p2, :cond_9

    const/16 p2, 0x1

    .end local p2    # "minHeight":I
    :cond_9
    div-int v4, v14, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 360
    .local v23, "sampleSizeY":I
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v21

    .line 363
    .local v21, "sampleSize":I
    if-eqz p3, :cond_b

    const/16 v17, 0x1388

    .line 364
    .local v17, "limit":I
    :goto_2
    div-int v3, v15, v21

    move/from16 v0, v17

    if-gt v3, v0, :cond_a

    div-int v3, v14, v21

    move/from16 v0, v17

    if-le v3, v0, :cond_c

    .line 366
    :cond_a
    mul-int/lit8 v21, v21, 0x2

    goto :goto_2

    .line 363
    .end local v17    # "limit":I
    :cond_b
    const/16 v17, 0x400

    goto :goto_2

    .line 368
    .restart local v17    # "limit":I
    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 372
    if-eqz p4, :cond_d

    new-instance v3, Lcom/google/glass/util/CachedBitmapFactory$2;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/google/glass/util/CachedBitmapFactory$2;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/glass/util/Condition;->addCallback(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 380
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    const/4 v3, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v9, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 384
    .local v12, "endTime":J
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 385
    .local v5, "decodedWidth":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 388
    .local v6, "decodedHeight":I
    const/4 v3, 0x6

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    .line 389
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 390
    .local v7, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 392
    const/16 v24, 0x0

    .line 393
    .local v24, "shouldFilter":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 397
    .local v20, "rotatedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 400
    move-object/from16 v2, v20

    .line 403
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v20    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "shouldFilter":Z
    :cond_e
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v28, 0x0

    .line 404
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

    sub-long v30, v12, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v8, v28

    .line 403
    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 410
    :try_start_6
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 418
    if-eqz v25, :cond_0

    .line 419
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 406
    .end local v5    # "decodedWidth":I
    .end local v6    # "decodedHeight":I
    .end local v12    # "endTime":J
    :cond_f
    :try_start_7
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Request for bitmap has been cancelled. Will not decode image."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 407
    const/4 v2, 0x0

    .line 410
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_8
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 418
    if-eqz v25, :cond_0

    .line 419
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 410
    .end local v9    # "buffer":[B
    .end local v14    # "fullHeight":I
    .end local v15    # "fullWidth":I
    .end local v16    # "length":I
    .end local v17    # "limit":I
    .end local v19    # "orientation":I
    .end local v21    # "sampleSize":I
    .end local v22    # "sampleSizeX":I
    .end local v23    # "sampleSizeY":I
    .end local v26    # "startTime":J
    :catchall_0
    move-exception v3

    :try_start_9
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->FILE_READ_BUFFER_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 412
    :catch_0
    move-exception v10

    .line 413
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

    .line 414
    const/4 v2, 0x0

    .line 418
    if-eqz v25, :cond_0

    .line 419
    sget-object v3, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 418
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v25, :cond_10

    .line 419
    sget-object v4, Lcom/google/glass/util/CachedBitmapFactory;->tempStoragePool:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_10
    throw v3
.end method


# virtual methods
.method public final cacheContainsAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 204
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 207
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasClientCachePath()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 212
    :goto_0
    return v1

    .line 211
    :cond_0
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 212
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    sget-object v1, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decodeAttachment(Lcom/google/googlex/glass/common/proto/nano/Attachment;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p2, "lookupOnly"    # Z
    .param p3, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 110
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/nano/Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const/4 v1, 0x0

    .line 117
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
    .line 232
    if-eqz p2, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 236
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory;->minHeight:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/nano/Attachment;Z)Ljava/lang/String;
    .locals 11
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p2, "lookupOnly"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 131
    if-nez p2, :cond_0

    .line 132
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasClientCachePath()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 145
    .restart local v4    # "path":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;->getInstance()Lcom/google/glass/fs/DcimDirectoryTrackerProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/fs/DirectoryTracker;

    .line 146
    .local v2, "dcimTracker":Lcom/google/glass/fs/DirectoryTracker;
    if-nez v2, :cond_3

    .line 147
    sget-object v5, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "DirectoryTracker is not available for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {v2}, Lcom/google/glass/fs/DirectoryTracker;->isTracking()Z

    move-result v5

    if-nez v5, :cond_4

    .line 153
    sget-object v5, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "DirectoryTracker is not ready for queries! Falling back to old behavior and blindly returning client_cache_path!"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {v2, v4}, Lcom/google/glass/fs/DirectoryTracker;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    .end local v2    # "dcimTracker":Lcom/google/glass/fs/DirectoryTracker;
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 172
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    if-nez p2, :cond_6

    .line 174
    sget-object v5, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 175
    const/4 v1, 0x0

    .line 178
    .local v1, "content":[B
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/util/CachedBitmapFactory;->attachmentHelper:Lcom/google/glass/timeline/AttachmentHelper;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :goto_1
    if-eqz v1, :cond_7

    array-length v5, v1

    if-lez v5, :cond_7

    .line 184
    sget-object v5, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-static {v1}, Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v7

    .line 184
    invoke-virtual {v0, v5, v6, v7}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    .line 192
    .end local v1    # "content":[B
    :cond_6
    :goto_2
    sget-object v5, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 179
    .restart local v1    # "content":[B
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/InterruptedException;
    sget-object v5, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Interrupted while fetching attachment from server: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 187
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_7
    sget-object v5, Lcom/google/glass/util/CachedBitmapFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to get attachment from server: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected final loadBitmap(Ljava/lang/String;IILcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 242
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 244
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/io/CachedFilesManager;->getType(Ljava/lang/String;)Lcom/google/glass/io/FileType;

    move-result-object v0

    .line 247
    .local v0, "type":Lcom/google/glass/io/FileType;
    sget-object v1, Lcom/google/glass/io/FileType;->NONE:Lcom/google/glass/io/FileType;

    if-eq v0, v1, :cond_0

    .line 248
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v1

    new-instance v2, Lcom/google/glass/util/CachedBitmapFactory$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$1;-><init>(Lcom/google/glass/util/CachedBitmapFactory;IILcom/google/glass/util/Condition;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/glass/io/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 256
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
    .line 432
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 433
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 434
    .local v0, "previous":Ljava/lang/String;
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory;->dcimDirectory:Ljava/lang/String;

    .line 435
    return-object v0
.end method
