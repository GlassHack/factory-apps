.class final Lcom/google/android/maps/driveabout/nav/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/content/Context;

.field private final d:Lcom/google/android/maps/driveabout/nav/ad;

.field private e:Lcom/google/android/maps/driveabout/nav/ac;

.field private final f:Ljava/util/List;

.field private g:Lcom/google/android/maps/driveabout/nav/f;

.field private h:Lcom/google/android/maps/driveabout/nav/f;

.field private i:Lcom/google/android/maps/driveabout/nav/f;

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Ljava/lang/Thread;

.field private m:Lcom/google/android/maps/driveabout/e/u;

.field private n:Z

.field private final o:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/e/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    .line 136
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/nav/ac;-><init>(Lcom/google/android/maps/driveabout/nav/o;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    .line 139
    iput-object p3, p0, Lcom/google/android/maps/driveabout/nav/o;->l:Ljava/lang/Thread;

    .line 140
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/e/u;

    .line 141
    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/o;->o:Ljava/io/File;

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    .line 143
    iput-object p5, p0, Lcom/google/android/maps/driveabout/nav/o;->c:Landroid/content/Context;

    .line 144
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/f;->n()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    .line 750
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_1

    .line 751
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->o()V

    .line 753
    :cond_1
    return-void
.end method

.method private declared-synchronized a(ILcom/google/android/maps/driveabout/nav/f;)V
    .locals 3

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 564
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 565
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/nav/n;->onRouteFailed(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 567
    :cond_0
    if-eqz p2, :cond_1

    .line 568
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string v0, "NavigationInternal"

    const-string v1, "Destination not found"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 570
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    const-string v0, "NavigationInternal"

    const-string v1, "Refinements required"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 572
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    const-string v0, "NavigationInternal"

    const-string v1, "No routing coverage"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 574
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    const-string v0, "NavigationInternal"

    const-string v1, "No routes found"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_5
    const-string v0, "NavigationInternal"

    const-string v1, "Other routing failure"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/f;I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->n()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 416
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v3

    .line 417
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v4

    .line 418
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->h()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 419
    iget-object v5, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ac;->b()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 444
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 415
    goto :goto_0

    .line 424
    :cond_2
    const-string v0, "NavigationInternal"

    const-string v5, "Received route update: actionType:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->n()I

    move-result v6

    .line 426
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->b()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v7

    array-length v7, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x25

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " routes number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 424
    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->b()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    aget-object v0, v0, v2

    .line 429
    aget-object v2, v4, p2

    .line 430
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->t()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 431
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Ljava/lang/String;)V

    .line 433
    :cond_3
    aput-object v0, v4, p2

    .line 436
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->l()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    goto :goto_1

    .line 438
    :cond_4
    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->y()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 385
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/w;I)Z
    .locals 3

    .prologue
    .line 407
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p2

    .line 408
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_2

    .line 289
    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    .line 293
    :cond_0
    :goto_0
    const-string v1, "NavigationInternal"

    .line 294
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "return trip"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " succeeded."

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ag;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/ag;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ag;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 303
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ag;->b()V

    .line 305
    :cond_1
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->h:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_0

    .line 291
    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->h:Lcom/google/android/maps/driveabout/nav/f;

    goto :goto_0

    .line 294
    :cond_3
    const-string v0, "saving route"

    goto :goto_1

    .line 295
    :cond_4
    const-string v0, " failed."

    goto :goto_2

    .line 301
    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ag;->b(Lcom/google/android/maps/driveabout/nav/f;)Z

    goto :goto_3
.end method

