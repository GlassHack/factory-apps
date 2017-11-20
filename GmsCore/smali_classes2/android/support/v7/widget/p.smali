.class final Landroid/support/v7/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Landroid/support/v7/widget/p;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/support/v7/widget/p;

    invoke-direct {v0}, Landroid/support/v7/widget/p;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    .line 369
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 6

    .prologue
    .line 372
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 374
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 377
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    .line 380
    :cond_1
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 4

    .prologue
    .line 357
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 358
    invoke-direct {p0}, Landroid/support/v7/widget/p;->a()V

    .line 359
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 361
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    .line 363
    return-void
.end method

.method final a(IZ)V
    .locals 10

    .prologue
    .line 399
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 400
    invoke-direct {p0}, Landroid/support/v7/widget/p;->a()V

    .line 401
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 403
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 404
    :goto_1
    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 405
    iget-wide v4, p0, Landroid/support/v7/widget/p;->a:J

    and-long/2addr v4, v2

    .line 406
    iget-wide v6, p0, Landroid/support/v7/widget/p;->a:J

    const-wide/16 v8, -0x1

    xor-long/2addr v2, v8

    and-long/2addr v2, v6

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    .line 407
    or-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/widget/p;->a:J

    .line 408
    if-eqz p2, :cond_3

    .line 409
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/p;->a(I)V

    .line 413
    :goto_2
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_4

    .line 414
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/p;->a()V

    .line 415
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    const/4 p1, 0x0

    move p2, v0

    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 411
    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/p;->e(I)V

    goto :goto_2

    .line 418
    :cond_4
    return-void
.end method

.method final b(I)Z
    .locals 4

    .prologue
    .line 383
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 384
    invoke-direct {p0}, Landroid/support/v7/widget/p;->a()V

    .line 385
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 387
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final c(I)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 422
    invoke-direct {p0}, Landroid/support/v7/widget/p;->a()V

    .line 423
    iget-object p0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 425
    :cond_0
    shl-long v4, v12, p1

    .line 426
    iget-wide v6, p0, Landroid/support/v7/widget/p;->a:J

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    .line 427
    :goto_1
    iget-wide v6, p0, Landroid/support/v7/widget/p;->a:J

    xor-long v8, v4, v10

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroid/support/v7/widget/p;->a:J

    .line 428
    sub-long/2addr v4, v12

    .line 429
    iget-wide v6, p0, Landroid/support/v7/widget/p;->a:J

    and-long/2addr v6, v4

    .line 431
    iget-wide v8, p0, Landroid/support/v7/widget/p;->a:J

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 432
    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/p;->a:J

    .line 433
    iget-object v1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/p;->a(I)V

    .line 437
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/p;->c(I)Z

    .line 439
    :cond_2
    return v0

    :cond_3
    move v0, v2

    .line 426
    goto :goto_1
.end method

.method final d(I)I
    .locals 6

    .prologue
    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    .line 444
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 445
    if-lt p1, v1, :cond_0

    .line 446
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 448
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 450
    :cond_1
    if-ge p1, v1, :cond_2

    .line 451
    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 453
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->d(I)I

    move-result v0

    iget-wide v2, p0, Landroid/support/v7/widget/p;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/p;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/p;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
