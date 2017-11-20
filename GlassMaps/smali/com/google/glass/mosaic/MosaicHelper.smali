.class public Lcom/google/glass/mosaic/MosaicHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_PATH:Ljava/lang/String; = "/all"

.field private static final CONTACT_IMAGE_AUTHORITY:Ljava/lang/String; = "contact-image"

.field private static final CREATOR_PATH:Ljava/lang/String; = "/creator"

.field private static final MAX_MOSAIC_HEIGHT:I = 0x168

.field private static final MAX_MOSAIC_WIDTH:I = 0x280

.field private static final MOSAIC_CACHE_MAX_BYTES:I = 0x400000

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static instance:Lcom/google/glass/mosaic/MosaicHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final imageLoaderFactory:Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;

.field private final mosaicCache:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/google/glass/mosaic/MosaicHelper$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, p0, v1}, Lcom/google/glass/mosaic/MosaicHelper$1;-><init>(Lcom/google/glass/mosaic/MosaicHelper;I)V

    iput-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    .line 130
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicHelper;->context:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/google/glass/mosaic/MosaicHelper;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 132
    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;

    .line 133
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/mosaic/MosaicHelper;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;)[B
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/mosaic/MosaicHelper;->mosaicViewToJpeg(Lcom/google/glass/mosaic/MosaicView;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/mosaic/MosaicHelper;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/mosaic/MosaicHelper;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->instance:Lcom/google/glass/mosaic/MosaicHelper;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 97
    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->instance:Lcom/google/glass/mosaic/MosaicHelper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/google/glass/mosaic/MosaicHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;-><init>(Lcom/google/glass/mosaic/MosaicHelper$1;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/mosaic/MosaicHelper;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;)V

    sput-object v0, Lcom/google/glass/mosaic/MosaicHelper;->instance:Lcom/google/glass/mosaic/MosaicHelper;

    .line 101
    :cond_0
    return-void
.end method

.method public static isGlassMosaicUri(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact-image"

    .line 124
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mosaicViewToJpeg(Lcom/google/glass/mosaic/MosaicView;)[B
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 260
    invoke-virtual {p1, v2}, Lcom/google/glass/mosaic/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 263
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 264
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/google/glass/mosaic/MosaicView;->measure(II)V

    .line 265
    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Lcom/google/glass/mosaic/MosaicView;->layout(IIII)V

    .line 266
    invoke-virtual {p1, v2}, Lcom/google/glass/mosaic/MosaicView;->buildDrawingCache(Z)V

    .line 267
    invoke-virtual {p1}, Lcom/google/glass/mosaic/MosaicView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 271
    invoke-virtual {p1, v4}, Lcom/google/glass/mosaic/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 272
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCachedMosaicImage(Lcom/google/glass/mosaic/ImageLoader;)[B
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/google/glass/mosaic/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/net/Uri;)Lcom/google/glass/mosaic/ImageLoader;
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    invoke-static {p2}, Lcom/google/glass/mosaic/MosaicHelper;->isGlassMosaicUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot handle URI: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 184
    :goto_0
    return-object v0

    .line 157
    :cond_0
    :try_start_0
    const-string v0, "w"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    const-string v0, "h"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    if-lez v1, :cond_1

    if-gtz v0, :cond_2

    .line 165
    :cond_1
    sget-object v3, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Invalid mosaic dimensions: %dx%d for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    aput-object p2, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 166
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to extract dimensions: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 161
    goto :goto_0

    .line 169
    :cond_2
    const/16 v3, 0x280

    if-gt v1, v3, :cond_3

    const/16 v3, 0x168

    if-le v0, v3, :cond_4

    .line 170
    :cond_3
    const/high16 v3, 0x44200000    # 640.0f

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 172
    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 173
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 174
    sget-object v3, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Reducing mosaic dimensions to %dx%d for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object p2, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v4, "/all"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 179
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;

    invoke-virtual {v2, p1, v7, v1, v0}, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;->createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    :cond_5
    const-string v4, "/creator"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper;->imageLoaderFactory:Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;

    invoke-virtual {v2, p1, v8, v1, v0}, Lcom/google/glass/mosaic/MosaicHelper$MosaicImageLoaderFactory;->createImageLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZII)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_6
    sget-object v0, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown mosaic type: %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 184
    goto/16 :goto_0
.end method

.method handleCellsLoaded(Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p2}, Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p3}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 241
    new-instance v0, Lcom/google/glass/mosaic/MosaicHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicHelper$4;-><init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Ljava/lang/String;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 255
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/mosaic/MosaicHelper$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/mosaic/ImageLoader;)Lcom/google/common/util/concurrent/o;
    .locals 6

    .prologue
    .line 197
    invoke-interface {p2}, Lcom/google/glass/mosaic/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 199
    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 201
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    sget-object v1, Lcom/google/glass/mosaic/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Returning mosaic from cache: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/o;

    move-result-object v3

    .line 231
    :goto_0
    return-object v3

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 208
    :cond_0
    new-instance v2, Lcom/google/glass/mosaic/MosaicView;

    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/google/glass/mosaic/MosaicView;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance v3, Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    invoke-direct {v3, v2, p1}, Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;-><init>(Lcom/google/glass/mosaic/MosaicView;Landroid/net/Uri;)V

    .line 210
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    const-string v1, "Load time"

    invoke-direct {v0, v1}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v4

    .line 213
    new-instance v0, Lcom/google/glass/mosaic/MosaicHelper$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/mosaic/MosaicHelper$2;-><init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/glass/mosaic/MosaicView;->setCellsLoadedListener(Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;)V

    .line 224
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/mosaic/MosaicHelper$3;

    invoke-direct {v1, p0, v2, p2}, Lcom/google/glass/mosaic/MosaicHelper$3;-><init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/ImageLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