.method private c(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    .line 310
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/e/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->o()V

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->b()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 317
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 318
    const-string v6, "NavigationInternal"

    const-string v7, "New route received: "

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v6, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_2
    array-length v0, v1

    if-lt v0, v9, :cond_a

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->s()[Lcom/google/android/maps/driveabout/nav/aq;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v9, :cond_a

    aget-object v0, v1, v3

    aget-object v4, v1, v2

    .line 327
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->g()I

    move-result v5

    .line 326
    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;Lcom/google/android/maps/driveabout/nav/w;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 328
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/w;

    .line 330
    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    :goto_2
    array-length v1, v0

    if-lt v1, v9, :cond_5

    .line 338
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 339
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_4

    .line 340
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v4

    if-ge v4, v2, :cond_3

    .line 341
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v2

    .line 339
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 345
    :cond_4
    array-length v4, v0

    move v1, v3

    :goto_4
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 346
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->d(I)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 350
    :cond_5
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ALT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    .line 355
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 356
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 359
    :cond_6
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->f()Z

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    .line 375
    :cond_8
    :goto_6
    return-void

    .line 372
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->e()Z

    move-result v0

    if-nez v0, :cond_8

    .line 373
    invoke-direct {p0, v9, p1}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_6

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method private declared-synchronized l()V
    .locals 3

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 557
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 558
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onRerouteRequested(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 560
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-eqz v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    .line 633
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->y()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    if-nez v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 707
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->l:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    .line 760
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    .line 761
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/e/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/u;->c()V

    .line 762
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 3

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 502
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onRouteChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 447
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 449
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->o:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/navgation_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/ac;->a(Landroid/location/Location;)V

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 462
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    .line 463
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v3

    .line 465
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->x()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    if-eqz v4, :cond_2

    .line 467
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->v()J

    move-result-wide v4

    .line 468
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->p()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 469
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->v()J

    move-result-wide v4

    .line 470
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->q()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 471
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    const-string v0, "NavigationInternal"

    const-string v1, "Traffic data has timed out."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->w()V

    .line 474
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0, v8}, Lcom/google/android/maps/driveabout/nav/ac;->a(I)Z

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->m()V

    .line 479
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    if-eqz v0, :cond_3

    .line 480
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 481
    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/nav/o;->j:Z

    .line 483
    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 6

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 198
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    if-nez v1, :cond_3

    .line 204
    :cond_2
    const-string v0, "NavigationInternal"

    const-string v1, "Not rerouting: no current route"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->h()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/e/u;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-nez v2, :cond_5

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-nez v1, :cond_0

    .line 235
    const-string v1, "NavigationInternal"

    const-string v2, "Rerouting!"

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    const/4 v2, 0x4

    .line 236
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    .line 238
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->l()V

    goto :goto_0

    .line 224
    :cond_5
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 228
    :cond_6
    const-string v0, "NavigationInternal"

    const-string v2, "Rerouting offline!"

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    .line 230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->m:Lcom/google/android/maps/driveabout/e/u;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/e/u;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V

    .line 231
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->l()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v1, 0x2

    .line 188
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    .line 189
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 6

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    .line 161
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/a;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/f;->b()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    .line 396
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->d()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 245
    const-string v0, "NavigationInternal"

    const-string v1, "Transit direction. Dropping response"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 258
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    .line 260
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/nav/o;->b(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    if-ne p1, v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->g:Lcom/google/android/maps/driveabout/nav/f;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->c(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    .line 266
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_5

    .line 268
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 269
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->y()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 275
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/f;I)V

    goto :goto_0

    .line 268
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_5
    const-string v0, "NavigationInternal"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Dropping route response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/maps/driveabout/c/j;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/c/j;-><init>(Lcom/google/android/maps/driveabout/nav/i;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 515
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 516
    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/n;->onGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 518
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_0
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;I)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 583
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 587
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-eqz v0, :cond_2

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    .line 589
    if-nez p2, :cond_0

    .line 590
    iput-wide v4, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    .line 591
    invoke-virtual {p0, p1, v3}, Lcom/google/android/maps/driveabout/nav/o;->a(Lcom/google/android/maps/driveabout/nav/w;Z)V

    .line 592
    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;I)V

    .line 606
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v0, "NavigationInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Finding offline route failed with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    .line 599
    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b/v;->a(Ljava/lang/String;I)V

    .line 601
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/nav/o;->b:J

    goto :goto_0

    .line 604
    :cond_2
    const-string v0, "NavigationInternal"

    const-string v1, "Dropping unwanted offline generated route"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 653
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 655
    if-eqz p2, :cond_1

    .line 656
    new-array v1, v4, [Lcom/google/android/maps/driveabout/nav/w;

    aput-object p1, v1, v0

    .line 657
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v2, v1, v0, v0}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    const/4 v1, -0x1

    .line 660
    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v2

    .line 661
    if-eqz v2, :cond_0

    .line 666
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 667
    aget-object v3, v2, v0

    if-ne v3, p1, :cond_3

    .line 672
    :goto_2
    if-ltz v0, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->y()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    if-nez v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v3, 0x3

    .line 675
    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v1

    .line 674
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/maps/driveabout/nav/ac;->a([Lcom/google/android/maps/driveabout/nav/w;IZ)V

    goto :goto_0

    .line 666
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/nav/ad;->a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->i:Lcom/google/android/maps/driveabout/nav/f;

    .line 176
    return-void
.end method

.method final declared-synchronized b()V
    .locals 3

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 509
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onTrafficStatusChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 511
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 2

    .prologue
    .line 522
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 523
    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/nav/n;->onApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 525
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b(Lcom/google/android/maps/driveabout/nav/n;)V
    .locals 1

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 3

    .prologue
    .line 532
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/p;->g()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 535
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized d()V
    .locals 3

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 543
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 544
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onProgress(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized e()V
    .locals 3

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v1

    .line 550
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/n;

    .line 551
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/nav/n;->onRouteCompletedSuccessfully(Lcom/google/android/maps/driveabout/nav/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 553
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/nav/o;->n()V

    .line 611
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/nav/o;->n:Z

    .line 613
    const-string v0, "NavigationInternal"

    const-string v1, "Network error"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->a:Z

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(ILcom/google/android/maps/driveabout/nav/f;)V

    .line 621
    :cond_0
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/nav/o;->k:Z

    return v0
.end method

.method public final h()V
    .locals 6

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->a()Lcom/google/android/maps/driveabout/nav/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/p;->e()[Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    .line 695
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 696
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->u()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/w;->y()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v4

    if-nez v4, :cond_0

    .line 697
    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/o;->d:Lcom/google/android/maps/driveabout/nav/ad;

    const/4 v5, 0x3

    .line 698
    invoke-virtual {v4, v3, v5}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v4

    .line 697
    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(I)V

    .line 729
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/o;->a(I)V

    .line 737
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/o;->e:Lcom/google/android/maps/driveabout/nav/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ac;->c()V

    .line 769
    return-void
.end method
