.class final Lcom/google/android/youtube/core/v14/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    .line 224
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 225
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/v14/b;->measureChildren(II)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/v14/b;->getDefaultSize(II)I

    move-result v1

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/v14/b;->getDefaultSize(II)I

    move-result v0

    .line 233
    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    if-lez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v3}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 235
    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 236
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    div-int/2addr v0, v2

    .line 242
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/v14/b;->setMeasuredDimension(II)V

    .line 244
    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)Lcom/google/android/youtube/core/v14/a;

    move-result-object v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v3}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/v14/a;->setScaleX(F)V

    .line 246
    iget-object v1, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)Lcom/google/android/youtube/core/v14/a;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/v14/a;->setScaleY(F)V

    .line 248
    :cond_1
    return-void

    .line 237
    :cond_2
    const v3, -0x43dc28f6    # -0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/b;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v2}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_0
.end method
