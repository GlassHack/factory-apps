.class final Lcom/google/android/youtube/core/v14/a;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    .line 193
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 194
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/v14/a;->setMeasuredDimension(II)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/v14/a;->getDefaultSize(II)I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/google/android/youtube/core/v14/a;->a:Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-static {v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/v14/a;->getDefaultSize(II)I

    move-result v1

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/v14/a;->setMeasuredDimension(II)V

    goto :goto_0
.end method
