.class public Lcom/google/maps/api/android/lib6/gmm6/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/cw;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/aj;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/f;


# static fields
.field private static final b:D

.field private static synthetic j:Z


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

.field private final d:Lcom/google/maps/api/android/lib6/c/y;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/google/android/gms/maps/internal/e;

.field private g:Lcom/google/android/gms/maps/internal/aa;

.field private h:Ljava/util/Collection;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/maps/api/android/lib6/gmm6/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->j:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/y;Lcom/google/maps/api/android/lib6/gmm6/c/ao;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e:Landroid/os/Handler;

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x14a

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/c;)Lcom/google/maps/api/android/lib6/gmm6/c/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/maps/model/LatLngBounds;DDD)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 11

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    mul-double v2, v0, p5

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    if-ge v0, v5, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    add-int/2addr v0, v5

    :goto_0
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v1

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v5

    sub-int v5, v1, v5

    int-to-double v6, v0

    mul-double/2addr v6, v2

    div-double/2addr v6, p1

    int-to-double v8, v5

    mul-double/2addr v2, v8

    div-double/2addr v2, p3

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v8, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b:D

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    const/high16 v6, 0x40000000    # 2.0f

    rem-int/2addr v0, v6

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v4

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    double-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/c;Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/aa;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/aa;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f()Lcom/google/android/gms/maps/internal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/e;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->g:Lcom/google/android/gms/maps/internal/aa;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->g:Lcom/google/android/gms/maps/internal/aa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/aa;->a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->g:Lcom/google/android/gms/maps/internal/aa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    if-eqz v0, :cond_2

    move-object v1, p0

    :goto_1
    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/f;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/aj;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object p0, v2

    goto :goto_2
.end method

.method private f()Lcom/google/android/gms/maps/internal/e;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)F
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v2, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v4, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/android/gms/maps/model/LatLngBounds;DDD)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Camera stopped during a cancellation"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FF)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->d()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(FI)V

    return-void
.end method

.method public final a(FFI)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/y;->A()Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;FF)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-static {p3}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void
.end method

.method public final a(FI)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c()V

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->e:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->f:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(FFFI)F

    return-void
.end method

.method public final a(FIII)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {p4}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(I)I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(FFFI)F

    return-void
.end method

.method public final a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iput p1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    iput p2, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    iput p3, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c:I

    iput p4, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->g:Lcom/google/android/gms/maps/internal/aa;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;I)V
    .locals 8

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/a/a/f;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->c:F

    iget v4, p1, Lcom/google/android/gms/maps/model/CameraPosition;->d:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/a/a/f;FFFF)V

    invoke-virtual {v7, v0, v6, v6}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;FI)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/a/a/f;

    move-result-object v1

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/a/a/f;FFFF)V

    invoke-static {p3}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/a/a/f;

    move-result-object v1

    iget v2, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    iget v3, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/a/a/f;FFFF)V

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;II)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getHeight()I

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Error using newLatLngBounds(LatLngBounds, int): Map size can\'t be 0. Most likely, layout has not yet occured for the map view.  Either wait until layout has occurred or use newLatLngBounds(LatLngBounds, int, int, int) which allows you to specify the map\'s dimensions."

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/android/gms/maps/model/LatLngBounds;IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;IIII)V
    .locals 10

    const-wide/16 v8, 0x0

    int-to-double v0, p2

    int-to-double v2, p3

    mul-int/lit8 v4, p4, 0x2

    int-to-double v4, v4

    sub-double v4, v0, v4

    mul-int/lit8 v0, p4, 0x2

    int-to-double v0, v0

    sub-double v6, v2, v0

    cmpl-double v0, v4, v8

    if-lez v0, :cond_0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "View size is too small after padding"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a()I

    move-result v0

    int-to-double v0, v0

    sub-double v2, v4, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b()I

    move-result v0

    int-to-double v0, v0

    sub-double v4, v6, v0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->d:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/android/gms/maps/model/LatLngBounds;DDD)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-static {p5}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/cx;ILcom/google/android/gms/maps/internal/e;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Callback supplied with instantaneous camera movement"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Camera moved during a cancellation"

    invoke-static {v2, v0}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    invoke-interface {p1, p0, p2, p4}, Lcom/google/maps/api/android/lib6/c/cx;->a(Lcom/google/maps/api/android/lib6/c/cw;ILcom/google/maps/api/android/lib6/c/bu;)V

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->j:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/c/d;

    invoke-direct {v1, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f:Lcom/google/android/gms/maps/internal/e;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->f()Lcom/google/android/gms/maps/internal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/e;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->i:I

    throw v0
.end method

.method public final b(FI)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-static {p2}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(FI)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/maps/internal/aa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e()V

    return-void
.end method

.method public final c()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/maps/internal/aa;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->h:Ljava/util/Collection;

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->e()V

    return-void
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/c;->c:Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a()F

    move-result v0

    return v0
.end method
