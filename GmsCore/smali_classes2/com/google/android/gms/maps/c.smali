.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/maps/internal/k;

.field private b:Lcom/google/android/gms/maps/s;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/internal/k;)V
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/k;

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    .line 399
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    .prologue
    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/k;->a()Lcom/google/android/gms/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/j;
    .locals 2

    .prologue
    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/p;

    move-result-object v1

    .line 608
    if-eqz v1, :cond_0

    .line 609
    new-instance v0, Lcom/google/android/gms/maps/model/j;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/j;-><init>(Lcom/google/android/gms/maps/model/a/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 1341
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/google/android/gms/maps/internal/k;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    return-void

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/a;)V
    .locals 2

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    iget-object v1, p1, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/e/i;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/k;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    if-nez p1, :cond_0

    .line 1189
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/be;)V

    .line 1201
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    new-instance v1, Lcom/google/android/gms/maps/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/d;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/be;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Lcom/google/android/gms/maps/a;)V
    .locals 2

    .prologue
    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    iget-object v1, p1, Lcom/google/android/gms/maps/a;->a:Lcom/google/android/gms/e/i;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->b(Lcom/google/android/gms/e/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->b(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()Landroid/location/Location;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 901
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/k;->j()Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()Lcom/google/android/gms/maps/s;
    .locals 2

    .prologue
    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/s;

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lcom/google/android/gms/maps/s;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/k;->k()Lcom/google/android/gms/maps/internal/cf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/s;-><init>(Lcom/google/android/gms/maps/internal/cf;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/s;

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c;->b:Lcom/google/android/gms/maps/s;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()Lcom/google/android/gms/maps/n;
    .locals 2

    .prologue
    .line 976
    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/n;

    iget-object v1, p0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/k;->l()Lcom/google/android/gms/maps/internal/bq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/n;-><init>(Lcom/google/android/gms/maps/internal/bq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
