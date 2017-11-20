.class final Lcom/google/android/maps/driveabout/location/i;
.super Lcom/google/android/maps/driveabout/util/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# instance fields
.field private a:J

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Looper;

.field private final f:Ljava/util/LinkedList;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Z

.field private j:I

.field private k:Lcom/google/android/maps/driveabout/location/z;

.field private l:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    const-string v0, "LocationDispatcher"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/util/d;-><init>(Ljava/lang/String;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/i;->a:J

    .line 43
    iput v2, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/location/i;->i:Z

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    .line 71
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    .line 72
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->e()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/i;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/i;I)I
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    return p1
.end method

.method private a(Landroid/location/Location;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 382
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 383
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 387
    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/i;->i:Z

    if-eqz v0, :cond_1

    .line 388
    iget v0, p0, Lcom/google/android/maps/driveabout/location/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/location/i;->j:I

    .line 414
    :cond_0
    return-void

    .line 391
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/location/i;->j:I

    if-lez v0, :cond_2

    .line 392
    const-string v0, "LocationDispatcher"

    iget v2, p0, Lcom/google/android/maps/driveabout/location/i;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dropped gps updates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/location/i;->j:I

    .line 397
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    if-eq v0, v5, :cond_3

    .line 398
    iput v5, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    .line 399
    iget v0, p0, Lcom/google/android/maps/driveabout/location/i;->c:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/maps/driveabout/location/i;->a(ILandroid/os/Bundle;)V

    .line 409
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/l;

    .line 410
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/l;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    .line 401
    :cond_5
    const-string v0, "driveabout_base_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "da_tunnel_heartbeat"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    move-object v0, p1

    .line 403
    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/i;->d()V

    .line 406
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->f()V

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    return-void

    .line 329
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->g()V

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/location/l;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Lcom/google/android/maps/driveabout/location/l;)V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/location/l;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->b(Lcom/google/android/maps/driveabout/location/l;)V

    goto :goto_0

    .line 338
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 341
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 350
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/maps/driveabout/location/z;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Lcom/google/android/maps/driveabout/location/z;)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/i;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/l;)V
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 365
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/l;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 4

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->a()Ljava/lang/String;

    move-result-object v1

    .line 439
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/l;

    .line 440
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-static {v0}, Lcom/google/android/maps/driveabout/location/l;->a(Lcom/google/android/maps/driveabout/location/l;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    goto :goto_0

    .line 444
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 418
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 419
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 433
    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/location/l;)V
    .locals 3

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 372
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/l;

    .line 374
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/l;->b()Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/l;->b()Landroid/location/LocationListener;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/l;->b()Landroid/location/LocationListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 425
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 426
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/i;->start()V

    .line 79
    monitor-enter p0

    .line 81
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/google/android/maps/driveabout/location/k;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/k;-><init>(Lcom/google/android/maps/driveabout/location/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->b:Ljava/lang/Runnable;

    .line 298
    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/i;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/i;->a:J

    .line 301
    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/i;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->k()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->h()V

    .line 357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->e:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->e:Landroid/os/Looper;

    .line 361
    :cond_0
    return-void
.end method

.method private final h()V
    .locals 4

    .prologue
    .line 451
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 452
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 453
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Operation must be called on location thread. Called on "

    .line 455
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 261
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->e:Landroid/os/Looper;

    .line 262
    new-instance v0, Lcom/google/android/maps/driveabout/location/j;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/location/j;-><init>(Lcom/google/android/maps/driveabout/location/i;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "gps"

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;I)V

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, "gps"

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/maps/driveabout/location/l;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/location/l;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v3, 0xb

    .line 114
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/i;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/maps/driveabout/location/l;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/location/l;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v3, 0xc

    .line 126
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    :cond_0
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .prologue
    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const-wide/16 v4, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {v1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->l:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->l:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_1
    const-string v2, "LocationDispatcher"

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->l:Landroid/location/Location;

    if-nez v0, :cond_5

    const-string v0, "None"

    .line 165
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GPS provider switch FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " TO "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/i;->l:Landroid/location/Location;

    .line 173
    :cond_2
    invoke-static {v1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "network"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    :cond_3
    invoke-static {p1}, Lcom/google/android/maps/driveabout/util/f;->a(Landroid/location/Location;)Lcom/google/googlenav/d/a;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/google/googlenav/c/a;->b(Lcom/google/googlenav/d/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-static {}, Lcom/google/googlenav/c/a;->a()Lcom/google/googlenav/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/c/a;->a(Lcom/google/googlenav/d/a;)Lcom/google/googlenav/d/a;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/google/googlenav/d/a;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v7

    .line 179
    invoke-virtual {p1, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 182
    invoke-virtual {v0}, Lcom/google/googlenav/d/a;->b()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v7

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 185
    :cond_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Landroid/location/Location;)V

    goto/16 :goto_0

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->l:Landroid/location/Location;

    .line 165
    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public final onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 227
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/i;->i:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->k:Lcom/google/android/maps/driveabout/location/z;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 236
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/i;->k:Lcom/google/android/maps/driveabout/location/z;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Lcom/google/android/maps/driveabout/location/z;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 214
    invoke-static {p1}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;I)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/i;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
