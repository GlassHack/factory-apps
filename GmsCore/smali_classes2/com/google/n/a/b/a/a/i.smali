.class public final Lcom/google/n/a/b/a/a/i;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile m:[Lcom/google/n/a/b/a/a/i;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:[Lcom/google/n/a/b/a/a/j;

.field public g:Lcom/google/n/a/b/a/a/d;

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:Lcom/google/n/a/b/a/a/b;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 451
    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/i;->f()Lcom/google/n/a/b/a/a/i;

    .line 452
    return-void
.end method

.method public static b()[Lcom/google/n/a/b/a/a/i;
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/google/n/a/b/a/a/i;->m:[Lcom/google/n/a/b/a/a/i;

    if-nez v0, :cond_1

    .line 404
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Lcom/google/n/a/b/a/a/i;->m:[Lcom/google/n/a/b/a/a/i;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/n/a/b/a/a/i;

    sput-object v0, Lcom/google/n/a/b/a/a/i;->m:[Lcom/google/n/a/b/a/a/i;

    .line 409
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_1
    sget-object v0, Lcom/google/n/a/b/a/a/i;->m:[Lcom/google/n/a/b/a/a/i;

    return-object v0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 7

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 616
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 617
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 625
    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 626
    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    aget-object v2, v2, v0

    .line 627
    if-eqz v2, :cond_2

    .line 628
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 625
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 633
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    .line 634
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-eqz v1, :cond_6

    .line 638
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    .line 642
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-eqz v1, :cond_8

    .line 646
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_8
    iget-boolean v1, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    if-eqz v1, :cond_9

    .line 650
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 653
    :cond_9
    iget v1, p0, Lcom/google/n/a/b/a/a/i;->c:I

    if-eqz v1, :cond_a

    .line 654
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/n/a/b/a/a/i;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    :cond_a
    iget v1, p0, Lcom/google/n/a/b/a/a/i;->d:I

    if-eqz v1, :cond_b

    .line 658
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/n/a/b/a/a/i;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 661
    :cond_b
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    .line 662
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 665
    :cond_c
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 666
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_d
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 397
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/i;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/n/a/b/a/a/j;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/n/a/b/a/a/j;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/j;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/n/a/b/a/a/j;

    invoke-direct {v3}, Lcom/google/n/a/b/a/a/j;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/n/a/b/a/a/b;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/n/a/b/a/a/d;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    :cond_5
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/n/a/b/a/a/i;->c:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/n/a/b/a/a/i;->d:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 569
    iget-wide v0, p0, Lcom/google/n/a/b/a/a/i;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 576
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 577
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    aget-object v1, v1, v0

    .line 578
    if-eqz v1, :cond_2

    .line 579
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 576
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 584
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-eqz v0, :cond_5

    .line 587
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 590
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 592
    :cond_6
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-eqz v0, :cond_7

    .line 593
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 595
    :cond_7
    iget-boolean v0, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    if-eqz v0, :cond_8

    .line 596
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 598
    :cond_8
    iget v0, p0, Lcom/google/n/a/b/a/a/i;->c:I

    if-eqz v0, :cond_9

    .line 599
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/n/a/b/a/a/i;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 601
    :cond_9
    iget v0, p0, Lcom/google/n/a/b/a/a/i;->d:I

    if-eqz v0, :cond_a

    .line 602
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/n/a/b/a/a/i;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 604
    :cond_a
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    .line 605
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 607
    :cond_b
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 608
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 610
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 611
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 474
    if-ne p1, p0, :cond_1

    .line 475
    const/4 v0, 0x1

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/i;

    if-eqz v1, :cond_0

    .line 480
    check-cast p1, Lcom/google/n/a/b/a/a/i;

    .line 481
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    iget-wide v4, p1, Lcom/google/n/a/b/a/a/i;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 485
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 491
    :cond_2
    iget v1, p0, Lcom/google/n/a/b/a/a/i;->c:I

    iget v2, p1, Lcom/google/n/a/b/a/a/i;->c:I

    if-ne v1, v2, :cond_0

    .line 494
    iget v1, p0, Lcom/google/n/a/b/a/a/i;->d:I

    iget v2, p1, Lcom/google/n/a/b/a/a/i;->d:I

    if-ne v1, v2, :cond_0

    .line 497
    iget-boolean v1, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    iget-boolean v2, p1, Lcom/google/n/a/b/a/a/i;->e:Z

    if-ne v1, v2, :cond_0

    .line 500
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-nez v1, :cond_7

    .line 505
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-nez v1, :cond_0

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->i:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->j:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-nez v1, :cond_8

    .line 523
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-nez v1, :cond_0

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 532
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 538
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/i;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 488
    :cond_6
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 509
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 527
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 535
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0
.end method

.method public final f()Lcom/google/n/a/b/a/a/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 455
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/n/a/b/a/a/i;->a:J

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    .line 457
    iput v2, p0, Lcom/google/n/a/b/a/a/i;->c:I

    .line 458
    iput v2, p0, Lcom/google/n/a/b/a/a/i;->d:I

    .line 459
    iput-boolean v2, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    .line 460
    invoke-static {}, Lcom/google/n/a/b/a/a/j;->b()[Lcom/google/n/a/b/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    .line 461
    iput-object v3, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    .line 462
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    .line 463
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    .line 464
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    .line 465
    iput-object v3, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    .line 467
    iput-object v3, p0, Lcom/google/n/a/b/a/a/i;->F:Lcom/google/protobuf/nano/f;

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/i;->G:I

    .line 469
    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/i;->a:J

    iget-wide v4, p0, Lcom/google/n/a/b/a/a/i;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 546
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 548
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/n/a/b/a/a/i;->c:I

    add-int/2addr v0, v2

    .line 549
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/n/a/b/a/a/i;->d:I

    add-int/2addr v0, v2

    .line 550
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/n/a/b/a/a/i;->e:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 551
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 553
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 555
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->h:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 556
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->i:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 557
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->j:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 558
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 560
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 562
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 550
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->g:Lcom/google/n/a/b/a/a/d;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/d;->hashCode()I

    move-result v0

    goto :goto_2

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/i;->k:Lcom/google/n/a/b/a/a/b;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/b;->hashCode()I

    move-result v0

    goto :goto_3

    .line 560
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/i;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
