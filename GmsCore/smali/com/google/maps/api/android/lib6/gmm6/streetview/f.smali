.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/f;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/maps/api/android/lib6/c/bm;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;


# instance fields
.field private A:Ljava/lang/Integer;

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:Ljava/lang/String;

.field private G:Landroid/widget/Toast;

.field private H:Z

.field private I:Z

.field private J:Z

.field private final K:Landroid/os/Handler;

.field private L:Ljava/lang/Runnable;

.field private final M:Landroid/os/Handler;

.field private final N:Ljava/lang/Object;

.field private O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

.field private P:F

.field private Q:F

.field private R:F

.field private S:F

.field private T:Z

.field private a:F

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/streetview/m;

.field private c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

.field private h:Z

.field private i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

.field private j:Lcom/google/maps/api/android/lib6/gmm6/streetview/at;

.field private k:Lcom/google/maps/api/android/lib6/c/bp;

.field private l:Lcom/google/android/gms/maps/model/LatLng;

.field private m:Lcom/google/maps/api/android/lib6/c/bp;

.field private n:F

.field private o:F

.field private p:Lcom/google/maps/api/android/lib6/gmm6/streetview/e;

.field private q:Lcom/google/android/gms/maps/internal/bk;

.field private r:Lcom/google/maps/api/android/lib6/c/bk;

.field private s:Lcom/google/android/gms/maps/internal/bh;

.field private t:Lcom/google/android/gms/maps/internal/bn;

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

.field private y:Lcom/google/maps/api/android/lib6/gmm6/streetview/k;

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/m;

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->u:Z

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->J:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->K:Landroid/os/Handler;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->N:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SV ScreenDensity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/c/bp;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/at;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/at;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/at;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->y:Lcom/google/maps/api/android/lib6/gmm6/streetview/k;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;

    invoke-direct {v0, p1, p0, p0, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;Lcom/google/maps/api/android/lib6/gmm6/streetview/bq;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/e;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/e;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;->a(Z)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)Lcom/google/maps/api/android/lib6/gmm6/streetview/f;
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/i;->a(Landroid/content/Context;Lcom/google/maps/api/android/lib6/c/dm;)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    invoke-direct {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;)V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->T:Z

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->setClickable(Z)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRenderer already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a:F

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;)V

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->T:Z

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Landroid/content/Context;Landroid/view/SurfaceHolder;Lcom/google/maps/api/android/lib6/gmm6/streetview/bl;Landroid/view/View;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a()V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iput-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a()V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g()Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->requestFocus()Z

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->N:Ljava/lang/Object;

    return-object v0
.end method

