.class final Lcom/google/android/location/geofencer/service/aj;
.super Landroid/hardware/location/GeofenceHardwareCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/geofencer/service/ai;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/location/Location;

.field private volatile d:Ljava/util/concurrent/CountDownLatch;

.field private volatile e:Ljava/util/concurrent/CountDownLatch;

.field private final f:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/google/android/location/geofencer/service/ai;)V
    .locals 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/aj;->a:Lcom/google/android/location/geofencer/service/ai;

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareCallback;-><init>()V

    .line 361
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->b:Ljava/lang/Object;

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->c:Landroid/location/Location;

    .line 368
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 407
    if-nez v1, :cond_1

    .line 409
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "GeofenceHardware"

    const-string v2, "waitForAddGeofenceStatus: time out."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    .line 422
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    monitor-enter v2

    move v1, v0

    .line 416
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 417
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 416
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    :cond_3
    monitor-exit v2

    .line 422
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "GeofenceHardware"

    const-string v1, "Ongoing add geofence operation."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 381
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    .line 382
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 383
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 396
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "GeofenceHardware"

    const-string v1, "Ongoing remove geofence operation."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    .line 435
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    .line 436
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 445
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2710

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 454
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "GeofenceHardware"

    const-string v1, "waitForRemoveGeofenceStatus: time out."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_0
    return-void
.end method

.method public final onGeofenceAdd(II)V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceAdd(II)V

    .line 462
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    :cond_0
    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onGeofenceRemove(II)V
    .locals 3

    .prologue
    .line 472
    invoke-super {p0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceRemove(II)V

    .line 473
    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "GeofenceHardware"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove geofence "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 479
    :cond_1
    return-void
.end method

.method public final onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 8

    .prologue
    .line 484
    invoke-super/range {p0 .. p6}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V

    .line 485
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/aj;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    if-eqz p3, :cond_1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->c:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/aj;->c:Landroid/location/Location;

    .line 493
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->a:Lcom/google/android/location/geofencer/service/ai;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/ai;->d:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0, p3}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/location/Location;)V

    .line 496
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_2

    .line 499
    packed-switch p2, :pswitch_data_0

    .line 510
    :pswitch_0
    const-string v0, "unknown"

    move-object v1, v0

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->a:Lcom/google/android/location/geofencer/service/ai;

    iget-object v2, v0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    monitor-enter v2

    .line 514
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/aj;->a:Lcom/google/android/location/geofencer/service/ai;

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/ai;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 515
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "onGeofenceTransition: geofenceState = %s, geofenceId=%d, transition=%s location=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object p3, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v1, "GeofenceHardware"

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    :cond_2
    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 501
    :pswitch_1
    const-string v0, "enter"

    move-object v1, v0

    .line 502
    goto :goto_0

    .line 504
    :pswitch_2
    const-string v0, "exit"

    move-object v1, v0

    .line 505
    goto :goto_0

    .line 507
    :pswitch_3
    const-string v0, "uncertain"

    move-object v1, v0

    .line 508
    goto :goto_0

    .line 520
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
