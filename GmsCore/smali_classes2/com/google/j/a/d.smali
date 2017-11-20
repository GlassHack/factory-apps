.class public final Lcom/google/j/a/d;
.super Lcom/google/j/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/a/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Lcom/google/j/a/c;

.field private c:Lcom/google/g/a/b/f;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Vector;

.field private i:Z

.field private j:Ljava/io/DataInputStream;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:I

.field private n:Lcom/google/j/g;

.field private o:[B

.field private p:I

.field private q:J


# direct methods
.method public constructor <init>(Lcom/google/j/a/c;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-direct {p0}, Lcom/google/j/a/a;-><init>()V

    .line 236
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/j/a/d;->a:J

    .line 243
    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/j/a/d;->e:Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    .line 282
    iput-object p2, p0, Lcom/google/j/a/d;->g:Ljava/lang/String;

    .line 283
    iput v2, p0, Lcom/google/j/a/d;->p:I

    .line 284
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/j/a/d;->h:Ljava/util/Vector;

    .line 285
    iput-boolean v2, p0, Lcom/google/j/a/d;->i:Z

    .line 286
    return-void
.end method

.method private declared-synchronized m()J
    .locals 2

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/j/a/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/j/a/d;->o:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/j/a/d;->n:Lcom/google/j/g;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized G_()I
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->a()V

    .line 305
    iget v0, p0, Lcom/google/j/a/d;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/j/a/d;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/a/d;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/j/a/d;->j:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 292
    iget-object v0, p0, Lcom/google/j/a/d;->c:Lcom/google/g/a/b/f;

    invoke-static {v0}, Lcom/google/g/a/b/i;->a(Lcom/google/g/a/b/f;)V

    .line 293
    invoke-super {p0}, Lcom/google/j/a/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/g/a/d/a;)V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/google/j/a/d;->a(Lcom/google/g/a/d/a;)V

    .line 495
    iget-object v0, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    invoke-virtual {v0, p0}, Lcom/google/j/a/c;->a(Lcom/google/j/a/d;)Z

    .line 496
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/j/a/d;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()J
    .locals 2

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->a()V

    .line 311
    iget-wide v0, p0, Lcom/google/j/a/d;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->a()V

    .line 317
    iget-object v0, p0, Lcom/google/j/a/d;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/google/j/a/d;->p:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/j/a/d;->q:J

    .line 480
    invoke-super {p0}, Lcom/google/j/a/a;->i()V

    .line 482
    :cond_0
    return-void
.end method

.method public final declared-synchronized j()Ljava/io/DataInputStream;
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->a()V

    .line 323
    iget-object v0, p0, Lcom/google/j/a/d;->j:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/google/j/a/d;->q:J

    return-wide v0
.end method

.method public final declared-synchronized l()V
    .locals 2

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->H_()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 581
    iget-object v0, p0, Lcom/google/j/a/d;->c:Lcom/google/g/a/b/f;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/j/a/d;->c:Lcom/google/g/a/b/f;

    .line 584
    :cond_0
    new-instance v0, Lcom/google/j/a/g;

    invoke-direct {v0}, Lcom/google/j/a/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/j/a/d;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_1
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    iget-object v0, v0, Lcom/google/j/a/c;->a:Lcom/google/g/a/d/c;

    .line 337
    new-instance v5, Lcom/google/j/a/e;

    invoke-direct {v5, v0}, Lcom/google/j/a/e;-><init>(Lcom/google/g/a/d/c;)V

    .line 338
    invoke-virtual {v5, p0}, Lcom/google/j/a/e;->a(Lcom/google/j/a/d;)V

    .line 339
    invoke-direct {p0}, Lcom/google/j/a/d;->m()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/j/a/e;->a(J)V

    .line 340
    invoke-virtual {v5}, Lcom/google/j/a/e;->d()V

    .line 369
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 370
    :try_start_1
    invoke-virtual {p0}, Lcom/google/j/a/d;->I_()V

    .line 372
    invoke-virtual {p0}, Lcom/google/j/a/d;->i()V

    .line 373
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :try_start_2
    iget-object v0, p0, Lcom/google/j/a/d;->e:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 376
    iget-object v3, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    iget-object v4, p0, Lcom/google/j/a/d;->g:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/j/a/c;->b:Lcom/google/g/a/b/g;

    invoke-interface {v3, v4, v0}, Lcom/google/g/a/b/g;->a(Ljava/lang/String;Z)Lcom/google/g/a/b/f;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-result-object v3

    .line 378
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 379
    :try_start_4
    invoke-virtual {p0}, Lcom/google/j/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    invoke-virtual {v5}, Lcom/google/j/a/e;->a()I

    .line 469
    invoke-static {v1}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 471
    invoke-static {v1}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 472
    invoke-static {v3}, Lcom/google/g/a/b/i;->a(Lcom/google/g/a/b/f;)V

    :goto_0
    return-void

    .line 373
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 470
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 456
    :goto_1
    :try_start_6
    iget-object v4, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    iget-object v4, v4, Lcom/google/j/a/c;->b:Lcom/google/g/a/b/g;

    .line 457
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 458
    :try_start_7
    invoke-virtual {p0}, Lcom/google/j/a/d;->H_()I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 459
    invoke-virtual {p0, v0}, Lcom/google/j/a/d;->a(Ljava/lang/Exception;)V

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/google/j/a/d;->H_()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 464
    :cond_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 467
    invoke-virtual {v5}, Lcom/google/j/a/e;->a()I

    .line 469
    invoke-static {v1}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 471
    invoke-static {v2}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 472
    invoke-static {v3}, Lcom/google/g/a/b/i;->a(Lcom/google/g/a/b/f;)V

    goto :goto_0

    .line 384
    :cond_2
    :try_start_8
    iput-object v3, p0, Lcom/google/j/a/d;->c:Lcom/google/g/a/b/f;

    .line 386
    invoke-virtual {p0}, Lcom/google/j/a/d;->i()V

    .line 387
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 389
    :try_start_9
    iget-object v0, p0, Lcom/google/j/a/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 390
    const-string v0, "Content-Type"

    iget-object v4, p0, Lcom/google/j/a/d;->f:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/google/g/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v4, v2

    .line 400
    :goto_3
    iget-object v0, p0, Lcom/google/j/a/d;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Lcom/google/j/a/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-interface {v3, v6, v0}, Lcom/google/g/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 387
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 470
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 396
    :cond_3
    const-string v0, "Content-Type"

    const-string v4, "application/binary"

    invoke-interface {v3, v0, v4}, Lcom/google/g/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    .line 467
    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-virtual {v5}, Lcom/google/j/a/e;->a()I

    .line 469
    invoke-static {v1}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 471
    invoke-static {v2}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 472
    invoke-static {v3}, Lcom/google/g/a/b/i;->a(Lcom/google/g/a/b/f;)V

    throw v0

    .line 402
    :cond_4
    :try_start_a
    invoke-direct {p0}, Lcom/google/j/a/d;->n()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 403
    iget-boolean v0, p0, Lcom/google/j/a/d;->i:Z

    if-eqz v0, :cond_6

    .line 404
    const-string v4, "Content-Length"

    iget-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/g/a/b/i;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/a/d;->o:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    :cond_5
    iget-object v0, p0, Lcom/google/j/a/d;->o:[B

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/j/a/d;->o:[B

    array-length v0, v0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/google/g/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_6
    invoke-interface {v3}, Lcom/google/g/a/b/f;->a()Ljava/io/DataOutputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v2

    .line 410
    :goto_6
    :try_start_b
    invoke-direct {p0}, Lcom/google/j/a/d;->n()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result v0

    if-eqz v0, :cond_8

    .line 412
    :try_start_c
    iget-object v0, p0, Lcom/google/j/a/d;->o:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/j/a/d;->o:[B

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 414
    :cond_7
    :goto_7
    :try_start_d
    invoke-static {v2}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 418
    :cond_8
    invoke-interface {v3}, Lcom/google/g/a/b/f;->c()I

    move-result v0

    .line 419
    invoke-interface {v3}, Lcom/google/g/a/b/f;->e()J

    move-result-wide v6

    .line 420
    invoke-interface {v3}, Lcom/google/g/a/b/f;->d()Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-interface {v3}, Lcom/google/g/a/b/f;->b()Ljava/io/DataInputStream;

    move-result-object v1

    .line 423
    invoke-virtual {p0}, Lcom/google/j/a/d;->i()V

    .line 425
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_d

    .line 433
    iget-object v8, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    iget-object v8, v8, Lcom/google/j/a/c;->b:Lcom/google/g/a/b/g;

    invoke-interface {v8}, Lcom/google/g/a/b/g;->a()Z

    .line 438
    :goto_8
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 439
    :try_start_e
    invoke-virtual {p0}, Lcom/google/j/a/d;->f()Z

    move-result v8

    if-nez v8, :cond_e

    .line 440
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 467
    invoke-virtual {v5}, Lcom/google/j/a/e;->a()I

    .line 469
    invoke-static {v1}, Lcom/google/g/a/b/i;->b(Ljava/io/InputStream;)V

    .line 471
    invoke-static {v2}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    .line 472
    invoke-static {v3}, Lcom/google/g/a/b/i;->a(Lcom/google/g/a/b/f;)V

    goto/16 :goto_0

    .line 404
    :cond_9
    :try_start_f
    iget-object v0, p0, Lcom/google/j/a/d;->n:Lcom/google/j/g;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/j/a/d;->n:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->s_()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-result v0

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_5

    .line 412
    :cond_b
    :try_start_10
    iget-object v0, p0, Lcom/google/j/a/d;->n:Lcom/google/j/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/j/a/d;->n:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/g/a/b/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    .line 414
    :catchall_3
    move-exception v0

    :try_start_11
    invoke-static {v2}, Lcom/google/g/a/b/i;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 470
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 412
    :cond_c
    :try_start_12
    iget-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/j/a/d;->d:Ljava/io/InputStream;

    invoke-static {v0, v2}, Lcom/google/g/a/b/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_7

    .line 435
    :cond_d
    :try_start_13
    iget-object v8, p0, Lcom/google/j/a/d;->b:Lcom/google/j/a/c;

    iget-object v8, v8, Lcom/google/j/a/c;->b:Lcom/google/g/a/b/g;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_8

    .line 442
    :cond_e
    :try_start_14
    iput v0, p0, Lcom/google/j/a/d;->m:I

    .line 443
    iput-wide v6, p0, Lcom/google/j/a/d;->l:J

    .line 444
    iput-object v4, p0, Lcom/google/j/a/d;->k:Ljava/lang/String;

    .line 445
    iput-object v1, p0, Lcom/google/j/a/d;->j:Ljava/io/DataInputStream;

    .line 446
    invoke-virtual {p0}, Lcom/google/j/a/d;->J_()V

    .line 447
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 452
    invoke-virtual {v5}, Lcom/google/j/a/e;->a()I

    goto/16 :goto_0

    .line 447
    :catchall_4
    move-exception v0

    :try_start_15
    monitor-exit p0

    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 467
    :catchall_5
    move-exception v0

    goto/16 :goto_4

    .line 464
    :catchall_6
    move-exception v0

    :try_start_16
    monitor-exit p0

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 467
    :catchall_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_4

    :cond_f
    move-object v2, v1

    goto/16 :goto_6
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/j/a/d;->H_()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
