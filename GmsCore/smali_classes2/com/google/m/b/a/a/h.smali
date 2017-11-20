.class public final Lcom/google/m/b/a/a/h;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/List;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:I

.field private h:Z

.field private i:Lcom/google/m/b/a/a/l;

.field private j:Z

.field private k:Lcom/google/m/b/a/a/l;

.field private l:Z

.field private m:Lcom/google/m/b/a/a/l;

.field private n:Z

.field private o:Lcom/google/m/b/a/a/l;

.field private p:Z

.field private q:Lcom/google/m/b/a/a/l;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2279
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2290
    iput-object v0, p0, Lcom/google/m/b/a/a/h;->i:Lcom/google/m/b/a/a/l;

    .line 2310
    iput-object v0, p0, Lcom/google/m/b/a/a/h;->k:Lcom/google/m/b/a/a/l;

    .line 2330
    iput-object v0, p0, Lcom/google/m/b/a/a/h;->m:Lcom/google/m/b/a/a/l;

    .line 2350
    iput-object v0, p0, Lcom/google/m/b/a/a/h;->o:Lcom/google/m/b/a/a/l;

    .line 2370
    iput-object v0, p0, Lcom/google/m/b/a/a/h;->q:Lcom/google/m/b/a/a/l;

    .line 2390
    iput v2, p0, Lcom/google/m/b/a/a/h;->a:I

    .line 2406
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    .line 2434
    iput-boolean v2, p0, Lcom/google/m/b/a/a/h;->c:Z

    .line 2451
    iput-boolean v1, p0, Lcom/google/m/b/a/a/h;->d:Z

    .line 2468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->e:Ljava/lang/String;

    .line 2485
    iput v1, p0, Lcom/google/m/b/a/a/h;->g:I

    .line 2557
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/h;->v:I

    .line 2279
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2560
    iget v0, p0, Lcom/google/m/b/a/a/h;->v:I

    if-gez v0, :cond_0

    .line 2562
    invoke-virtual {p0}, Lcom/google/m/b/a/a/h;->b()I

    .line 2564
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/h;->v:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2276
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
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->i:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->j:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->k:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->l:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->m:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->n:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->o:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->p:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->q:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->g()I

    move-result v0

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->r:Z

    iput v0, p0, Lcom/google/m/b/a/a/h;->a:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->s:Z

    iput-boolean v0, p0, Lcom/google/m/b/a/a/h;->c:Z

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->t:Z

    iput-boolean v0, p0, Lcom/google/m/b/a/a/h;->d:Z

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->u:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/h;->e:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v3, p0, Lcom/google/m/b/a/a/h;->f:Z

    iput v0, p0, Lcom/google/m/b/a/a/h;->g:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 2522
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->h:Z

    if-eqz v0, :cond_0

    .line 2523
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->i:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2525
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->j:Z

    if-eqz v0, :cond_1

    .line 2526
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->k:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2528
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->l:Z

    if-eqz v0, :cond_2

    .line 2529
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->m:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2531
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->n:Z

    if-eqz v0, :cond_3

    .line 2532
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->o:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2534
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->p:Z

    if-eqz v0, :cond_4

    .line 2535
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->q:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 2537
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->r:Z

    if-eqz v0, :cond_5

    .line 2538
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/m/b/a/a/h;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->b(II)V

    .line 2540
    :cond_5
    iget-object v0, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2541
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    goto :goto_0

    .line 2543
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->s:Z

    if-eqz v0, :cond_7

    .line 2544
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->c:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 2546
    :cond_7
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->t:Z

    if-eqz v0, :cond_8

    .line 2547
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 2549
    :cond_8
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->u:Z

    if-eqz v0, :cond_9

    .line 2550
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/m/b/a/a/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2552
    :cond_9
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->f:Z

    if-eqz v0, :cond_a

    .line 2553
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/m/b/a/a/h;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 2555
    :cond_a
    return-void
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2569
    .line 2570
    iget-boolean v0, p0, Lcom/google/m/b/a/a/h;->h:Z

    if-eqz v0, :cond_a

    .line 2571
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/m/b/a/a/h;->i:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2574
    :goto_0
    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->j:Z

    if-eqz v2, :cond_0

    .line 2575
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/m/b/a/a/h;->k:Lcom/google/m/b/a/a/l;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2578
    :cond_0
    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->l:Z

    if-eqz v2, :cond_1

    .line 2579
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/m/b/a/a/h;->m:Lcom/google/m/b/a/a/l;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2582
    :cond_1
    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->n:Z

    if-eqz v2, :cond_2

    .line 2583
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/m/b/a/a/h;->o:Lcom/google/m/b/a/a/l;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2586
    :cond_2
    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->p:Z

    if-eqz v2, :cond_3

    .line 2587
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/m/b/a/a/h;->q:Lcom/google/m/b/a/a/l;

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2590
    :cond_3
    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->r:Z

    if-eqz v2, :cond_9

    .line 2591
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/m/b/a/a/h;->a:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 2596
    :goto_1
    iget-object v0, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2597
    invoke-static {v4, v5}, Lcom/google/protobuf/a/c;->a(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 2599
    goto :goto_2

    .line 2600
    :cond_4
    add-int v0, v2, v1

    .line 2601
    iget-object v1, p0, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2603
    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->s:Z

    if-eqz v1, :cond_5

    .line 2604
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->c:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2607
    :cond_5
    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->t:Z

    if-eqz v1, :cond_6

    .line 2608
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/m/b/a/a/h;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2611
    :cond_6
    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->u:Z

    if-eqz v1, :cond_7

    .line 2612
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/m/b/a/a/h;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2615
    :cond_7
    iget-boolean v1, p0, Lcom/google/m/b/a/a/h;->f:Z

    if-eqz v1, :cond_8

    .line 2616
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/m/b/a/a/h;->g:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2619
    :cond_8
    iput v0, p0, Lcom/google/m/b/a/a/h;->v:I

    .line 2620
    return v0

    :cond_9
    move v2, v0

    goto :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method