.method private declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(FF)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->c:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(I)V

    :cond_0
    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {v4, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(II)I

    move-result v0

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    if-ne v0, v3, :cond_3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a()V

    :goto_0
    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d(I)Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/gms/maps/ab;->n:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a()V

    move v0, v1

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->h:Z

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SV step to panorama "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->e()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a()Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->a:F

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->b:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;-><init>(FFLcom/google/maps/api/android/lib6/c/bp;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/s;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V

    :goto_2
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {p0, v0, v5, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SV received panorama "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    if-eqz v0, :cond_2

    :cond_1
    if-nez p2, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->h:Z

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->invalidate()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a()Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->a:F

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->b:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;-><init>(FFLcom/google/maps/api/android/lib6/c/bp;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/s;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a()Z

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/at;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/at;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->o()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Lcom/google/maps/api/android/lib6/gmm6/streetview/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    return-object v0
.end method

.method private declared-synchronized b(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e(F)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(FF)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v1, v1, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/bb;->b(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/bp;->a(F)V

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e(F)V

    goto :goto_0
.end method

.method private final b(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->h:Z

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    iget-wide v2, p2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v4, p2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/am;-><init>(DD)V

    :goto_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->A:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->l:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->k:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->invalidate()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->K:Landroid/os/Handler;

    return-object v0
.end method

.method private c(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d(F)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V

    return-void
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d(F)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->B:I

    add-int/lit8 v1, v1, -0x1

    iget v3, v2, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    add-float/2addr v3, p1

    int-to-float v1, v1

    invoke-static {v3, v0, v1}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v1

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    :goto_0
    iput v0, v2, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e(F)V
    .locals 5

    const v3, 0x3bb60b61

    const/high16 v4, 0x3f000000    # 0.5f

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v0

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->t:F

    mul-float/2addr v0, v3

    sub-float v0, v4, v0

    add-float v1, v2, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->s:F

    mul-float/2addr v0, v3

    sub-float v0, v4, v0

    sub-float/2addr v0, v2

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    add-float/2addr v0, v1

    mul-float/2addr v0, v4

    move v1, v0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-static {v2, v1, v0}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/c/bp;->b(F)V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    new-instance v1, Lcom/google/maps/api/android/lib6/c/bp;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(Lcom/google/maps/api/android/lib6/c/bp;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private n()Lcom/google/maps/api/android/lib6/c/bp;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->k:Lcom/google/maps/api/android/lib6/c/bp;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    goto :goto_0
.end method

.method private o()V
    .locals 12

    const/high16 v11, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->k:Lcom/google/maps/api/android/lib6/c/bp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->k:Lcom/google/maps/api/android/lib6/c/bp;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->k:Lcom/google/maps/api/android/lib6/c/bp;

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->C:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->C:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(F)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->D:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->C:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(F)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->E:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->D:F

    mul-float/2addr v0, v1

    const v1, 0x3bb60b61

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->e(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->h:I

    float-to-int v0, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->B:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->B:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(I)V

    :cond_0
    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->u:Z

    invoke-direct {p0, v4, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(FF)V

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(F)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    if-eqz v0, :cond_5

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->u:[Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    if-eqz v8, :cond_3

    array-length v9, v8

    move v5, v6

    move v1, v4

    :goto_1
    if-ge v5, v9, :cond_4

    aget-object v0, v8, v5

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    sub-float/2addr v0, v7

    add-float/2addr v0, v11

    const v2, 0x3b360b61

    mul-float/2addr v2, v0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float/2addr v2, v10

    sub-float/2addr v0, v2

    sub-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v10, 0x41c80000    # 25.0f

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_7

    cmpg-float v10, v2, v3

    if-gtz v10, :cond_7

    move v1, v2

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v4

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v0, v0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    add-float/2addr v0, v1

    :goto_3
    new-instance v1, Lcom/google/maps/api/android/lib6/c/bp;

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    invoke-direct {v1, v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(FFF)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->p:F

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private p()Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/maps/ab;->n:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/maps/ab;->o:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/gms/maps/ab;->p:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(FF)[F

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->n(F)F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/c/bb;->n(F)F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;-><init>(FF)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->b:F

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->a:F

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(FF)[F

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->s:Lcom/google/android/gms/maps/internal/bh;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->u:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->s:Lcom/google/android/gms/maps/internal/bh;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/c/bp;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/bh;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->u:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final declared-synchronized a(FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(FF)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 6

    const-wide v0, 0x409f400000000000L    # 2000.0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(II)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->s:Lcom/google/android/gms/maps/internal/bh;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q:Lcom/google/android/gms/maps/internal/bk;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->t:Lcom/google/android/gms/maps/internal/bn;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
    .locals 12

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->K:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget v1, v0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->B:I

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v1

    iput v1, v0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v7

    iget v1, v0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget v2, v7, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF)F

    move-result v9

    iget v1, v0, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iget v2, v7, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    sub-float v8, v1, v2

    iget v0, v0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iget v1, v7, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    sub-float v10, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;JLandroid/view/animation/Interpolator;JLcom/google/maps/api/android/lib6/c/bp;FFF)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->K:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->r:Lcom/google/maps/api/android/lib6/c/bk;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/c/bp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->u:Z

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    return-void
.end method

.method public final a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->M:Landroid/os/Handler;

    invoke-static {v3, v1, v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(II)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->b:F

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->c:F

    invoke-virtual {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(FF)[F

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    aget v0, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v4, v4, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v5

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->R:F

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->S:F

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/c/bb;->b(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->E:F

    div-float/2addr v3, v6

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->P:F

    invoke-static {v4, v2}, Lcom/google/maps/api/android/lib6/c/bb;->b(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->D:F

    div-float/2addr v2, v6

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->Q:F

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bp;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->e:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a:F

    div-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/c/bp;->c()F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->R:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->P:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->E:F

    div-float/2addr v4, v6

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->h(F)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->S:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->Q:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->D:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bb;->m(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->g(F)F

    move-result v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bb;->h(F)F

    move-result v0

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/c/bb;->n(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/c/bp;->a(F)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    mul-float/2addr v0, v6

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/c/bp;->b(F)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m()V

    :cond_1
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b()V

    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/maps/ab;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": invalid point"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->r:Lcom/google/maps/api/android/lib6/c/bk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->r:Lcom/google/maps/api/android/lib6/c/bk;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bk;->a(Lcom/google/maps/api/android/lib6/c/bd;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q:Lcom/google/android/gms/maps/internal/bk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q:Lcom/google/android/gms/maps/internal/bk;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/internal/bk;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lcom/google/maps/api/android/lib6/c/ax;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/ax;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/h;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/ax;->a(Lcom/google/maps/api/android/lib6/c/ay;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->d()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->J:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(II)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c()V

    :cond_0
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->g()Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ap;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->g()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n()Lcom/google/maps/api/android/lib6/c/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/c/bp;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const v1, -0x41b33333    # -0.2f

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(F)V

    monitor-enter p0

    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    return v0
.end method

.method public final invalidate()V
    .locals 13

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-super {p0}, Landroid/view/SurfaceView;->invalidate()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->G:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->G:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->G:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    :goto_0
    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    if-eqz v0, :cond_12

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->j:Lcom/google/maps/api/android/lib6/gmm6/streetview/at;

    if-nez v4, :cond_3

    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_c

    iput-boolean v10, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v11

    :goto_2
    if-ge v2, v3, :cond_6

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget-object v0, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    add-int/lit8 v1, v3, -0x1

    if-ne v2, v1, :cond_5

    move v1, v10

    :goto_3
    invoke-virtual {v4, v6, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Z)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/at;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/at;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    goto :goto_1

    :cond_4
    move-object v5, v0

    goto :goto_1

    :cond_5
    move v1, v11

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->p()Ljava/lang/CharSequence;

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->y:Lcom/google/maps/api/android/lib6/gmm6/streetview/k;

    iput-boolean v10, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->a:Z

    iput-boolean v11, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->b:Z

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->h:Z

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->c:Z

    iput-boolean v11, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->d:Z

    iput-boolean v11, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->e:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->g:Lcom/google/maps/api/android/lib6/gmm6/streetview/t;

    if-nez v1, :cond_8

    iput-boolean v10, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->b:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->e()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->d:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-boolean v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a:Z

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->e:Z

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->y:Lcom/google/maps/api/android/lib6/gmm6/streetview/k;

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->c:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->d:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->e:Z

    if-eqz v1, :cond_15

    :cond_9
    const/16 v11, 0x2710

    :cond_a
    :goto_5
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->z:I

    if-eq v11, v0, :cond_b

    iput v11, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->z:I

    :cond_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/am;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->A:Ljava/lang/Integer;

    if-nez v4, :cond_e

    move v12, v10

    :goto_6
    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->w:Z

    if-eqz v4, :cond_10

    const-string v0, "listener"

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panoId"

    invoke-static {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v4, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;

    invoke-direct {v2, v1, p0, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ax;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Config-loader"

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_d
    :goto_7
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0, v1, v4, v10, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v4, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v4, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v4, v2, v11}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v4, v2, v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/String;IZ)Z

    goto/16 :goto_4

    :cond_e
    move v12, v11

    goto :goto_6

    :cond_f
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    invoke-direct {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i()Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->j()V

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v5, "listener"

    invoke-static {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mapPoint"

    invoke-static {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v9, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v9, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;

    move-object v6, v1

    move-object v7, p0

    move-object v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    invoke-direct {v1, v5, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Lcom/google/maps/api/android/lib6/gmm6/streetview/am;I)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i()Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->j()V

    goto/16 :goto_7

    :cond_11
    const-string v2, "listener"

    invoke-static {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mapPoint"

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;

    move-object v6, v1

    move-object v7, p0

    move-object v8, v3

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/Object;Z)V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    invoke-direct {v1, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;Lcom/google/maps/api/android/lib6/gmm6/streetview/am;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->i()Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bb;->j()V

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->p()Ljava/lang/CharSequence;

    goto/16 :goto_4

    :cond_13
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->h:Z

    if-eqz v0, :cond_14

    sget v0, Lcom/google/android/gms/maps/ab;->k:I

    goto/16 :goto_4

    :cond_14
    sget v0, Lcom/google/android/gms/maps/ab;->m:I

    goto/16 :goto_4

    :cond_15
    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->a:Z

    if-eqz v1, :cond_a

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/k;->b:Z

    if-nez v0, :cond_16

    const/16 v11, 0x3e8

    goto/16 :goto_5

    :cond_16
    const/16 v11, 0x7d0

    goto/16 :goto_5
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->J:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final l()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->J:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v3, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(FF)[F

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    aget v3, v2, v1

    aget v4, v2, v10

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->b(FF[F)V

    new-array v3, v11, [F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a()Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    aget v0, v2, v1

    aget v5, v2, v10

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(F)I

    move-result v6

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b(F)I

    move-result v7

    iget-object v8, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c:[B

    iget v9, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    if-lez v6, :cond_1

    invoke-virtual {v4, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF)Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    move-result-object v7

    new-array v8, v12, [F

    invoke-static {v0, v5, v8}, Lcom/google/maps/api/android/lib6/c/bb;->a(FF[F)V

    aget v0, v8, v1

    aget v5, v8, v11

    neg-float v5, v5

    aget v9, v8, v10

    invoke-virtual {v7, v0, v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->a(FFF)F

    move-result v5

    move v0, v1

    :goto_0
    if-ge v0, v12, :cond_0

    aget v7, v8, v0

    mul-float/2addr v7, v5

    aput v7, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, v8, v1

    iget-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->a:F

    sub-float/2addr v0, v5

    aget v5, v8, v10

    aget v7, v8, v11

    iget-object v8, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->b:F

    add-float/2addr v7, v8

    invoke-static {v0, v5, v7, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF[F)V

    :cond_1
    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->d:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    aget v5, v3, v1

    aget v6, v3, v10

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a(FF[F)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    aget v5, v2, v1

    aget v6, v2, v10

    invoke-virtual {v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF)Lcom/google/maps/api/android/lib6/gmm6/streetview/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/u;->a()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    aget v5, v3, v1

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bb;->c(F)F

    move-result v5

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/c/bb;->n(F)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/c/bp;->a(F)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    const/high16 v5, 0x40000000    # 2.0f

    aget v3, v3, v10

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->c(F)F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/google/maps/api/android/lib6/c/bp;->b(F)V

    :cond_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    aget v1, v2, v1

    aget v2, v2, v10

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(F)I

    move-result v1

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->b(F)I

    move-result v2

    iget-object v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c:[B

    iget v5, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->f:I

    mul-int/2addr v2, v5

    add-int/2addr v1, v2

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->c()V

    iget-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->e:[Lcom/google/maps/api/android/lib6/gmm6/streetview/v;

    aget-object v1, v2, v1

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->a:F

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/v;->b:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;-><init>(FFLcom/google/maps/api/android/lib6/c/bp;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->i:Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->v:Lcom/google/maps/api/android/lib6/gmm6/streetview/s;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/s;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-virtual {p0, v0, v13, v13, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/maps/api/android/lib6/c/bp;)V

    :cond_3
    return v10
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->N:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v3, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(I)V

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->c:Z

    :goto_0
    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    :cond_1
    return v4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a()V

    goto :goto_0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v2, -0x3fe00000    # -2.5f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n:F

    invoke-static {v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->o:F

    invoke-static {v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->N:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->a()V

    :cond_1
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;FF)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->O:Lcom/google/maps/api/android/lib6/gmm6/streetview/j;

    const-string v3, "Flinger"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q()Z

    move-result v3

    sparse-switch p1, :sswitch_data_0

    move v1, v2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c(I)V

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    move v1, v2

    move v0, v2

    goto :goto_0

    :sswitch_1
    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(F)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(F)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(F)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(F)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->m:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->B:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(F)V

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    neg-float v0, v3

    goto :goto_2

    :sswitch_6
    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->H:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(F)V

    move v0, v1

    move v1, v2

    goto :goto_0

    :sswitch_7
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->o()V

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x23 -> :sswitch_6
        0x2d -> :sswitch_7
        0x30 -> :sswitch_5
        0x3e -> :sswitch_6
    .end sparse-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->x:Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {v4, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->a(II)I

    move-result v0

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget-boolean v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->c:Z

    if-eq v0, v3, :cond_2

    iput-boolean v0, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->b:I

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(I)V

    :cond_2
    :goto_2
    iget-boolean v0, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->I:Z

    if-eqz v0, :cond_0

    const v0, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->n:F

    const v0, -0x43dc28f6    # -0.01f

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->o:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->E:F

    mul-float/2addr v0, p3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->D:F

    mul-float/2addr v2, p4

    const/high16 v3, -0x3e4c0000    # -22.5f

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(FF)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/ab;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->b(I)V

    goto :goto_2
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->t:Lcom/google/android/gms/maps/internal/bn;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->t:Lcom/google/android/gms/maps/internal/bn;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(II)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/bn;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    :cond_0
    return v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->q()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->K:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/be;->c(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->p:Lcom/google/maps/api/android/lib6/gmm6/streetview/e;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/y;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/y;->a(Landroid/view/MotionEvent;)Z

    move-result v7

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/e;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v0, 0x1

    if-eq v9, v0, :cond_1

    const/4 v0, 0x3

    if-ne v9, v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v9, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/c;

    invoke-interface {v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/c;->c(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    const/4 v1, 0x0

    iput v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->f:F

    :cond_3
    if-nez v0, :cond_15

    :cond_4
    const/4 v0, 0x6

    if-eq v9, v0, :cond_5

    const/4 v0, 0x5

    if-ne v9, v0, :cond_8

    :cond_5
    const/4 v0, 0x1

    move v6, v0

    :goto_1
    const/4 v0, 0x6

    if-ne v9, v0, :cond_9

    const/4 v0, 0x1

    move v5, v0

    :goto_2
    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    :goto_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v3

    move v3, v13

    :goto_4
    if-ge v3, v4, :cond_b

    if-eq v0, v3, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v2, v10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v1, v10

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    :cond_a
    const/4 v0, -0x1

    goto :goto_3

    :cond_b
    if-eqz v5, :cond_d

    add-int/lit8 v3, v4, -0x1

    :goto_5
    int-to-float v5, v3

    div-float v10, v2, v5

    int-to-float v2, v3

    div-float v11, v1, v2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v5

    move v5, v13

    :goto_6
    if-ge v5, v4, :cond_e

    if-eq v0, v5, :cond_c

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    sub-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v2, v12

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v1, v12

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    move v3, v4

    goto :goto_5

    :cond_e
    int-to-float v0, v3

    div-float v0, v2, v0

    int-to-float v2, v3

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iget-boolean v3, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    iput v10, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->b:F

    iput v11, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->c:F

    iget-boolean v4, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_f

    if-eqz v6, :cond_10

    :cond_f
    iget-object v4, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/c;

    invoke-interface {v4, v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/c;->c(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)V

    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->f:F

    :cond_10
    if-eqz v6, :cond_11

    iput v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->g:F

    iput v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->h:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->e:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->f:F

    :cond_11
    iget-boolean v4, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    if-nez v4, :cond_13

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_13

    if-nez v3, :cond_12

    iget v3, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->f:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    :cond_12
    iput v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->g:F

    iput v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->h:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->e:F

    iget-object v3, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/c;

    invoke-interface {v3, v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/c;->b(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)Z

    move-result v3

    iput-boolean v3, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    :cond_13
    const/4 v3, 0x2

    if-ne v9, v3, :cond_15

    iput v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->g:F

    iput v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->h:F

    iput v2, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    const/4 v0, 0x1

    iget-boolean v1, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->i:Z

    if-eqz v1, :cond_14

    iget-object v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/c;

    invoke-interface {v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/streetview/c;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/b;)Z

    move-result v0

    :cond_14
    if-eqz v0, :cond_15

    iget v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->g:F

    iget v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->h:F

    iget v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->d:F

    iput v0, v8, Lcom/google/maps/api/android/lib6/gmm6/streetview/b;->e:F

    :cond_15
    or-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->v:I

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Landroid/view/MotionEvent;)V

    :cond_16
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_7
.end method
