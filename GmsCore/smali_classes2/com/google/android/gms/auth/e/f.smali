.class public final Lcom/google/android/gms/auth/e/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/android/gms/auth/e/g;

.field private o:Z

.field private p:J

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 423
    iput v0, p0, Lcom/google/android/gms/auth/e/f;->b:I

    .line 440
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/f;->d:J

    .line 457
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/f;->f:J

    .line 474
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->h:Z

    .line 491
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->j:Z

    .line 508
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->l:Z

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/e/f;->n:Lcom/google/android/gms/auth/e/g;

    .line 545
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/f;->p:J

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/f;->q:I

    .line 412
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/google/android/gms/auth/e/f;->q:I

    if-gez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/f;->b()I

    .line 612
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/f;->q:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->a:Z

    .line 428
    iput p1, p0, Lcom/google/android/gms/auth/e/f;->b:I

    .line 429
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->c:Z

    .line 445
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/f;->d:J

    .line 446
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 532
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->m:Z

    .line 533
    iput-object p1, p0, Lcom/google/android/gms/auth/e/f;->n:Lcom/google/android/gms/auth/e/g;

    .line 534
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->g:Z

    .line 479
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/f;->h:Z

    .line 480
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 409
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/f;->a(I)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/f;->a(J)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/f;->b(J)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/f;->a(Z)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/f;->b(Z)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/f;->c(Z)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/android/gms/auth/e/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/f;->a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/f;->c(J)Lcom/google/android/gms/auth/e/f;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->a:Z

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/f;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 582
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->c:Z

    if-eqz v0, :cond_1

    .line 583
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 585
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->e:Z

    if-eqz v0, :cond_2

    .line 586
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 588
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->g:Z

    if-eqz v0, :cond_3

    .line 589
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 591
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->i:Z

    if-eqz v0, :cond_4

    .line 592
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 594
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->k:Z

    if-eqz v0, :cond_5

    .line 595
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 597
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->m:Z

    if-eqz v0, :cond_6

    .line 598
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/auth/e/f;->n:Lcom/google/android/gms/auth/e/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 600
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->o:Z

    if-eqz v0, :cond_7

    .line 601
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 603
    :cond_7
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->a:Z

    if-eqz v1, :cond_0

    .line 619
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/f;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 622
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->c:Z

    if-eqz v1, :cond_1

    .line 623
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->e:Z

    if-eqz v1, :cond_2

    .line 627
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->f:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->g:Z

    if-eqz v1, :cond_3

    .line 631
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/f;->h:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 634
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->i:Z

    if-eqz v1, :cond_4

    .line 635
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/f;->j:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 638
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->k:Z

    if-eqz v1, :cond_5

    .line 639
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/f;->l:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 642
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->m:Z

    if-eqz v1, :cond_6

    .line 643
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/auth/e/f;->n:Lcom/google/android/gms/auth/e/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/f;->o:Z

    if-eqz v1, :cond_7

    .line 647
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/f;->p:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    :cond_7
    iput v0, p0, Lcom/google/android/gms/auth/e/f;->q:I

    .line 651
    return v0
.end method

.method public final b(J)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->e:Z

    .line 462
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/f;->f:J

    .line 463
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->i:Z

    .line 496
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/f;->j:Z

    .line 497
    return-object p0
.end method

.method public final c(J)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->o:Z

    .line 550
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/f;->p:J

    .line 551
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/e/f;
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/f;->k:Z

    .line 513
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/f;->l:Z

    .line 514
    return-object p0
.end method
