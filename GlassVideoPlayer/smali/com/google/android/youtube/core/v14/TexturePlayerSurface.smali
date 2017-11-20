.class public Lcom/google/android/youtube/core/v14/TexturePlayerSurface;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/youtube/core/player/k;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final a:Lcom/google/android/youtube/core/v14/a;

.field private final b:Landroid/view/ViewGroup;

.field private c:Lcom/google/android/youtube/core/player/l;

.field private d:Landroid/view/Surface;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/v14/b;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/v14/b;-><init>(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    .line 42
    new-instance v0, Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/v14/a;-><init>(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/v14/a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    .line 45
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/v14/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/v14/a;->setPivotX(F)V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/v14/a;->setPivotY(F)V

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/v14/TexturePlayerSurface;)Lcom/google/android/youtube/core/v14/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/i;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->d:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    const-string v1, "MediaPlayer should only be attached after Surface has been created"

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/player/i;->a(Landroid/view/Surface;)V

    .line 97
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 65
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->d:Landroid/view/Surface;

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->a()V

    .line 174
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->d:Landroid/view/Surface;

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->c()V

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->b()V

    .line 159
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->b()V

    .line 166
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/l;)V
    .locals 1

    .prologue
    .line 69
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->c:Lcom/google/android/youtube/core/player/l;

    .line 71
    return-void
.end method

.method public setOnLetterboxChangedListener(Lcom/google/android/youtube/core/player/m;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->e:I

    .line 76
    iput p2, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->f:I

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/v14/TexturePlayerSurface;->a:Lcom/google/android/youtube/core/v14/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/v14/a;->requestLayout()V

    .line 78
    return-void
.end method

.method public setZoom(I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
