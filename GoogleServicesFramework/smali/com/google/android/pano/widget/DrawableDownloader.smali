.class public Lcom/google/android/pano/widget/DrawableDownloader;
.super Ljava/lang/Object;
.source "DrawableDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;
    }
.end annotation


# static fields
.field private static final BITMAP_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final BITMAP_RESOURCE_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static sBitmapDownloader:Lcom/google/android/pano/widget/DrawableDownloader;

.field private static final sBitmapDownloaderLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledBitmaps:Lcom/google/android/pano/widget/RecycleBitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->BITMAP_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->BITMAP_RESOURCE_DOWNLOADER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloaderLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/pano/widget/DrawableDownloader;->mContext:Landroid/content/Context;

    .line 169
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 171
    .local v1, "memClass":I
    div-int/lit8 v1, v1, 0x4

    .line 172
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 173
    const/16 v1, 0x20

    .line 175
    :cond_0
    const/high16 v2, 0x100000

    mul-int v0, v2, v1

    .line 176
    .local v0, "cacheSize":I
    new-instance v2, Lcom/google/android/pano/widget/DrawableDownloader$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/pano/widget/DrawableDownloader$1;-><init>(Lcom/google/android/pano/widget/DrawableDownloader;I)V

    iput-object v2, p0, Lcom/google/android/pano/widget/DrawableDownloader;->mMemoryCache:Landroid/util/LruCache;

    .line 189
    new-instance v2, Lcom/google/android/pano/widget/RecycleBitmapPool;

    invoke-direct {v2}, Lcom/google/android/pano/widget/RecycleBitmapPool;-><init>()V

    iput-object v2, p0, Lcom/google/android/pano/widget/DrawableDownloader;->mRecycledBitmaps:Lcom/google/android/pano/widget/RecycleBitmapPool;

    .line 190
    return-void
.end method

.method private createRefCopy(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    if-eqz p1, :cond_1

    .line 385
    instance-of v1, p1, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 386
    check-cast v0, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    .line 387
    .local v0, "refcountDrawable":Lcom/google/android/pano/widget/RefcountBitmapDrawable;
    invoke-virtual {v0}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->getRefcountObject()Lcom/google/android/pano/widget/RefcountObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/pano/widget/RefcountObject;->addRef()I

    .line 388
    new-instance p1, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/pano/widget/DrawableDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/google/android/pano/widget/RefcountBitmapDrawable;)V

    .end local v0    # "refcountDrawable":Lcom/google/android/pano/widget/RefcountBitmapDrawable;
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v1, p1

    .line 393
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p0, "baseKey"    # Ljava/lang/String;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/DrawableDownloader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/DrawableDownloader;

    if-nez v0, :cond_1

    .line 147
    sget-object v1, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/DrawableDownloader;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/google/android/pano/widget/DrawableDownloader;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/DrawableDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/DrawableDownloader;

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    sget-object v0, Lcom/google/android/pano/widget/DrawableDownloader;->sBitmapDownloader:Lcom/google/android/pano/widget/DrawableDownloader;

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLargestBitmapFromMemCache(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "key"    # Lcom/google/android/pano/widget/BitmapWorkerOptions;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/pano/widget/BitmapWorkerOptions;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/pano/widget/DrawableDownloader;->getBucketKey(Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "bucketKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/pano/widget/DrawableDownloader;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;

    .line 377
    .local v1, "item":Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1, p1}, Lcom/google/android/pano/widget/DrawableDownloader$BitmapItem;->findLargestDrawable(Lcom/google/android/pano/widget/BitmapWorkerOptions;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/pano/widget/DrawableDownloader;->createRefCopy(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 380
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
