.class public final Lcom/google/maps/api/android/lib6/c/ed;
.super Lcom/google/android/gms/maps/model/a/h;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/al;


# static fields
.field private static final a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

.field private static u:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/maps/api/android/lib6/c/ak;

.field private final d:Lcom/google/maps/api/android/lib6/c/bu;

.field private e:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private f:F

.field private g:F

.field private h:Lcom/google/android/gms/maps/model/LatLng;

.field private i:F

.field private j:I

.field private k:I

.field private l:Lcom/google/maps/api/android/lib6/c/cj;

.field private m:F

.field private n:Lcom/google/maps/api/android/lib6/c/ee;

.field private o:F

.field private p:F

.field private final q:Lcom/google/maps/api/android/lib6/c/cr;

.field private r:F

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/ed;->a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/c/ed;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Lcom/google/maps/api/android/lib6/c/ak;Lcom/google/maps/api/android/lib6/c/cr;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/a/h;-><init>()V

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ak;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->c:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-static {p4}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    const-string v0, "go%d"

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/google/maps/api/android/lib6/c/ed;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    move v0, v1

    :goto_0
    const-string v3, "line width is negative"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    const-string v3, "Options doesn\'t specify an image"

    invoke-static {v0, v3}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->k()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->o:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->l()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->p:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->s:Z

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->r:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->m:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->c()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/cj;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/maps/api/android/lib6/c/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/c/cr;->a(Lcom/google/maps/api/android/lib6/c/cj;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->j:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Options doesn\'t specify a position"

    invoke-static {v2, v0}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->g()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ed;->u()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->i:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ed;->a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->h()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->Z:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ed;->a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ae:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m()Z

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ed;->a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->m()Z

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ad:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i()F

    move-result v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/ed;->a:Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ac:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->e()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->f()F

    move-result v0

    :goto_3
    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->g:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ed;->v()V

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    mul-float/2addr v0, v1

    goto :goto_3
.end method

.method private a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->t:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit p0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->n:Lcom/google/maps/api/android/lib6/c/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->n:Lcom/google/maps/api/android/lib6/c/ee;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/ee;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private u()V
    .locals 14

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v0, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v0, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v2, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    cmpg-double v8, v0, v2

    if-gez v8, :cond_0

    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v8

    :cond_0
    iget v8, p0, Lcom/google/maps/api/android/lib6/c/ed;->o:F

    iget v9, p0, Lcom/google/maps/api/android/lib6/c/ed;->p:F

    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v9

    float-to-double v12, v11

    mul-double/2addr v4, v12

    float-to-double v12, v9

    mul-double/2addr v6, v12

    add-double/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    float-to-double v6, v6

    mul-double/2addr v2, v6

    float-to-double v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    invoke-direct {v10, v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v10, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/c/dv;->a(DD)D

    move-result-wide v2

    iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x41584db040000000L    # 6371009.0

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide v2, 0x41584db040000000L    # 6371009.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->g:F

    return-void
.end method

.method private v()V
    .locals 12

    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    float-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/dv;->a(Lcom/google/android/gms/maps/model/LatLng;D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/maps/api/android/lib6/c/ed;->g:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/c/dv;->a(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget v6, p0, Lcom/google/maps/api/android/lib6/c/ed;->p:F

    float-to-double v6, v6

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget v8, p0, Lcom/google/maps/api/android/lib6/c/ed;->p:F

    sub-float v8, v10, v8

    float-to-double v8, v8

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget v8, p0, Lcom/google/maps/api/android/lib6/c/ed;->o:F

    sub-float v8, v10, v8

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget v10, p0, Lcom/google/maps/api/android/lib6/c/ed;->o:F

    float-to-double v10, v10

    mul-double/2addr v0, v10

    sub-double v0, v8, v0

    new-instance v8, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v9, v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v8, v9, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    iput-object v8, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->Y:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ed;->l()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->c:Lcom/google/maps/api/android/lib6/c/ak;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/c/ak;->b(Lcom/google/maps/api/android/lib6/c/al;)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(FF)V

    return-void
.end method

.method public final a(FF)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->aa:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    :goto_0
    iput p2, p0, Lcom/google/maps/api/android/lib6/c/ed;->g:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ed;->v()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float p2, v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/e/i;)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->af:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->c(Lcom/google/maps/api/android/lib6/c/cj;)V

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/c/cj;->a(Lcom/google/android/gms/e/i;)Lcom/google/maps/api/android/lib6/c/cj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->a(Lcom/google/maps/api/android/lib6/c/cj;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->j:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/cs;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->k:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ab:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ed;->v()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ed;->u()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->n:Lcom/google/maps/api/android/lib6/c/ee;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ad:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->s:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/a/g;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->Z:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->i:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->h:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final c(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ac:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->r:F

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void
.end method

.method public final d()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->f:F

    return v0
.end method

.method public final d(F)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->d:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->ae:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/c/ed;->m:F

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ed;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->g:F

    return v0
.end method

.method public final declared-synchronized f()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ed;->m()F

    move-result v0

    return v0
.end method

.method public final h()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->r:F

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ed;->s()Z

    move-result v0

    return v0
.end method

.method public final j()F
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ed;->q()F

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->n:Lcom/google/maps/api/android/lib6/c/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->n:Lcom/google/maps/api/android/lib6/c/ee;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ee;->a()V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->t:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->c(Lcom/google/maps/api/android/lib6/c/cj;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final declared-synchronized o()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->o:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->p:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->m:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->r:F

    return v0
.end method

.method public final declared-synchronized s()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Lcom/google/maps/api/android/lib6/c/cs;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ed;->q:Lcom/google/maps/api/android/lib6/c/cr;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ed;->l:Lcom/google/maps/api/android/lib6/c/cj;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cr;->b(Lcom/google/maps/api/android/lib6/c/cj;)Lcom/google/maps/api/android/lib6/c/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
