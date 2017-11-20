.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/be;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/az;


# static fields
.field private static final a:D

.field private static final b:Ljava/util/concurrent/Semaphore;


# instance fields
.field private A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

.field private B:Z

.field private C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

.field private D:Z

.field private volatile E:Z

.field private F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

.field private G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

.field private final H:Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

.field private final I:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/SurfaceHolder;

.field private e:Z

.field private f:Ljavax/microedition/khronos/egl/EGL10;

.field private g:Ljavax/microedition/khronos/egl/EGLContext;

.field private h:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private i:Ljavax/microedition/khronos/egl/EGLSurface;

.field private j:Ljavax/microedition/khronos/egl/EGLConfig;

.field private k:Ljavax/microedition/khronos/opengles/GL10;

.field private l:Z

.field private m:Z

.field private n:Lcom/google/maps/api/android/lib6/c/bp;

.field private o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

.field private p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

.field private q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

.field private r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

.field private s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

.field private t:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

.field private u:I

.field private v:Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->p(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a:D

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->H:Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->I:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->D:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->t:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;-><init>(B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    return-void
.end method

.method public static a(F)F
    .locals 4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a:D

    float-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->o(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;)Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method private final a(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private final a(IIILjava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->b:I

    if-ne v3, p1, :cond_1

    iput p2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iput p3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->d:I

    iput-object p4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final a(ILjava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a(IIILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)V
    .locals 11

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    move v7, v0

    :goto_0
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_0

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v9, :cond_d

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->n:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->I:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-direct {v0, v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    :cond_2
    :goto_2
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->d:J

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->e:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_10

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    move v10, v2

    move v2, v0

    move v0, v10

    :cond_4
    if-eqz v1, :cond_11

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v0, :cond_11

    :cond_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b()Z

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->c:Lcom/google/maps/api/android/lib6/c/bp;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    const/4 v0, 0x1

    :goto_7
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->m:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/maps/api/android/lib6/gmm6/streetview/l;II)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v5, 0x2

    aput v1, v4, v5

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v4, 0x3

    aput v2, v3, v4

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;II)V

    :cond_8
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v3, :cond_9

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v9, v0, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-interface {v9, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    if-nez v0, :cond_12

    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->D:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->w:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->x:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->c(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_c
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(Ljavax/microedition/khronos/opengles/GL10;FF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->x:I

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-virtual {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->d(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->D:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->m:Z

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x1

    move v7, v0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->I:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-direct {v0, v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-interface {v9, v0, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    :goto_9
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->t:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    invoke-interface {v1, v9, v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/c/bp;Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x2710

    :goto_a
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->u:I

    if-eq v0, v1, :cond_13

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;->a(I)V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->u:I

    :cond_13
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v0, v9, v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/c/bp;J)V

    :cond_14
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->m:Z

    if-nez v0, :cond_b

    :cond_15
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->m:Z

    goto/16 :goto_8

    :cond_16
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->c:Lcom/google/maps/api/android/lib6/c/bp;

    iget v0, v0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget v1, v1, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF)F

    move-result v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->c:Lcom/google/maps/api/android/lib6/c/bp;

    iget v0, v0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget v2, v2, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    sub-float v2, v0, v2

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a()F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a()F

    move-result v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(FFF)V

    goto/16 :goto_9

    :cond_17
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->t:Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->b:I

    if-nez v1, :cond_18

    const/4 v0, 0x0

    goto :goto_a

    :cond_18
    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->a:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bk;->b:I

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    goto/16 :goto_a

    :cond_19
    move v0, v3

    goto/16 :goto_7

    :cond_1a
    move v0, v2

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;)V
    .locals 11

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->e:[F

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->d:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->c:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/bp;->a()[F

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    neg-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :goto_1
    const/4 v1, 0x4

    new-array v9, v1, [F

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    const/4 v1, 0x3

    new-array v2, v1, [F

    const/4 v1, 0x0

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->a:F

    aput v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    int-to-float v3, v3

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->b:F

    sub-float/2addr v3, v4

    aput v3, v2, v1

    const/4 v1, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a:[F

    :goto_2
    const/4 v0, 0x0

    aget v0, v2, v0

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v4, 0x2

    aget v2, v2, v4

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b:[F

    const/4 v6, 0x0

    iget-object v7, v7, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    const/4 v3, 0x2

    aget v3, v9, v3

    invoke-static {v1, v2, v3, v0}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF[F)V

    iget-boolean v1, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->c:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->c(F)F

    move-result v2

    aput v2, v0, v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v0, 0x0

    move-object v1, p1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bp;->a()[F

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v3, v0

    goto :goto_2

    :cond_5
    move-object v1, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b()Z

    :cond_2
    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->D:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->H:Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->b:Z

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->c:Ljava/lang/String;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->k:I

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-eq v2, v3, :cond_0

    const-string v3, "EGL error: %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(F)F
    .locals 4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    return v0

    :cond_0
    sget-wide v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a:D

    float-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->o(F)F

    move-result v0

    goto :goto_0
.end method

.method private final b(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private final b(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private static c(F)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final e(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private h()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    monitor-enter v4

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    move-wide v0, v2

    :goto_2
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->d()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->A:Lcom/google/maps/api/android/lib6/gmm6/streetview/bg;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private j()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v4, [I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    aget-object v0, v3, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v1, v0, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Ljavax/microedition/khronos/egl/EGL10;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/w;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2, v3, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iput-boolean v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->D:Z

    const/16 v0, 0xb71

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xc11

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xbd0

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xb50

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xbe2

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0xc50

    const/16 v2, 0x1102

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    const/16 v0, 0x1d00

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    const/16 v0, 0xb44

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/16 v0, 0x901

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    const/16 v0, 0x203

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method private k()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a()V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->C:Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ai;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_1
    iput-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->j:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Ljavax/microedition/khronos/egl/EGL10;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v1, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(II)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(II)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/SurfaceHolder;Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->q:Lcom/google/maps/api/android/lib6/gmm6/streetview/bh;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    invoke-direct {v0, v1, v2, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;-><init>(Landroid/content/Context;Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/maps/y;->K:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->w:Landroid/graphics/drawable/Drawable;

    const-string v0, "Renderer"

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->setName(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->setPriority(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x6

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bi;

    invoke-direct {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bi;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V
    .locals 2

    const/4 v0, 0x3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(Z)V

    return-void
.end method

.method public final a(FF)[F
    .locals 2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;

    invoke-direct {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;-><init>(FF)V

    monitor-enter v1

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-boolean v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->d:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->e:[F

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e(I)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(II)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->b(Z)V

    return-void
.end method

.method public final b(FF)[F
    .locals 2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;

    invoke-direct {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;-><init>(FF)V

    monitor-enter v1

    const/16 v0, 0x13

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-boolean v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->c:Z

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->d:[F

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e(I)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(II)V

    return-void
.end method

.method public final d(I)Lcom/google/maps/api/android/lib6/gmm6/streetview/t;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->b(I)Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v1, -0x1

    const/16 v0, 0xe

    invoke-direct {p0, v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(III)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->e()Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    return-object v0
.end method

.method public final run()V
    .locals 15

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->B:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->E:Z

    if-nez v3, :cond_f

    move-object v14, v2

    :cond_0
    :goto_1
    :pswitch_0
    invoke-direct {p0, v14}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;)Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;

    move-result-object v14

    if-eqz v14, :cond_d

    iget v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown message id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i()V

    :goto_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i()V

    throw v2

    :pswitch_1
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->j()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e:Z

    goto :goto_1

    :pswitch_3
    iget v3, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iget v4, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->d:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_1

    const-string v2, "Window changed size: %d,%d -> %d,%d Recreating OpenGL surface"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l()V

    :cond_1
    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    iput v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l:Z

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->H:Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

    iput v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a:F

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_4
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;)V

    goto/16 :goto_1

    :pswitch_5
    iget v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->H:Lcom/google/maps/api/android/lib6/gmm6/streetview/p;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    iget-boolean v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->i:Z

    if-nez v2, :cond_3

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    goto/16 :goto_1

    :cond_3
    iget v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->g:F

    iget v5, v4, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3f7fbe77    # 0.999f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(III)V

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->i:Z

    if-eqz v2, :cond_5

    iget v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_6

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "FOV not set"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_0

    iget v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->d:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(III)V

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    goto/16 :goto_1

    :cond_6
    iget v2, v4, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/c/bp;->b()F

    move-result v5

    iget v6, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->e:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_7

    iget v6, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->f:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_5

    :cond_7
    iget v6, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->f:F

    invoke-static {v6}, Lcom/google/maps/api/android/lib6/c/bb;->i(F)F

    move-result v6

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bb;->i(F)F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->f:F

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/c/bb;->j(F)F

    move-result v7

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bb;->j(F)F

    move-result v5

    mul-float/2addr v5, v7

    iget v7, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->e:F

    sub-float v2, v7, v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->j(F)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v2, v6

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->o(F)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v2, v5

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->a:F

    iget v6, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/p;->h:F

    mul-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :pswitch_7
    iget v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v3, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->d:I

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;

    invoke-direct {v4, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->e:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;->e:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b(FF[F)V

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a()Z

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF[F)F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v2, v2, v6

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {v4, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF)Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->a()Z

    :cond_8
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(FFF[F)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->F:Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->G:Lcom/google/maps/api/android/lib6/gmm6/streetview/bm;

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bi;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bi;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->o:Lcom/google/maps/api/android/lib6/gmm6/streetview/l;

    invoke-virtual {v4, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k()V

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->j()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->l:Z

    goto/16 :goto_1

    :pswitch_c
    iget v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->c(I)V

    goto/16 :goto_1

    :pswitch_d
    iget v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->c:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->s:Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(IJ)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v3, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3

    throw v2

    :pswitch_f
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->E:Z

    goto/16 :goto_1

    :pswitch_10
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;

    invoke-direct {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bj;)V

    goto/16 :goto_1

    :pswitch_11
    iget-object v2, v14, Lcom/google/maps/api/android/lib6/gmm6/streetview/bf;->e:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;

    move-object v13, v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move-object v3, v13

    :goto_5
    iput-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->d:[F

    monitor-enter v13
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, v13, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->c:Z

    invoke-virtual {v13}, Ljava/lang/Object;->notify()V

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v13

    throw v2

    :cond_9
    iget v2, v13, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->a:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->c(F)F

    move-result v2

    const/4 v3, 0x3

    new-array v4, v3, [F

    iget v3, v13, Lcom/google/maps/api/android/lib6/gmm6/streetview/bo;->b:F

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF[F)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->k:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v2, 0x4

    new-array v11, v2, [F

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->r:Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->n:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/bp;->a()[F

    move-result-object v5

    if-nez v5, :cond_a

    iget-object v2, v9, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->a:[F

    :cond_a
    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v6, 0x2

    aget v4, v4, v6

    const/4 v6, 0x0

    iget-object v7, v9, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    iget-object v7, v7, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;->b:[F

    const/4 v8, 0x0

    iget-object v9, v9, Lcom/google/maps/api/android/lib6/gmm6/streetview/bd;->b:[I

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    aget v2, v11, v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x2

    aget v2, v11, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    :cond_b
    const/4 v2, 0x0

    move-object v3, v13

    goto :goto_5

    :cond_c
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v11, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->z:I

    const/4 v5, 0x1

    aget v5, v11, v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v2, v3

    move-object v3, v13

    goto/16 :goto_5

    :cond_d
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(J)V

    :cond_e
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->h()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v2, v14

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->i()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(III)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e(I)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e(I)V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->E:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->join()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xc

    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
