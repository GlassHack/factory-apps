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
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/GifSupportingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/GifSupportingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/GifSupportingImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GifSupportingImageView;
    .param p1, "x1"    # Landroid/graphics/Movie;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GifSupportingImageView;->setGifFromMovieAsync(Landroid/graphics/Movie;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GifSupportingImageView;
    .param p1, "x1"    # Landroid/graphics/Movie;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/glass/widget/GifSupportingImageView;->setGifFromMovie(Landroid/graphics/Movie;)V

    return-void
.end method

.method private setGifFromMovie(Landroid/graphics/Movie;)V
    .locals 3
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 147
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 148
    iput-object p1, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 152
    iget-object v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    iget-wide v1, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 154
    return-void
.end method

.method private setGifFromMovieAsync(Landroid/graphics/Movie;)V
    .locals 2
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 137
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 138
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$3;-><init>(Lcom/google/glass/widget/GifSupportingImageView;Landroid/graphics/Movie;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 90
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    if-eqz v7, :cond_5

    .line 93
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 97
    .local v1, "now":J
    iget-boolean v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    if-eqz v7, :cond_1

    .line 100
    iget-wide v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 101
    iput-wide v1, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 105
    :cond_0
    iget-wide v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    iget-wide v9, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    sub-long v9, v1, v9

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v9}, Landroid/graphics/Movie;->duration()I

    move-result v9

    int-to-long v9, v9

    rem-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    .line 106
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    iget-wide v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->movieTime:J

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Movie;->setTime(I)Z

    .line 111
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 112
    .local v3, "scale":F
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

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 114
    .local v4, "widthScale":F
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 116
    .local v0, "heightScale":F
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 117
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 121
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

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    div-float v8, v11, v3

    mul-float v5, v7, v8

    .line 122
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    div-float v8, v11, v3

    mul-float v6, v7, v8

    .line 125
    .local v6, "y":F
    iget-object v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->gif:Landroid/graphics/Movie;

    invoke-virtual {v7, p1, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 128
    iget-boolean v7, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    if-eqz v7, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 132
    :cond_4
    iput-wide v1, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 134
    .end local v1    # "now":J
    .end local v3    # "scale":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    .line 86
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->lastOnDrawCallTime:J

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/GifSupportingImageView;->playing:Z

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/widget/GifSupportingImageView;->invalidate()V

    .line 79
    return-void
.end method

.method public setGifFromFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 48
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 49
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$1;-><init>(Lcom/google/glass/widget/GifSupportingImageView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public setGifFromResource(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 61
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 62
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GifSupportingImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/widget/GifSupportingImageView$2;-><init>(Lcom/google/glass/widget/GifSupportingImageView;I)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
