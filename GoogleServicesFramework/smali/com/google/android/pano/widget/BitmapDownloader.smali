.class public Lcom/google/android/pano/widget/BitmapDownloader;
.super Ljava/lang/Object;
.source "BitmapDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;,
        Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    }
.end annotation


# static fields
.field private static final BITMAP_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SIZE_BUCKET:[I

.field private static sBitmapDownloader:Lcom/google/android/pano/widget/BitmapDownloader;

.field private static final sBitmapDownloaderLock:Ljava/lang/Object;


# instance fields
.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->BITMAP_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloaderLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x200
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 99
    .local v1, "memClass":I
    div-int/lit8 v1, v1, 0x4

    .line 100
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 101
    const/16 v1, 0x20

    .line 103
    :cond_0
    const/high16 v2, 0x100000

    mul-int v0, v2, v1

    .line 104
    .local v0, "cacheSize":I
    new-instance v2, Lcom/google/android/pano/widget/BitmapDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/pano/widget/BitmapDownloader$1;-><init>(Lcom/google/android/pano/widget/BitmapDownloader;I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/widget/BitmapDownloader;Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/widget/BitmapDownloader;
    .param p1, "x1"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/pano/widget/BitmapDownloader;->addBitmapToMemoryCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private addBitmapToMemoryCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .param p1, "key"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isScaled"    # Z

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->isMemCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/android/pano/widget/BitmapDownloader;->getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "bucketKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .line 256
    .local v0, "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    if-eqz v0, :cond_2

    .line 257
    iget-object v2, v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 260
    .local v2, "currentBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 268
    .end local v2    # "currentBitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .end local v0    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    invoke-direct {v0, p2, p3}, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 269
    .restart local v0    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    iget-object v3, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v3, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getBitmapFromMemCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "key"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v5

    const/16 v6, 0x800

    if-eq v5, v6, :cond_6

    .line 275
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/google/android/pano/widget/BitmapDownloader;->getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "bucketKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .line 278
    .local v1, "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    if-eqz v1, :cond_2

    .line 279
    iget-object v0, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 282
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v5, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mScaled:Z

    if-nez v5, :cond_1

    .line 315
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    .end local v2    # "bucketKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 285
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    .restart local v2    # "bucketKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 294
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v5, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    array-length v5, v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 295
    sget-object v5, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    aget v5, v5, v3

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 294
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    aget v7, v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/pano/widget/BitmapDownloader;->getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object v5, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    check-cast v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .line 300
    .restart local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    if-eqz v1, :cond_3

    iget-boolean v5, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mScaled:Z

    if-nez v5, :cond_3

    .line 301
    iget-object v0, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 304
    goto :goto_0

    .line 307
    .end local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    .end local v2    # "bucketKey":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    sget-object v5, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    array-length v5, v5

    add-int/lit8 v3, v5, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_8

    .line 308
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    aget v7, v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/android/pano/widget/BitmapDownloader;->getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2    # "bucketKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/pano/widget/BitmapDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;

    .line 311
    .restart local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    if-eqz v1, :cond_7

    iget-boolean v5, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mScaled:Z

    if-nez v5, :cond_7

    .line 312
    iget-object v0, v1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 307
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v1    # "bitmapItem":Lcom/google/android/pano/widget/BitmapDownloader$BitmapItem;
    .end local v2    # "bucketKey":Ljava/lang/String;
    :cond_8
    move-object v0, v4

    .line 315
    goto :goto_0
.end method

.method private static getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;I)Ljava/lang/String;
    .locals 3
    .param p0, "baseKey"    # Ljava/lang/String;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;
    .param p2, "width"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 239
    sget-object v1, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    aget v1, v1, v0

    if-gt p2, v1, :cond_1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/pano/widget/BitmapDownloader;->SIZE_BUCKET:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/BitmapDownloader;

    if-nez v0, :cond_1

    .line 87
    sget-object v1, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/BitmapDownloader;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/google/android/pano/widget/BitmapDownloader;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/BitmapDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/BitmapDownloader;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/google/android/pano/widget/BitmapDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/BitmapDownloader;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    move-object v1, p1

    .line 217
    check-cast v1, Landroid/widget/ImageView;

    .line 218
    .local v1, "imageView":Landroid/widget/ImageView;
    sget v4, Lcom/google/android/pano/R$id;->imageDownloadTask:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 220
    .local v2, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/google/android/pano/widget/BitmapWorkerTask;>;"
    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    check-cast v3, Lcom/google/android/pano/widget/BitmapWorkerTask;

    .line 222
    .restart local v3    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->clear()V

    .line 231
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/google/android/pano/widget/BitmapWorkerTask;>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 232
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/pano/widget/BitmapWorkerTask;->cancel(Z)Z

    move-result v4

    .line 234
    :goto_1
    return v4

    .line 224
    :cond_1
    instance-of v4, p1, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    .line 226
    .local v0, "callback":Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
    iget-object v4, v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;->mTask:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;->mTask:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    check-cast v3, Lcom/google/android/pano/widget/BitmapWorkerTask;

    .line 228
    .restart local v3    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;->mTask:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 234
    .end local v0    # "callback":Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V
    .locals 6
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .param p2, "callback"    # Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0, p2}, Lcom/google/android/pano/widget/BitmapDownloader;->cancelDownload(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/pano/data/util/UriUtils;->isAccountImageUri(Landroid/net/Uri;)Z

    move-result v4

    .line 183
    .local v4, "hasAccountImageUri":Z
    if-eqz v4, :cond_1

    move-object v3, v2

    .line 184
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_0

    .line 185
    invoke-static {}, Lcom/google/android/pano/util/AccountImageChangeObserver;->getInstance()Lcom/google/android/pano/util/AccountImageChangeObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/pano/util/AccountImageChangeObserver;->registerChangeUriIfPresent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)V

    .line 188
    :cond_0
    new-instance v0, Lcom/google/android/pano/widget/BitmapDownloader$4;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/pano/widget/BitmapDownloader$4;-><init>(Lcom/google/android/pano/widget/BitmapDownloader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V

    .line 206
    .local v0, "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p2, Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;->mTask:Ljava/lang/ref/SoftReference;

    .line 207
    sget-object v1, Lcom/google/android/pano/widget/BitmapDownloader;->BITMAP_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/widget/BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void

    .line 183
    .end local v0    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmapFromMemCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public final loadBitmapBlocking(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "options"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getResourceUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/pano/data/util/UriUtils;->isAccountImageUri(Landroid/net/Uri;)Z

    move-result v1

    .line 120
    .local v1, "hasAccountImageUri":Z
    const/4 v0, 0x0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/google/android/pano/util/AccountImageChangeObserver;->getInstance()Lcom/google/android/pano/util/AccountImageChangeObserver;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/pano/util/AccountImageChangeObserver;->registerChangeUriIfPresent(Lcom/google/android/pano/widget/BitmapWorkerOptions;)V

    .line 127
    :goto_0
    if-nez v0, :cond_0

    .line 128
    new-instance v2, Lcom/google/android/pano/widget/BitmapDownloader$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/pano/widget/BitmapDownloader$2;-><init>(Lcom/google/android/pano/widget/BitmapDownloader;Landroid/widget/ImageView;Z)V

    .line 139
    .local v2, "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/pano/widget/BitmapWorkerOptions;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/pano/widget/BitmapWorkerTask;->doInBackground([Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "task":Lcom/google/android/pano/widget/BitmapWorkerTask;
    :cond_0
    return-object v0

    .line 124
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmapFromMemCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
