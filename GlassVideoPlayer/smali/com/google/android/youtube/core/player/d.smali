.class final Lcom/google/android/youtube/core/player/d;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:F

.field final synthetic c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    .line 231
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 232
    new-instance v0, Lcom/google/android/youtube/core/player/e;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/e;-><init>(Lcom/google/android/youtube/core/player/d;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/d;->d:Ljava/lang/Runnable;

    .line 241
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/player/DefaultPlayerSurface;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    return-object v0
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/player/d;->getDefaultSize(II)I

    move-result v3

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/d;->getDefaultSize(II)I

    move-result v1

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    if-lez v0, :cond_6

    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v2

    int-to-float v2, v2

    div-float v5, v0, v2

    .line 256
    int-to-float v0, v3

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 257
    div-float v0, v5, v0

    sub-float/2addr v0, v4

    .line 259
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    mul-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v2

    div-int/2addr v0, v2

    move v2, v3

    .line 266
    :goto_0
    iget-object v6, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v6, v2}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    .line 267
    iget-object v6, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v6, v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    .line 269
    iget-object v6, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->d(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 270
    if-ge v2, v3, :cond_3

    .line 271
    int-to-float v1, v2

    int-to-float v6, v3

    div-float/2addr v1, v6

    .line 272
    iget-object v6, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v6

    sub-int/2addr v3, v2

    mul-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    .line 273
    iget-object v3, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    .line 274
    iget-object v3, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    int-to-float v6, v2

    div-float v5, v6, v5

    float-to-int v5, v5

    invoke-static {v3, v5}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    move v7, v4

    move v4, v1

    move v1, v0

    move v0, v7

    .line 284
    :goto_1
    iget v3, p0, Lcom/google/android/youtube/core/player/d;->a:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 285
    iget v3, p0, Lcom/google/android/youtube/core/player/d;->b:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_1

    .line 286
    :cond_0
    iput v4, p0, Lcom/google/android/youtube/core/player/d;->a:F

    .line 287
    iput v0, p0, Lcom/google/android/youtube/core/player/d;->b:F

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Lcom/google/android/youtube/core/player/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/d;->post(Ljava/lang/Runnable;)Z

    .line 293
    :cond_1
    invoke-static {v2, p1}, Lcom/google/android/youtube/core/player/d;->resolveSize(II)I

    move-result v0

    .line 294
    invoke-static {v1, p2}, Lcom/google/android/youtube/core/player/d;->resolveSize(II)I

    move-result v1

    .line 296
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/d;->setMeasuredDimension(II)V

    .line 297
    return-void

    .line 262
    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v2

    div-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 275
    :cond_3
    if-ge v0, v1, :cond_4

    .line 276
    int-to-float v3, v0

    int-to-float v6, v1

    div-float/2addr v3, v6

    .line 277
    iget-object v6, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I

    move-result v6

    sub-int/2addr v1, v0

    mul-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 278
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    .line 279
    iget-object v1, p0, Lcom/google/android/youtube/core/player/d;->c:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v1, v5}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_4
    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v1

    move v2, v3

    goto/16 :goto_0

    :cond_6
    move v0, v4

    move v2, v3

    goto :goto_1
.end method
