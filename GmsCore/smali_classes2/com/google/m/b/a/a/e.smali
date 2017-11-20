.class public final Lcom/google/m/b/a/a/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:I

.field private e:Z

.field private f:Lcom/google/m/b/a/a/l;

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Lcom/google/m/b/a/a/l;

.field private j:Z

.field private k:Lcom/google/m/b/a/a/l;

.field private l:Z

.field private m:Lcom/google/m/b/a/a/l;

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 343
    iput-object v1, p0, Lcom/google/m/b/a/a/e;->f:Lcom/google/m/b/a/a/l;

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    .line 396
    iput-object v1, p0, Lcom/google/m/b/a/a/e;->i:Lcom/google/m/b/a/a/l;

    .line 416
    iput v2, p0, Lcom/google/m/b/a/a/e;->b:I

    .line 433
    iput v2, p0, Lcom/google/m/b/a/a/e;->d:I

    .line 450
    iput-object v1, p0, Lcom/google/m/b/a/a/e;->k:Lcom/google/m/b/a/a/l;

    .line 470
    iput-object v1, p0, Lcom/google/m/b/a/a/e;->m:Lcom/google/m/b/a/a/l;

    .line 490
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/m/b/a/a/e;->o:I

    .line 550
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/e;->p:I

    .line 338
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/google/m/b/a/a/e;->p:I

    if-gez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/google/m/b/a/a/e;->b()I

    .line 557
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/e;->p:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/a/j;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/j;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 335
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

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->e:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/e;->f:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/j;

    invoke-direct {v0}, Lcom/google/m/b/a/a/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/e;->i:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->a:Z

    iput v0, p0, Lcom/google/m/b/a/a/e;->b:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->c:Z

    iput v0, p0, Lcom/google/m/b/a/a/e;->d:I

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->j:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/e;->k:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/m/b/a/a/l;

    invoke-direct {v0}, Lcom/google/m/b/a/a/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->l:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/e;->m:Lcom/google/m/b/a/a/l;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/e;->n:Z

    iput v0, p0, Lcom/google/m/b/a/a/e;->o:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x318 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->e:Z

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->f:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/j;

    .line 528
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 530
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->h:Z

    if-eqz v0, :cond_2

    .line 531
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->i:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 533
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->a:Z

    if-eqz v0, :cond_3

    .line 534
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/m/b/a/a/e;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 536
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->c:Z

    if-eqz v0, :cond_4

    .line 537
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/m/b/a/a/e;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 539
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->j:Z

    if-eqz v0, :cond_5

    .line 540
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->k:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 542
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->l:Z

    if-eqz v0, :cond_6

    .line 543
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->m:Lcom/google/m/b/a/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 545
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->n:Z

    if-eqz v0, :cond_7

    .line 546
    const/16 v0, 0x63

    iget v1, p0, Lcom/google/m/b/a/a/e;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 548
    :cond_7
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    iget-boolean v1, p0, Lcom/google/m/b/a/a/e;->e:Z

    if-eqz v1, :cond_0

    .line 564
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/e;->f:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/j;

    .line 568
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 570
    goto :goto_0

    .line 571
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->h:Z

    if-eqz v0, :cond_2

    .line 572
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/e;->i:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 575
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->a:Z

    if-eqz v0, :cond_3

    .line 576
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/m/b/a/a/e;->b:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 579
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->c:Z

    if-eqz v0, :cond_4

    .line 580
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/m/b/a/a/e;->d:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 583
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->j:Z

    if-eqz v0, :cond_5

    .line 584
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/a/e;->k:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 587
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->l:Z

    if-eqz v0, :cond_6

    .line 588
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/m/b/a/a/e;->m:Lcom/google/m/b/a/a/l;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 591
    :cond_6
    iget-boolean v0, p0, Lcom/google/m/b/a/a/e;->n:Z

    if-eqz v0, :cond_7

    .line 592
    const/16 v0, 0x63

    iget v2, p0, Lcom/google/m/b/a/a/e;->o:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 595
    :cond_7
    iput v1, p0, Lcom/google/m/b/a/a/e;->p:I

    .line 596
    return v1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/m/b/a/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
