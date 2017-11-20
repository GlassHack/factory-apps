.class public final Lcom/google/maps/api/android/lib6/c/ah;
.super Lcom/google/android/gms/maps/internal/ak;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/cw;

.field private final b:Lcom/google/android/gms/maps/internal/q;

.field private final c:Lcom/google/maps/api/android/lib6/c/ag;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcom/google/maps/api/android/lib6/c/aj;

.field private g:Landroid/location/Location;

.field private h:Lcom/google/android/gms/maps/internal/q;

.field private final i:Lcom/google/maps/api/android/lib6/c/bu;

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/gms/maps/internal/be;

.field private m:Lcom/google/android/gms/maps/internal/bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/c/cw;Lcom/google/maps/api/android/lib6/c/ag;Lcom/google/maps/api/android/lib6/c/aj;Lcom/google/android/gms/maps/internal/q;Lcom/google/maps/api/android/lib6/c/bu;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ak;-><init>()V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/cw;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->a:Lcom/google/maps/api/android/lib6/c/cw;

    invoke-static {p4}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ag;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->c:Lcom/google/maps/api/android/lib6/c/ag;

    invoke-static {p5}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/aj;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->f:Lcom/google/maps/api/android/lib6/c/aj;

    invoke-static {p6}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/q;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->b:Lcom/google/android/gms/maps/internal/q;

    invoke-static {p6}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/q;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    invoke-static {p7}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/bu;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->i:Lcom/google/maps/api/android/lib6/c/bu;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->e:Landroid/content/res/Resources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->k:Z

    return-void
.end method

.method private a(Lcom/google/android/gms/maps/model/LatLng;F)F
    .locals 12

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->a:Lcom/google/maps/api/android/lib6/c/cw;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/cw;->c()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->a:Lcom/google/maps/api/android/lib6/c/cw;

    float-to-double v2, p2

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/c/dv;->a(D)D

    move-result-wide v4

    invoke-static {p1, v2, v3}, Lcom/google/maps/api/android/lib6/c/dv;->a(Lcom/google/android/gms/maps/model/LatLng;D)D

    move-result-wide v2

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    add-double/2addr v6, v4

    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    sub-double v4, v8, v4

    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    add-double/2addr v8, v2

    iget-wide v10, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    sub-double v2, v10, v2

    new-instance v10, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v11, v4, v5, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v10, v11, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-interface {v1, v10}, Lcom/google/maps/api/android/lib6/c/cw;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/ah;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ah;->c:Lcom/google/maps/api/android/lib6/c/ag;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/c/ag;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->c:Lcom/google/maps/api/android/lib6/c/ag;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/c/ag;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->f:Lcom/google/maps/api/android/lib6/c/aj;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->a:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/c/y;->y()Lcom/google/maps/api/android/lib6/gmm6/o/c;

    move-result-object v1

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/maps/api/android/lib6/gmm6/o/d;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/e;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;-><init>()V

    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    iput-boolean v5, v3, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a:Z

    sget v4, Lcom/google/android/gms/maps/y;->e:I

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a()Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/e;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;-><init>()V

    invoke-virtual {v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(Z)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    iput-boolean v6, v3, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a:Z

    sget v4, Lcom/google/android/gms/maps/y;->a:I

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a(I)Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->a()Lcom/google/maps/api/android/lib6/gmm6/o/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/e;->b()Lcom/google/maps/api/android/lib6/gmm6/o/d;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a([Lcom/google/maps/api/android/lib6/gmm6/o/d;)V

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/c/aj;->b:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/gms/maps/x;->j:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/c/aj;->b:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/gms/maps/z;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/c/aj;->b:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/gms/maps/z;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(FII)V

    :cond_2
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->a:Lcom/google/maps/api/android/lib6/c/y;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/c/y;->a(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    invoke-interface {v0, p0}, Lcom/google/android/gms/maps/internal/q;->a(Lcom/google/android/gms/maps/internal/aj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ah;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-static {v0}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/ah;->a(Lcom/google/android/gms/e/i;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/e/i;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/google/android/gms/e/m;->a(Lcom/google/android/gms/e/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->f:Lcom/google/maps/api/android/lib6/c/aj;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/g;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V

    iput-object v2, v3, Lcom/google/maps/api/android/lib6/gmm6/l/g;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    iput-boolean v2, v3, Lcom/google/maps/api/android/lib6/gmm6/l/g;->e:Z

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/c/aj;->a:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v1, v6, v6}, Lcom/google/maps/api/android/lib6/c/y;->a(ZZ)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->l:Lcom/google/android/gms/maps/internal/be;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->l:Lcom/google/android/gms/maps/internal/be;

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v2}, Lcom/google/android/gms/e/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/e/i;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/internal/be;->a(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/internal/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ah;->m:Lcom/google/android/gms/maps/internal/bb;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ah;->l:Lcom/google/android/gms/maps/internal/be;

    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/internal/q;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/q;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    invoke-interface {v0, p0}, Lcom/google/android/gms/maps/internal/q;->a(Lcom/google/android/gms/maps/internal/aj;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_2
    iget-object p1, p0, Lcom/google/maps/api/android/lib6/c/ah;->b:Lcom/google/android/gms/maps/internal/q;

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/c/ah;->k:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ah;->f()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ah;->f()V

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->h:Lcom/google/android/gms/maps/internal/q;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/q;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->f:Lcom/google/maps/api/android/lib6/c/aj;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/c/aj;->a:Lcom/google/maps/api/android/lib6/c/y;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c;

    invoke-interface {v1, v0}, Lcom/google/maps/api/android/lib6/c/y;->b(Lcom/google/maps/api/android/lib6/gmm6/o/bt;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->k:Z

    return v0
.end method

.method public final e()Landroid/location/Location;
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    const-string v1, "MyLocation layer not enabled"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->i:Lcom/google/maps/api/android/lib6/c/bu;

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->bc:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->a(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->m:Lcom/google/android/gms/maps/internal/bb;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->m:Lcom/google/android/gms/maps/internal/bb;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/bb;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->j:Z

    const-string v1, "MyLocation layer not enabled"

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ah;->a(Lcom/google/android/gms/maps/model/LatLng;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ah;->a:Lcom/google/maps/api/android/lib6/c/cw;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/cw;->c()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/CameraPosition;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/model/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->a(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->a:Lcom/google/maps/api/android/lib6/c/cw;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcom/google/maps/api/android/lib6/c/cw;->a(Lcom/google/android/gms/maps/model/CameraPosition;I)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/bc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ah;->g:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ah;->a(Lcom/google/android/gms/maps/model/LatLng;F)F

    move-result v1

    new-instance v2, Lcom/google/maps/api/android/lib6/c/ax;

    invoke-direct {v2, v0, v1}, Lcom/google/maps/api/android/lib6/c/ax;-><init>(Lcom/google/android/gms/maps/model/LatLng;F)V

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/c/ai;-><init>(Lcom/google/maps/api/android/lib6/c/ah;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/c/ax;->a(Lcom/google/maps/api/android/lib6/c/ay;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    goto/16 :goto_0
.end method
