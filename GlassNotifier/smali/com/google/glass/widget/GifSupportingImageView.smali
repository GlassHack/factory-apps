.class public Lcom/google/glass/widget/GifSupportingImageView;
.super Landroid/widget/ImageView;
.source "GifSupportingImageView.java"


# static fields
.field private static final INVALID_TIMESTAMP:J = -0x1L


# instance fields
.field private gif:Landroid/graphics/Movie;

.field private lastOnDrawCallTime:J

.field private movieTime:J

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/GifSupportingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/GifSupportingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GifSupportingImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GifSupportingImageView;
    .param p1, "x1"    # Landroid/graphics/Movie;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GifSupportingImageView;->setGifFromMovieAsync(Landroid/graphics/Movie;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GifSupportingImageView;
    .param p1, "x1"    # Landroid/graphics/Movie;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GifSupportingImageView;->setGifFromMovie(Landroid/graphics/Movie;)V

    return-void
.end method

.method private setGifFromMovie(Landroid/graphics/Movie;)V
    .locals 4
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 147
    iput-object p1, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    .line 149
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 151
    iget-object v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    iget-wide v2, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 153
    return-void
.end method

.method private setGifFromMovieAsync(Landroid/graphics/Movie;)V
    .locals 2
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 136
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 137
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$3;-><init>(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    if-eqz v7, :cond_5

    .line 92
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 96
    .local v2, "now":J
    iget-boolean v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    if-eqz v7, :cond_1

    .line 99
    iget-wide v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 100
    iput-wide v2, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 104
    :cond_0
    iget-wide v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    iget-wide v10, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    sub-long v10, v2, v10

    add-long/2addr v8, v10

    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->duration()I

    move-result v7

    int-to-long v10, v7

    rem-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    .line 105
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    iget-wide v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Movie;->setTime(I)Z

    .line 110
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    .local v1, "scale":F
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->width()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getWidth()I

    move-result v8

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->height()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getHeight()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 113
    .local v4, "widthScale":F
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 115
    .local v0, "heightScale":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 116
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 120
    .end local v0    # "heightScale":F
    .end local v4    # "widthScale":F
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v13

    div-float v8, v12, v1

    mul-float v5, v7, v8

    .line 121
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v13

    div-float v8, v12, v1

    mul-float v6, v7, v8

    .line 124
    .local v6, "y":F
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v7, p1, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 127
    iget-boolean v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    if-eqz v7, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 131
    :cond_4
    iput-wide v2, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 133
    .end local v1    # "scale":F
    .end local v2    # "now":J
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    .line 85
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 78
    return-void
.end method

.method public setGifFromFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 47
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 48
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$1;-><init>(Lcom/google/glass/widget/GifSupportingImageView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public setGifFromResource(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 60
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 61
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$2;-><init>(Lcom/google/glass/widget/GifSupportingImageView;I)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
