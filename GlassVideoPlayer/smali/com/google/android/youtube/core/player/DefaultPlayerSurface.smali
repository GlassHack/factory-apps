.class public Lcom/google/android/youtube/core/player/DefaultPlayerSurface;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/youtube/core/player/k;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/d;

.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/Runnable;

.field private d:Lcom/google/android/youtube/core/player/m;

.field private e:Lcom/google/android/youtube/core/player/l;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/google/android/youtube/core/player/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/d;-><init>(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/d;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 50
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 51
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    new-instance v0, Lcom/google/android/youtube/core/player/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/c;-><init>(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c:Ljava/lang/Runnable;

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->addView(Landroid/view/View;)V

    .line 67
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->h:Z

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Lcom/google/android/youtube/core/player/m;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->d:Lcom/google/android/youtube/core/player/m;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->j:I

    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->f:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->k:I

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->g:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->i:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/player/i;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/d;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/player/i;->a(Landroid/view/SurfaceHolder;)V

    .line 78
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/d;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/d;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/youtube/core/player/d;->layout(IIII)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/player/d;->measure(II)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/d;->getMeasuredWidth()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/d;->getMeasuredHeight()I

    move-result v1

    .line 196
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 197
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->b:Landroid/view/View;

    .line 198
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 199
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 197
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 201
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->setMeasuredDimension(II)V

    .line 202
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/l;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    .line 73
    return-void
.end method

.method public setOnLetterboxChangedListener(Lcom/google/android/youtube/core/player/m;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->d:Lcom/google/android/youtube/core/player/m;

    .line 139
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .prologue
    .line 121
    iput p1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->f:I

    .line 122
    iput p2, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->g:I

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a:Lcom/google/android/youtube/core/player/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/d;->requestLayout()V

    .line 124
    return-void
.end method

.method public setZoom(I)V
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->i:I

    if-eq v0, p1, :cond_0

    .line 161
    iput p1, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->i:I

    .line 162
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->requestLayout()V

    .line 164
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->b()V

    .line 171
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->l:Z

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->a()V

    .line 179
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->l:Z

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->e:Lcom/google/android/youtube/core/player/l;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/l;->c()V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->a()V

    .line 188
    return-void
.end method
