.class final Lcom/google/h/a/b/b/ao;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/h/a/b/b/ah;

.field private final c:Lcom/google/h/a/b/b/o;

.field private final d:Lcom/google/h/a/b/b/o;

.field private final e:Lcom/google/h/a/b/b/ad;

.field private final f:Lcom/google/h/a/b/b/ad;

.field private g:I

.field private h:Lcom/google/h/a/b/a/b;

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 423
    iput-object p1, p0, Lcom/google/h/a/b/b/ao;->b:Lcom/google/h/a/b/b/ah;

    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 405
    new-instance v0, Lcom/google/h/a/b/b/o;

    invoke-direct {v0}, Lcom/google/h/a/b/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    .line 407
    new-instance v0, Lcom/google/h/a/b/b/o;

    invoke-direct {v0}, Lcom/google/h/a/b/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    .line 415
    iput v1, p0, Lcom/google/h/a/b/b/ao;->g:I

    .line 419
    iput-wide v2, p0, Lcom/google/h/a/b/b/ao;->i:J

    .line 421
    iput-wide v2, p0, Lcom/google/h/a/b/b/ao;->j:J

    .line 424
    invoke-virtual {p2, v1}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/ao;->e:Lcom/google/h/a/b/b/ad;

    .line 425
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/h/a/b/b/e;->a(I)Lcom/google/h/a/b/b/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/b/b/ao;->f:Lcom/google/h/a/b/b/ad;

    .line 426
    return-void
.end method

.method private static a(D)Z
    .locals 2

    .prologue
    .line 504
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/o;->c()V

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/ao;->h:Lcom/google/h/a/b/a/b;

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/ao;->g:I

    .line 500
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/google/h/a/b/b/ao;->g:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(JFFZ)V
    .locals 7

    .prologue
    .line 431
    iget-object v1, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/h/a/b/b/o;->a(JFFZ)V

    .line 432
    iget-object v1, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/h/a/b/b/o;->a(JFFZ)V

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b/b/ao;->g:I

    .line 434
    return-void
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    invoke-static {}, Lcom/google/h/a/b/b/ah;->d()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v3, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    iget-wide v0, p0, Lcom/google/h/a/b/b/ao;->i:J

    sget-wide v4, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/google/h/a/b/b/ao;->d()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/h/a/b/b/o;->a(JLcom/google/h/a/b/a/b;)V

    .line 443
    iput-wide p1, p0, Lcom/google/h/a/b/b/ao;->i:J

    .line 446
    iget v0, p0, Lcom/google/h/a/b/b/ao;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/h/a/b/b/ao;->g:I

    .line 447
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->h:Lcom/google/h/a/b/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->h:Lcom/google/h/a/b/a/b;

    invoke-virtual {v0, p3}, Lcom/google/h/a/b/a/b;->a(Lcom/google/h/a/b/a/b;)D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-gtz v0, :cond_1

    iget v0, p3, Lcom/google/h/a/b/a/b;->e:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget-object v3, p0, Lcom/google/h/a/b/b/ao;->h:Lcom/google/h/a/b/a/b;

    iget v3, v3, Lcom/google/h/a/b/a/b;->e:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    .line 453
    :cond_1
    iput-object p3, p0, Lcom/google/h/a/b/b/ao;->h:Lcom/google/h/a/b/a/b;

    .line 454
    iput v2, p0, Lcom/google/h/a/b/b/ao;->g:I

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    iget-object v0, v0, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget v0, v0, Lcom/google/h/a/b/b/q;->d:I

    if-lt v0, v10, :cond_6

    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    iget-wide v0, v0, Lcom/google/h/a/b/b/o;->b:D

    .line 460
    :goto_0
    invoke-static {v0, v1}, Lcom/google/h/a/b/b/ao;->a(D)Z

    move-result v0

    .line 461
    invoke-direct {p0}, Lcom/google/h/a/b/b/ao;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/google/h/a/b/b/ao;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v1}, Lcom/google/h/a/b/b/ah;->b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/google/h/a/b/b/ao;->e:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v1, v2}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    .line 464
    :cond_4
    if-eqz v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->d(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->c()V

    .line 467
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->d(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/t;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 484
    :cond_5
    :goto_1
    return-void

    .line 458
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 469
    :cond_7
    invoke-static {}, Lcom/google/h/a/b/b/ah;->e()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v3, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 470
    iget-wide v4, p0, Lcom/google/h/a/b/b/ao;->j:J

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v4, v6

    cmp-long v0, p1, v4

    if-lez v0, :cond_8

    .line 471
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/o;->c()V

    .line 473
    :cond_8
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/h/a/b/b/o;->a(JLcom/google/h/a/b/a/b;)V

    .line 474
    iput-wide p1, p0, Lcom/google/h/a/b/b/ao;->j:J

    .line 475
    iget-wide v4, p0, Lcom/google/h/a/b/b/ao;->i:J

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v4, v6

    cmp-long v0, p1, v4

    if-lez v0, :cond_a

    move v0, v1

    .line 476
    :goto_2
    iget-object v3, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    iget-object v3, v3, Lcom/google/h/a/b/b/o;->a:Lcom/google/h/a/b/b/q;

    iget v3, v3, Lcom/google/h/a/b/b/q;->d:I

    if-lt v3, v10, :cond_c

    iget-object v3, p0, Lcom/google/h/a/b/b/ao;->c:Lcom/google/h/a/b/b/o;

    iget-wide v4, v3, Lcom/google/h/a/b/b/o;->b:D

    invoke-static {v4, v5}, Lcom/google/h/a/b/b/ao;->a(D)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/google/h/a/b/b/ao;->e()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    iget-wide v4, v3, Lcom/google/h/a/b/b/o;->b:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_b

    cmpg-double v3, v4, v8

    if-gez v3, :cond_b

    move v3, v1

    :goto_3
    if-eqz v3, :cond_c

    .line 480
    :goto_4
    if-nez v0, :cond_9

    if-eqz v1, :cond_5

    .line 481
    :cond_9
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->b:Lcom/google/h/a/b/b/ah;

    invoke-static {v0}, Lcom/google/h/a/b/b/ah;->b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/google/h/a/b/b/ao;->f:Lcom/google/h/a/b/b/ad;

    invoke-virtual {v0, v1}, Lcom/google/h/a/b/b/ac;->a(Lcom/google/h/a/b/b/ad;)V

    goto :goto_1

    :cond_a
    move v0, v2

    .line 475
    goto :goto_2

    :cond_b
    move v3, v2

    .line 476
    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_4
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/h/a/b/b/ao;->d:Lcom/google/h/a/b/b/o;

    invoke-virtual {v0}, Lcom/google/h/a/b/b/o;->c()V

    .line 489
    invoke-direct {p0}, Lcom/google/h/a/b/b/ao;->d()V

    .line 490
    return-void
.end method
