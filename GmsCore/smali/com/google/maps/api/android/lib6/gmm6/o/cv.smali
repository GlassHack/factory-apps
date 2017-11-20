.class public Lcom/google/maps/api/android/lib6/gmm6/o/cv;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/o/dd;


# instance fields
.field private b:Z

.field private c:Z

.field final g:Ljava/lang/ref/WeakReference;

.field h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

.field i:Lcom/google/maps/api/android/lib6/gmm6/o/l;

.field j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

.field k:Lcom/google/maps/api/android/lib6/gmm6/o/cz;

.field l:Lcom/google/maps/api/android/lib6/gmm6/o/da;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;-><init>(B)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->a:Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method static synthetic G()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic H()Lcom/google/maps/api/android/lib6/gmm6/o/cs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic I()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->a:Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/cm;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->k:Lcom/google/maps/api/android/lib6/gmm6/o/cz;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/da;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->l:Lcom/google/maps/api/android/lib6/gmm6/o/da;

    return-object v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/l;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->i:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e()V

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final j(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->c:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->i:Lcom/google/maps/api/android/lib6/gmm6/o/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a()I

    move-result v0

    :goto_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->b:Z

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->b:Z

    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->h:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b()V

    return-void
.end method
