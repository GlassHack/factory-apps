.class final Lcom/google/android/location/places/ui/ba;
.super Lcom/google/android/location/places/ui/az;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/aw;

.field private final d:Lcom/google/android/gms/maps/model/LatLng;

.field private volatile e:Lcom/google/android/gms/common/api/y;

.field private f:Lcom/google/android/gms/location/places/k;

.field private g:Lcom/google/android/gms/location/places/h;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/aw;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-object p1, p0, Lcom/google/android/location/places/ui/ba;->a:Lcom/google/android/location/places/ui/aw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/places/ui/az;-><init>(Lcom/google/android/location/places/ui/aw;B)V

    .line 343
    iput-object v1, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    .line 344
    iput-object v1, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    .line 345
    iput-object v1, p0, Lcom/google/android/location/places/ui/ba;->g:Lcom/google/android/gms/location/places/h;

    .line 348
    iput-object p2, p0, Lcom/google/android/location/places/ui/ba;->d:Lcom/google/android/gms/maps/model/LatLng;

    .line 349
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 407
    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->b()V

    .line 410
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 353
    :try_start_0
    const-string v0, "%.7f, %.7f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/places/ui/ba;->d:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/places/ui/ba;->d:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->d:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->d:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->b(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-static {}, Lcom/google/android/location/places/ui/aw;->e()Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;I)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    sget-object v0, Lcom/google/android/location/x;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v0}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/k;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/k;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed places query for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v0, v6

    .line 357
    :goto_0
    iput-object v8, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    .line 358
    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/k;->a()V

    .line 362
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ba;->b:Z

    if-eqz v1, :cond_6

    .line 373
    :goto_1
    return-void

    .line 353
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->b(Lcom/google/android/gms/location/places/k;)Lcom/google/android/gms/location/places/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ba;->g:Lcom/google/android/gms/location/places/h;

    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->g:Lcom/google/android/gms/location/places/h;

    if-nez v0, :cond_4

    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Places"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find Place for address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    iput-object v8, p0, Lcom/google/android/location/places/ui/ba;->e:Lcom/google/android/gms/common/api/y;

    .line 358
    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    if-eqz v1, :cond_5

    .line 359
    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->f:Lcom/google/android/gms/location/places/k;

    invoke-virtual {v1}, Lcom/google/android/gms/location/places/k;->a()V

    :cond_5
    throw v0

    .line 365
    :cond_6
    monitor-enter p0

    .line 366
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 367
    if-eqz v0, :cond_8

    .line 368
    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ba;->g:Lcom/google/android/gms/location/places/h;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->b(Lcom/google/android/gms/location/places/h;)V

    .line 373
    :cond_7
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/ba;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->b(Lcom/google/android/gms/location/places/h;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method
