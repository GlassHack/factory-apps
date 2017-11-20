.class public final Lcom/google/android/location/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/location/os/ah;

.field b:J

.field c:J

.field final d:Lcom/google/android/location/b/aa;

.field private e:Lcom/google/android/location/c;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/aa;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/d;->a:Lcom/google/android/location/os/ah;

    .line 427
    iput-wide v2, p0, Lcom/google/android/location/d;->b:J

    .line 430
    iput-wide v2, p0, Lcom/google/android/location/d;->c:J

    .line 436
    new-instance v0, Lcom/google/android/location/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/location/c;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/location/d;->e:Lcom/google/android/location/c;

    .line 439
    iput-object p1, p0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    .line 440
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/location/f/bh;JJ)I
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 523
    move v1, v0

    move v2, v0

    .line 524
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 525
    invoke-virtual {p1, v1}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 526
    iget-object v3, p0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    iget-object v3, v3, Lcom/google/android/location/b/aa;->b:Lcom/google/android/location/b/ab;

    invoke-virtual {v3, v0}, Lcom/google/android/location/b/ab;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ac;

    if-nez v0, :cond_2

    move-wide v4, v6

    .line 528
    :goto_1
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sub-long v4, p2, v4

    const-wide/32 v8, 0x927c0

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    .line 530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 524
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 526
    :cond_2
    iget-wide v4, v0, Lcom/google/android/location/b/ac;->b:J

    goto :goto_1

    .line 533
    :cond_3
    return v2
.end method

.method final a(Lcom/google/android/location/os/ah;Lcom/google/android/location/f/g;Lcom/google/android/location/f/bh;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 447
    if-eqz p1, :cond_0

    .line 448
    iput-object p1, p0, Lcom/google/android/location/d;->a:Lcom/google/android/location/os/ah;

    .line 450
    :cond_0
    if-eqz p2, :cond_1

    .line 451
    invoke-virtual {p2}, Lcom/google/android/location/f/g;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/d;->c:J

    .line 452
    if-eqz p1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/google/android/location/d;->e:Lcom/google/android/location/c;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/location/c;->a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)V

    .line 456
    :cond_1
    if-eqz p3, :cond_3

    .line 457
    iget-wide v0, p3, Lcom/google/android/location/f/bh;->a:J

    iput-wide v0, p0, Lcom/google/android/location/d;->b:J

    .line 458
    iget-object v0, p0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    if-eqz v0, :cond_3

    .line 459
    iget-object v1, p0, Lcom/google/android/location/d;->d:Lcom/google/android/location/b/aa;

    if-eqz p3, :cond_3

    iget-object v0, v1, Lcom/google/android/location/b/aa;->d:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/google/android/location/f/bh;->a()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p3, v0}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/location/f/bb;->b:J

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/google/android/location/b/aa;->a(JJ)Lcom/google/android/location/b/ac;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v5, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v5

    iget-object v6, v4, Lcom/google/android/location/b/ac;->a:Lcom/google/g/a/b/b/a;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v8, v5}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    invoke-virtual {v4}, Lcom/google/android/location/b/ac;->a()F

    move-result v5

    cmpl-float v6, v5, v7

    if-lez v6, :cond_2

    const v6, 0x3dcccccd    # 0.1f

    sub-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/location/b/ac;->a(F)V

    :cond_2
    iput-wide v2, v4, Lcom/google/android/location/b/ac;->b:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_3
    return-void
.end method

.method final a(Lcom/google/android/location/f/bh;J)Z
    .locals 6

    .prologue
    .line 494
    const-wide/32 v4, 0x927c0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/d;->a(Lcom/google/android/location/f/bh;JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 486
    iget-object v10, p0, Lcom/google/android/location/d;->e:Lcom/google/android/location/c;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v8

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v4

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v6

    move v9, v8

    :goto_1
    const/4 v0, 0x5

    if-ge v9, v0, :cond_3

    iget-object v0, v10, Lcom/google/android/location/c;->b:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/google/android/location/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/google/android/location/c;->c:[D

    aget-wide v0, v0, v9

    iget-object v2, v10, Lcom/google/android/location/c;->d:[D

    aget-wide v2, v2, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v10, p1, p2}, Lcom/google/android/location/c;->a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)V

    move v0, v8

    goto :goto_0
.end method
