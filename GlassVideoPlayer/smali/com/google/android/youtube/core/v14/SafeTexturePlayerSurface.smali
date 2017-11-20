.class public final Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/k;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/google/android/youtube/core/player/k;

.field private b:Z

.field private c:Lcom/google/android/youtube/core/player/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PlayerSurface method called before surface created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b()V

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/k;->a()V

    .line 144
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/i;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b()V

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/k;->a(Lcom/google/android/youtube/core/player/i;)V

    .line 84
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->addView(Landroid/view/View;)V

    .line 36
    iput-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    .line 43
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b:Z

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    iget-object v1, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/k;->setListener(Lcom/google/android/youtube/core/player/l;)V

    .line 47
    :cond_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->addView(Landroid/view/View;)V

    .line 40
    iput-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->setMeasuredDimension(II)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setListener(Lcom/google/android/youtube/core/player/l;)V
    .locals 1

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    .line 71
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b:Z

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/k;->setListener(Lcom/google/android/youtube/core/player/l;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b:Z

    goto :goto_0
.end method

.method public final setOnLetterboxChangedListener(Lcom/google/android/youtube/core/player/m;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b()V

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/k;->setOnLetterboxChangedListener(Lcom/google/android/youtube/core/player/m;)V

    .line 108
    return-void
.end method

.method public final setVideoSize(II)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b()V

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/player/k;->setVideoSize(II)V

    .line 90
    return-void
.end method

.method public final setZoom(I)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->b()V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/SafeTexturePlayerSurface;->a:Lcom/google/android/youtube/core/player/k;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/k;->setZoom(I)V

    .line 132
    return-void
.end method
