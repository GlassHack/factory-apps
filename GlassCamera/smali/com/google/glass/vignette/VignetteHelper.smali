.class public Lcom/google/glass/vignette/VignetteHelper;
.super Lcom/google/glass/composite/CompositeBuilder;
.source "VignetteHelper.java"


# static fields
.field static final FULL_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PREVIEW_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SCALE_PAINT:Landroid/graphics/Paint;

.field private static final SCREENSHOT_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

.field private static final SCREEN_PAINT:Landroid/graphics/Paint;

.field private static final SCREEN_POSITION:Landroid/graphics/RectF;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field cachedOverlay:Landroid/graphics/Bitmap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field cachedScreenshot:Landroid/graphics/Bitmap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final screenshotPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->FULL_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;

    .line 45
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->PREVIEW_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3f255550

    const v2, 0x3d17b41c    # 0.037037f

    const v3, 0x3f7aaab0

    const v4, 0x3ebda123    # 0.37037f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_POSITION:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    .line 54
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 55
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    sget-object v1, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_PAINT:Landroid/graphics/Paint;

    .line 61
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    const/16 v0, 0xa

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/16 v3, 0xc

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/RetryStrategy;->exponentialBackoff(IDI)Lcom/google/glass/util/RetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCREENSHOT_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p3, "timelineItemCreationHelper"    # Lcom/google/glass/timeline/TimelineItemCreationHelper;
    .param p4, "timelineItemLocationHelper"    # Lcom/google/glass/timeline/TimelineItemLocationHelper;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "screenshotPath"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v6, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->VIGNETTE:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    sget-object v7, Lcom/google/glass/vignette/VignetteHelper;->PREVIEW_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;

    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->FULL_COMPOSITE_SIZE:Lcom/google/glass/camera/Size;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/composite/CompositeBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;Ljava/util/concurrent/Executor;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/glass/camera/Size;Lcom/google/glass/camera/Size;)V

    .line 88
    iput-object p6, p0, Lcom/google/glass/vignette/VignetteHelper;->screenshotPath:Ljava/lang/String;

    .line 89
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/util/RetryStrategy;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->SCREENSHOT_RETRY_STRATEGY:Lcom/google/glass/util/RetryStrategy;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private loadOverlay()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 189
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/vignette/VignetteHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->vignette_overlay:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    .line 195
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private loadScreenshot(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 140
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    .line 149
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Empty file path."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/vignette/VignetteHelper;->getCachedFilesManager()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    new-instance v1, Lcom/google/glass/vignette/VignetteHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/vignette/VignetteHelper$1;-><init>(Lcom/google/glass/vignette/VignetteHelper;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected createComposite(Landroid/graphics/Bitmap;Lcom/google/glass/camera/Size;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "picture"    # Landroid/graphics/Bitmap;
    .param p2, "compositeSize"    # Lcom/google/glass/camera/Size;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 93
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Null picture."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v7

    .line 132
    :goto_0
    return-object v1

    .line 100
    :cond_0
    iget-object v8, p0, Lcom/google/glass/vignette/VignetteHelper;->screenshotPath:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/glass/vignette/VignetteHelper;->loadScreenshot(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 101
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 102
    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Null screenshot."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v7

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Creating composite of size %s."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget v8, p2, Lcom/google/glass/camera/Size;->width:I

    iget v9, p2, Lcom/google/glass/camera/Size;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 110
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    .local v1, "composite":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v8, p2, Lcom/google/glass/camera/Size;->height:I

    int-to-float v8, v8

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p2, Lcom/google/glass/camera/Size;->width:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v4, v8

    .line 116
    .local v4, "photoMargin":I
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p2, Lcom/google/glass/camera/Size;->width:I

    iget v10, p2, Lcom/google/glass/camera/Size;->height:I

    sub-int/2addr v10, v4

    invoke-direct {v8, v12, v4, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v9, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    invoke-direct {p0}, Lcom/google/glass/vignette/VignetteHelper;->loadOverlay()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    .local v3, "overlay":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    iget v8, p2, Lcom/google/glass/camera/Size;->width:I

    iget v9, p2, Lcom/google/glass/camera/Size;->height:I

    invoke-direct {v2, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    .local v2, "fullRect":Landroid/graphics/Rect;
    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->SCALE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v7, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    new-instance v5, Landroid/graphics/Rect;

    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_POSITION:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p2, Lcom/google/glass/camera/Size;->width:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sget-object v9, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_POSITION:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p2, Lcom/google/glass/camera/Size;->height:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    .line 127
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sget-object v10, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_POSITION:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget v11, p2, Lcom/google/glass/camera/Size;->width:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    .line 128
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    sget-object v11, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_POSITION:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget v12, p2, Lcom/google/glass/camera/Size;->height:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    .line 129
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    .local v5, "screenPosition":Landroid/graphics/Rect;
    sget-object v8, Lcom/google/glass/vignette/VignetteHelper;->SCREEN_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/glass/vignette/VignetteHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    iput-object v1, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedScreenshot:Landroid/graphics/Bitmap;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    iput-object v1, p0, Lcom/google/glass/vignette/VignetteHelper;->cachedOverlay:Landroid/graphics/Bitmap;

    .line 213
    :cond_1
    return-void
.end method
