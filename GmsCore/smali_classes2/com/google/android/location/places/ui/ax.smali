.class final Lcom/google/android/location/places/ui/ax;
.super Lcom/google/android/location/places/ui/az;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/aw;

.field private d:Lcom/google/android/gms/location/places/UserAddedPlace;

.field private e:Lcom/google/android/gms/common/api/y;

.field private f:Lcom/google/android/gms/location/places/y;

.field private g:Lcom/google/android/gms/location/places/h;


# direct methods
.method public constructor <init>(Lcom/google/android/location/places/ui/aw;Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iput-object p1, p0, Lcom/google/android/location/places/ui/ax;->a:Lcom/google/android/location/places/ui/aw;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/places/ui/az;-><init>(Lcom/google/android/location/places/ui/aw;B)V

    .line 419
    iput-object v1, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    .line 420
    iput-object v1, p0, Lcom/google/android/location/places/ui/ax;->f:Lcom/google/android/gms/location/places/y;

    .line 421
    iput-object v1, p0, Lcom/google/android/location/places/ui/ax;->g:Lcom/google/android/gms/location/places/h;

    .line 424
    iput-object p2, p0, Lcom/google/android/location/places/ui/ax;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    .line 425
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Lcom/google/android/location/places/ui/az;->a()V

    .line 476
    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->b()V

    .line 479
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 429
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v3, p0, Lcom/google/android/location/places/ui/ax;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v3}, Lcom/google/android/location/places/ui/aw;->b(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/gms/common/api/j;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/places/ui/ax;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/location/places/UserAddedPlace;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    iget-object v3, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    sget-object v0, Lcom/google/android/location/x;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v0}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/y;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ax;->f:Lcom/google/android/gms/location/places/y;

    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->f:Lcom/google/android/gms/location/places/y;

    iget-object v0, v0, Lcom/google/android/gms/location/places/y;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Places"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed add a place for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/places/ui/ax;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v0, v1

    .line 433
    :goto_0
    iput-object v2, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    .line 435
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ax;->b:Z

    if-eqz v1, :cond_5

    .line 446
    :goto_1
    return-void

    .line 429
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->f:Lcom/google/android/gms/location/places/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->f:Lcom/google/android/gms/location/places/y;

    iget-object v0, v0, Lcom/google/android/gms/location/places/y;->b:Lcom/google/android/gms/location/places/h;

    :goto_2
    iput-object v0, p0, Lcom/google/android/location/places/ui/ax;->g:Lcom/google/android/gms/location/places/h;

    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->g:Lcom/google/android/gms/location/places/h;

    if-nez v0, :cond_4

    const-string v0, "Places"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Places"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad add a place result for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/places/ui/ax;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/places/ui/ax;->g:Lcom/google/android/gms/location/places/h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/location/places/ui/ax;->e:Lcom/google/android/gms/common/api/y;

    throw v0

    .line 438
    :cond_5
    monitor-enter p0

    .line 439
    :try_start_2
    iget-object v1, p0, Lcom/google/android/location/places/ui/ax;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 440
    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ax;->g:Lcom/google/android/gms/location/places/h;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->c(Lcom/google/android/gms/location/places/h;)V

    .line 446
    :cond_6
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/places/ui/ax;->a:Lcom/google/android/location/places/ui/aw;

    invoke-static {v0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/aw;)Lcom/google/android/location/places/ui/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ax;->d:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/ay;->a(Lcom/google/android/gms/location/places/UserAddedPlace;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method
