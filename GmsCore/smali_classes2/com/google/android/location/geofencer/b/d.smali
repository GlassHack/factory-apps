.class public final Lcom/google/android/location/geofencer/b/d;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:D

.field public d:Z

.field public e:D

.field public f:Z

.field public g:F

.field public h:Z

.field public i:J

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:Z

.field public o:I

.field public p:Z

.field public q:I

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 337
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 342
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/geofencer/b/d;->a:I

    .line 359
    iput-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->c:D

    .line 376
    iput-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->e:D

    .line 393
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/geofencer/b/d;->g:F

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/geofencer/b/d;->i:J

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/d;->k:Ljava/lang/String;

    .line 444
    iput v5, p0, Lcom/google/android/location/geofencer/b/d;->m:I

    .line 461
    iput v5, p0, Lcom/google/android/location/geofencer/b/d;->o:I

    .line 478
    iput v4, p0, Lcom/google/android/location/geofencer/b/d;->q:I

    .line 542
    iput v4, p0, Lcom/google/android/location/geofencer/b/d;->s:I

    .line 337
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/location/geofencer/b/d;->s:I

    if-gez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/b/d;->b()I

    .line 549
    :cond_0
    iget v0, p0, Lcom/google/android/location/geofencer/b/d;->s:I

    return v0
.end method

.method public final a(D)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->b:Z

    .line 364
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/d;->c:D

    .line 365
    return-object p0
.end method

.method public final a(F)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->f:Z

    .line 398
    iput p1, p0, Lcom/google/android/location/geofencer/b/d;->g:F

    .line 399
    return-object p0
.end method

.method public final a(I)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->r:Z

    .line 347
    iput p1, p0, Lcom/google/android/location/geofencer/b/d;->a:I

    .line 348
    return-object p0
.end method

.method public final a(J)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->h:Z

    .line 415
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/d;->i:J

    .line 416
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->j:Z

    .line 432
    iput-object p1, p0, Lcom/google/android/location/geofencer/b/d;->k:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->a(I)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/d;->a(D)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/d;->b(D)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->a(F)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/d;->a(J)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->b(I)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->c(I)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/d;->d(I)Lcom/google/android/location/geofencer/b/d;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->r:Z

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 516
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->b:Z

    if-eqz v0, :cond_1

    .line 517
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->c:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(ID)V

    .line 519
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->d:Z

    if-eqz v0, :cond_2

    .line 520
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->e:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(ID)V

    .line 522
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->f:Z

    if-eqz v0, :cond_3

    .line 523
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->g:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IF)V

    .line 525
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->h:Z

    if-eqz v0, :cond_4

    .line 526
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->i:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 528
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->j:Z

    if-eqz v0, :cond_5

    .line 529
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 531
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->l:Z

    if-eqz v0, :cond_6

    .line 532
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 534
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->n:Z

    if-eqz v0, :cond_7

    .line 535
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 537
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->p:Z

    if-eqz v0, :cond_8

    .line 538
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 540
    :cond_8
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->r:Z

    if-eqz v1, :cond_0

    .line 556
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/location/geofencer/b/d;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 559
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->b:Z

    if-eqz v1, :cond_1

    .line 560
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->c:D

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 563
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->d:Z

    if-eqz v1, :cond_2

    .line 564
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->e:D

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 567
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->f:Z

    if-eqz v1, :cond_3

    .line 568
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/location/geofencer/b/d;->g:F

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 571
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->h:Z

    if-eqz v1, :cond_4

    .line 572
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/d;->i:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->j:Z

    if-eqz v1, :cond_5

    .line 576
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/geofencer/b/d;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->l:Z

    if-eqz v1, :cond_6

    .line 580
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/location/geofencer/b/d;->m:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->n:Z

    if-eqz v1, :cond_7

    .line 584
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/location/geofencer/b/d;->o:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/d;->p:Z

    if-eqz v1, :cond_8

    .line 588
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/location/geofencer/b/d;->q:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_8
    iput v0, p0, Lcom/google/android/location/geofencer/b/d;->s:I

    .line 592
    return v0
.end method

.method public final b(D)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->d:Z

    .line 381
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/d;->e:D

    .line 382
    return-object p0
.end method

.method public final b(I)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->l:Z

    .line 449
    iput p1, p0, Lcom/google/android/location/geofencer/b/d;->m:I

    .line 450
    return-object p0
.end method

.method public final c(I)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->n:Z

    .line 466
    iput p1, p0, Lcom/google/android/location/geofencer/b/d;->o:I

    .line 467
    return-object p0
.end method

.method public final d(I)Lcom/google/android/location/geofencer/b/d;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/d;->p:Z

    .line 483
    iput p1, p0, Lcom/google/android/location/geofencer/b/d;->q:I

    .line 484
    return-object p0
.end method
