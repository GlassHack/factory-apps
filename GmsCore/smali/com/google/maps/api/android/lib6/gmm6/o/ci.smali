.class public Lcom/google/maps/api/android/lib6/gmm6/o/ci;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/o/cr;


# instance fields
.field private b:Z

.field private c:Z

.field final g:Ljava/lang/ref/WeakReference;

.field h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

.field i:Lcom/google/maps/api/android/lib6/gmm6/o/ct;

.field j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

.field k:Lcom/google/maps/api/android/lib6/gmm6/o/cn;

.field l:Lcom/google/maps/api/android/lib6/gmm6/o/co;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/cr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/cr;-><init>(B)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->a:Lcom/google/maps/api/android/lib6/gmm6/o/cr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
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

.method static synthetic J()Lcom/google/maps/api/android/lib6/gmm6/o/cr;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->a:Lcom/google/maps/api/android/lib6/gmm6/o/cr;

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)Lcom/google/maps/api/android/lib6/gmm6/o/cm;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->j:Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)Lcom/google/maps/api/android/lib6/gmm6/o/cn;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->k:Lcom/google/maps/api/android/lib6/gmm6/o/cn;

    return-object v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)Lcom/google/maps/api/android/lib6/gmm6/o/co;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->l:Lcom/google/maps/api/android/lib6/gmm6/o/co;

    return-object v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/o/ci;)Lcom/google/maps/api/android/lib6/gmm6/o/ct;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->i:Lcom/google/maps/api/android/lib6/gmm6/o/ct;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->e()V

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

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
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->g()V
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

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->c:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->g()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->i:Lcom/google/maps/api/android/lib6/gmm6/o/ct;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->a()I

    move-result v0

    :goto_0
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->g:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->b:Z

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->g()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->b:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->a(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->c()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->d()V

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ci;->h:Lcom/google/maps/api/android/lib6/gmm6/o/cq;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/cq;->b()V

    return-void
.end method
