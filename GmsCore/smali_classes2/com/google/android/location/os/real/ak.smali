.class final Lcom/google/android/location/os/real/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/ah;

.field private final b:Lcom/google/android/location/os/real/am;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/LinkedList;

.field private volatile e:Lcom/google/android/location/k/a;

.field private f:Lcom/google/android/location/p/c;

.field private volatile g:J

.field private h:Lcom/google/android/location/k/g;

.field private final i:Lcom/google/android/location/collectionlib/cy;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/ah;Lcom/google/android/location/os/real/am;Landroid/os/PowerManager;)V
    .locals 6

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/os/real/ak;->g:J

    .line 337
    iput-object p2, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    .line 338
    sget-object v0, Lcom/google/android/location/os/real/ai;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/am;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "GlsClient"

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    .line 339
    new-instance v0, Lcom/google/android/location/collectionlib/cy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "GlsClient"

    sget-object v5, Lcom/google/android/location/collectionlib/cy;->a:[S

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->i:Lcom/google/android/location/collectionlib/cy;

    .line 341
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->d:Ljava/util/LinkedList;

    .line 342
    return-void

    .line 338
    :pswitch_0
    const-string v0, "GlsClient-query"

    goto :goto_0

    :pswitch_1
    const-string v0, "GlsClient-upload"

    goto :goto_0

    :pswitch_2
    const-string v0, "GlsClient-model-query"

    goto :goto_0

    :pswitch_3
    const-string v0, "GlsClient-device-location-query"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    sget-object v1, Lcom/google/android/location/os/real/am;->a:Lcom/google/android/location/os/real/am;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    sget-object v1, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    sget-object v0, Lcom/google/android/location/os/real/ai;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/am;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsClient"

    const-string v1, "notifyFailure, posting runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    new-instance v1, Lcom/google/android/location/os/real/al;

    iget-object v2, p0, Lcom/google/android/location/os/real/ak;->h:Lcom/google/android/location/k/g;

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/location/os/real/al;-><init>(Lcom/google/android/location/os/real/ak;Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/x;->a(Ljava/lang/Runnable;)Z

    .line 487
    :goto_0
    return-void

    .line 483
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, v3}, Lcom/google/android/location/os/real/x;->b(Lcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, v3}, Lcom/google/android/location/os/real/x;->a(Lcom/google/g/a/b/b/a;)V

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    .line 583
    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->h:Lcom/google/android/location/k/g;

    .line 584
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->i:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 586
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/real/aj;

    invoke-virtual {p0, v0}, Lcom/google/android/location/os/real/ak;->a(Lcom/google/android/location/os/real/aj;)V

    .line 589
    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lcom/google/android/location/os/real/aj;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :goto_0
    monitor-exit p0

    return-void

    .line 371
    :cond_0
    :try_start_1
    iget-object v3, p1, Lcom/google/android/location/os/real/aj;->a:Lcom/google/g/a/b/b/a;

    .line 372
    iget-object v0, p1, Lcom/google/android/location/os/real/aj;->b:Lcom/google/android/location/p/j;

    .line 373
    iget-object v4, p1, Lcom/google/android/location/os/real/aj;->c:Lcom/google/android/location/k/a;

    .line 374
    iget-object v5, p1, Lcom/google/android/location/os/real/aj;->d:Lcom/google/android/location/k/g;

    .line 376
    if-eqz v0, :cond_1

    .line 377
    iget-object v6, p0, Lcom/google/android/location/os/real/ak;->i:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v6, v0}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->i:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 381
    iput-object v4, p0, Lcom/google/android/location/os/real/ak;->e:Lcom/google/android/location/k/a;

    .line 382
    iput-object v5, p0, Lcom/google/android/location/os/real/ak;->h:Lcom/google/android/location/k/g;

    .line 383
    const/4 v0, 0x1

    iget-object v5, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v5, v5, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/g/a/b/b/a;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    .line 387
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x7

    iget-object v5, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v5, v5, Lcom/google/android/location/os/real/ah;->e:Lcom/google/android/location/f/ag;

    invoke-virtual {v5}, Lcom/google/android/location/f/ag;->c()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 390
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    if-lez v0, :cond_7

    .line 391
    const/4 v0, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 392
    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    sget-object v0, Lcom/google/android/location/d/a;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "verbose"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "on"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 393
    const/16 v0, 0x63

    invoke-virtual {v5, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 394
    if-nez v0, :cond_c

    .line 395
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->o:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 396
    const/16 v2, 0x63

    invoke-virtual {v5, v2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    move-object v2, v0

    .line 398
    :goto_2
    iget-object v5, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-boolean v0, v5, Lcom/google/android/location/os/real/ah;->a:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const/4 v6, 0x1

    invoke-virtual {v2, v0, v6}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/google/android/location/os/real/ah;->a:Z

    :cond_4
    sget-object v0, Lcom/google/android/location/d/a;->r:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Lcom/google/g/a/b/b/a;->a(IZ)Lcom/google/g/a/b/b/a;

    iget-object v0, v5, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v5, "com.google"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_7

    aget-object v1, v5, v0

    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/g/a/b/b/a;->a(Ljava/lang/String;)V

    sget-boolean v7, Lcom/google/android/location/j/a;->b:Z

    if-eqz v7, :cond_5

    const-string v7, "GlsClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "adding account "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    .line 392
    goto :goto_1

    .line 403
    :cond_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    :try_start_2
    invoke-virtual {v3, v1}, Lcom/google/g/a/b/b/a;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :try_start_3
    new-instance v2, Lcom/google/android/location/p/c;

    sget-object v0, Lcom/google/android/location/os/real/ai;->a:[I

    iget-object v3, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v3}, Lcom/google/android/location/os/real/am;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    :try_start_4
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    const-string v2, "query(): unable to write request to payload"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    :cond_8
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->b()V

    .line 409
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->c()V

    goto/16 :goto_0

    .line 413
    :pswitch_0
    const-string v0, "g:loc/ql"

    :goto_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/location/p/c;-><init>(Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    .line 415
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    invoke-virtual {v0, p0}, Lcom/google/android/location/p/c;->a(Lcom/google/j/b/n;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    invoke-virtual {v0}, Lcom/google/android/location/p/c;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 418
    :try_start_5
    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    monitor-enter v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 420
    :try_start_6
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    invoke-virtual {v0}, Lcom/google/android/location/p/c;->c()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/google/android/location/os/real/ak;->g:J

    .line 421
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 429
    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    sget-object v1, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    if-ne v0, v1, :cond_a

    iget-wide v0, p0, Lcom/google/android/location/os/real/ak;->g:J

    invoke-interface {v4, v0, v1}, Lcom/google/android/location/k/a;->a(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    .line 432
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    const-string v1, "Collection Policy prohibits upload."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_9
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->b()V

    .line 434
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->c()V

    goto/16 :goto_0

    .line 413
    :pswitch_1
    const-string v0, "g:loc/ul"

    goto :goto_4

    :pswitch_2
    const-string v0, "g:loc/dl"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 421
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 424
    :catch_1
    move-exception v0

    const-wide/16 v0, 0x0

    :try_start_9
    iput-wide v0, p0, Lcom/google/android/location/os/real/ak;->g:J

    goto :goto_5

    .line 438
    :cond_a
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/location/os/real/ak;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes to MASF."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->h:Lcom/google/android/location/d/j;

    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/d/j;->a(Lcom/google/j/b/m;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_c
    move-object v2, v0

    goto/16 :goto_2

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 497
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    if-eq p1, v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_0
    if-eqz p2, :cond_9

    .line 505
    :try_start_1
    invoke-virtual {p2}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 506
    :try_start_2
    iget v0, p2, Lcom/google/j/b/o;->d:I

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_3

    .line 507
    sget-object v0, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-static {v1, v0}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v2

    .line 508
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/g/a/b/b/a;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 515
    iget-object v3, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v3, v3, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->e:Lcom/google/android/location/f/ag;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/f/ag;->a(Lcom/google/g/a/b/b/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 529
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 531
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 536
    :cond_4
    :goto_1
    :try_start_4
    sget-object v0, Lcom/google/android/location/os/real/ai;->a:[I

    iget-object v1, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1}, Lcom/google/android/location/os/real/am;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is unhandled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 525
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 526
    :goto_2
    :try_start_5
    sget-boolean v3, Lcom/google/android/location/j/a;->e:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    const-string v4, "requestCompleted()"

    invoke-static {v3, v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 529
    :cond_5
    if-eqz v1, :cond_4

    .line 531
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 533
    :catch_1
    move-exception v0

    goto :goto_1

    .line 529
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 531
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 533
    :cond_6
    :goto_4
    :try_start_8
    throw v0

    .line 540
    :pswitch_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "GlsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Posting GLS response is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    new-instance v1, Lcom/google/android/location/os/real/al;

    iget-object v3, p0, Lcom/google/android/location/os/real/ak;->h:Lcom/google/android/location/k/g;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/location/os/real/al;-><init>(Lcom/google/android/location/os/real/ak;Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/x;->a(Ljava/lang/Runnable;)Z

    .line 556
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->c()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 544
    :pswitch_1
    :try_start_9
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/x;->b(Lcom/google/g/a/b/b/a;)V

    .line 545
    iget-wide v0, p0, Lcom/google/android/location/os/real/ak;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 546
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->e:Lcom/google/android/location/k/a;

    iget-wide v2, p0, Lcom/google/android/location/os/real/ak;->g:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/location/k/a;->b(J)V

    goto :goto_5

    .line 550
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->a:Lcom/google/android/location/os/real/ah;

    iget-object v0, v0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, v2}, Lcom/google/android/location/os/real/x;->a(Lcom/google/g/a/b/b/a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 533
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 529
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 525
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->f:Lcom/google/android/location/p/c;

    if-eq p1, v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Response to unexpected request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 564
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->c:Ljava/lang/String;

    const-string v1, "requestFailed"

    invoke-static {v0, v1, p2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->b:Lcom/google/android/location/os/real/am;

    sget-object v1, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    if-ne v0, v1, :cond_2

    instance-of v0, p2, Lcom/google/j/e;

    if-eqz v0, :cond_2

    .line 569
    iget-wide v0, p0, Lcom/google/android/location/os/real/ak;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/google/android/location/os/real/ak;->e:Lcom/google/android/location/k/a;

    iget-wide v2, p0, Lcom/google/android/location/os/real/ak;->g:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/location/k/a;->b(J)V

    .line 573
    :cond_2
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->b()V

    .line 574
    invoke-direct {p0}, Lcom/google/android/location/os/real/ak;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    monitor-exit p0

    return-void
.end method
