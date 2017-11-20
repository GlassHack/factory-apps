.class public final Lcom/google/b/a/a/l;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/google/b/a/a/g;

.field public c:Ljava/lang/String;

.field public d:I

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/google/b/a/a/f;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:J

.field private w:Z

.field private x:J

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2331
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2342
    iput-wide v2, p0, Lcom/google/b/a/a/l;->f:J

    .line 2359
    iput v1, p0, Lcom/google/b/a/a/l;->a:I

    .line 2376
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/l;->i:Ljava/lang/String;

    .line 2393
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/l;->k:Ljava/lang/String;

    .line 2410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/l;->m:Ljava/lang/String;

    .line 2427
    iput-object v4, p0, Lcom/google/b/a/a/l;->o:Lcom/google/b/a/a/f;

    .line 2447
    iput-object v4, p0, Lcom/google/b/a/a/l;->b:Lcom/google/b/a/a/g;

    .line 2467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/l;->c:Ljava/lang/String;

    .line 2484
    iput v1, p0, Lcom/google/b/a/a/l;->s:I

    .line 2501
    iput v1, p0, Lcom/google/b/a/a/l;->d:I

    .line 2518
    iput-wide v2, p0, Lcom/google/b/a/a/l;->v:J

    .line 2535
    iput-wide v2, p0, Lcom/google/b/a/a/l;->x:J

    .line 2619
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/l;->y:I

    .line 2331
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2622
    iget v0, p0, Lcom/google/b/a/a/l;->y:I

    if-gez v0, :cond_0

    .line 2624
    invoke-virtual {p0}, Lcom/google/b/a/a/l;->b()I

    .line 2626
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/l;->y:I

    return v0
.end method

.method public final a(I)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->g:Z

    .line 2364
    iput p1, p0, Lcom/google/b/a/a/l;->a:I

    .line 2365
    return-object p0
.end method

.method public final a(J)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->w:Z

    .line 2540
    iput-wide p1, p0, Lcom/google/b/a/a/l;->x:J

    .line 2541
    return-object p0
.end method

.method public final a(Lcom/google/b/a/a/g;)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2451
    if-nez p1, :cond_0

    .line 2452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2454
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->p:Z

    .line 2455
    iput-object p1, p0, Lcom/google/b/a/a/l;->b:Lcom/google/b/a/a/g;

    .line 2456
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->h:Z

    .line 2381
    iput-object p1, p0, Lcom/google/b/a/a/l;->i:Ljava/lang/String;

    .line 2382
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2328
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->e:Z

    iput-wide v0, p0, Lcom/google/b/a/a/l;->f:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/l;->a(I)Lcom/google/b/a/a/l;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/l;->a(Ljava/lang/String;)Lcom/google/b/a/a/l;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->j:Z

    iput-object v0, p0, Lcom/google/b/a/a/l;->k:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->l:Z

    iput-object v0, p0, Lcom/google/b/a/a/l;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/b/a/a/f;

    invoke-direct {v0}, Lcom/google/b/a/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->n:Z

    iput-object v0, p0, Lcom/google/b/a/a/l;->o:Lcom/google/b/a/a/f;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/b/a/a/g;

    invoke-direct {v0}, Lcom/google/b/a/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/l;->a(Lcom/google/b/a/a/g;)Lcom/google/b/a/a/l;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/l;->b(Ljava/lang/String;)Lcom/google/b/a/a/l;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->r:Z

    iput v0, p0, Lcom/google/b/a/a/l;->s:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/l;->b(I)Lcom/google/b/a/a/l;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/l;->u:Z

    iput-wide v0, p0, Lcom/google/b/a/a/l;->v:J

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a/l;->a(J)Lcom/google/b/a/a/l;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 2581
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->e:Z

    if-eqz v0, :cond_0

    .line 2582
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/b/a/a/l;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 2584
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->g:Z

    if-eqz v0, :cond_1

    .line 2585
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/a/l;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 2587
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->h:Z

    if-eqz v0, :cond_2

    .line 2588
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/a/l;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2590
    :cond_2
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->j:Z

    if-eqz v0, :cond_3

    .line 2591
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/a/l;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2593
    :cond_3
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->l:Z

    if-eqz v0, :cond_4

    .line 2594
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/b/a/a/l;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2596
    :cond_4
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->n:Z

    if-eqz v0, :cond_5

    .line 2597
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/b/a/a/l;->o:Lcom/google/b/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2599
    :cond_5
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->p:Z

    if-eqz v0, :cond_6

    .line 2600
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/a/l;->b:Lcom/google/b/a/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2602
    :cond_6
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->q:Z

    if-eqz v0, :cond_7

    .line 2603
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/b/a/a/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2605
    :cond_7
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->r:Z

    if-eqz v0, :cond_8

    .line 2606
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/b/a/a/l;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 2608
    :cond_8
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->t:Z

    if-eqz v0, :cond_9

    .line 2609
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/b/a/a/l;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 2611
    :cond_9
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->u:Z

    if-eqz v0, :cond_a

    .line 2612
    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/google/b/a/a/l;->v:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 2614
    :cond_a
    iget-boolean v0, p0, Lcom/google/b/a/a/l;->w:Z

    if-eqz v0, :cond_b

    .line 2615
    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/google/b/a/a/l;->x:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 2617
    :cond_b
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 2631
    const/4 v0, 0x0

    .line 2632
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->e:Z

    if-eqz v1, :cond_0

    .line 2633
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/b/a/a/l;->f:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2636
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->g:Z

    if-eqz v1, :cond_1

    .line 2637
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/a/l;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2640
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->h:Z

    if-eqz v1, :cond_2

    .line 2641
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/a/l;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2644
    :cond_2
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->j:Z

    if-eqz v1, :cond_3

    .line 2645
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/a/l;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2648
    :cond_3
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->l:Z

    if-eqz v1, :cond_4

    .line 2649
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/b/a/a/l;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2652
    :cond_4
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->n:Z

    if-eqz v1, :cond_5

    .line 2653
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/b/a/a/l;->o:Lcom/google/b/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2656
    :cond_5
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->p:Z

    if-eqz v1, :cond_6

    .line 2657
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/b/a/a/l;->b:Lcom/google/b/a/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2660
    :cond_6
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->q:Z

    if-eqz v1, :cond_7

    .line 2661
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/b/a/a/l;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2664
    :cond_7
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->r:Z

    if-eqz v1, :cond_8

    .line 2665
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/b/a/a/l;->s:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    :cond_8
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->t:Z

    if-eqz v1, :cond_9

    .line 2669
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/b/a/a/l;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2672
    :cond_9
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->u:Z

    if-eqz v1, :cond_a

    .line 2673
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/b/a/a/l;->v:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2676
    :cond_a
    iget-boolean v1, p0, Lcom/google/b/a/a/l;->w:Z

    if-eqz v1, :cond_b

    .line 2677
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/b/a/a/l;->x:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2680
    :cond_b
    iput v0, p0, Lcom/google/b/a/a/l;->y:I

    .line 2681
    return v0
.end method

.method public final b(I)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->t:Z

    .line 2506
    iput p1, p0, Lcom/google/b/a/a/l;->d:I

    .line 2507
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/b/a/a/l;
    .locals 1

    .prologue
    .line 2471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/l;->q:Z

    .line 2472
    iput-object p1, p0, Lcom/google/b/a/a/l;->c:Ljava/lang/String;

    .line 2473
    return-object p0
.end method
