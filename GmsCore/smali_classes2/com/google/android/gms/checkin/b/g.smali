.class public final Lcom/google/android/gms/checkin/b/g;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:I

.field private u:Ljava/util/List;

.field private v:Ljava/util/List;

.field private w:Ljava/util/List;

.field private x:Ljava/util/List;

.field private y:Ljava/util/List;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 41
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->b:I

    .line 58
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->d:I

    .line 75
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->f:I

    .line 92
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->h:I

    .line 109
    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->j:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->l:Z

    .line 143
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->n:I

    .line 160
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->p:I

    .line 177
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->r:I

    .line 194
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->t:I

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    .line 376
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->A:I

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->B:I

    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/google/android/gms/checkin/b/g;->B:I

    if-gez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/g;->b()I

    .line 483
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/g;->B:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->a:Z

    .line 46
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->b:I

    .line 47
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->i:Z

    .line 114
    iput-boolean p1, p0, Lcom/google/android/gms/checkin/b/g;->j:Z

    .line 115
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 7
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->a(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->b(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->c(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->d(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->a(Z)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->b(Z)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->e(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->h(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->f(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->g(I)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/g;->e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/checkin/b/g;->z:Z

    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->A:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x88 -> :sswitch_10
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->a:Z

    if-eqz v0, :cond_0

    .line 427
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->c:Z

    if-eqz v0, :cond_1

    .line 430
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 432
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->e:Z

    if-eqz v0, :cond_2

    .line 433
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 435
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->g:Z

    if-eqz v0, :cond_3

    .line 436
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 438
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->i:Z

    if-eqz v0, :cond_4

    .line 439
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/g;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 441
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->k:Z

    if-eqz v0, :cond_5

    .line 442
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/g;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 444
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->m:Z

    if-eqz v0, :cond_6

    .line 445
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 447
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->s:Z

    if-eqz v0, :cond_7

    .line 448
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 450
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 456
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 459
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->o:Z

    if-eqz v0, :cond_b

    .line 460
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 462
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->q:Z

    if-eqz v0, :cond_c

    .line 463
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 465
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 468
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_4

    .line 471
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->z:Z

    if-eqz v0, :cond_f

    .line 472
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/android/gms/checkin/b/g;->A:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 474
    :cond_f
    return-void
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 488
    .line 489
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->a:Z

    if-eqz v0, :cond_f

    .line 490
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/checkin/b/g;->b:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 493
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->c:Z

    if-eqz v2, :cond_0

    .line 494
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->d:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 497
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->e:Z

    if-eqz v2, :cond_1

    .line 498
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->f:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 501
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->g:Z

    if-eqz v2, :cond_2

    .line 502
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->h:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 505
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->i:Z

    if-eqz v2, :cond_3

    .line 506
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/android/gms/checkin/b/g;->j:Z

    invoke-static {v2}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 509
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->k:Z

    if-eqz v2, :cond_4

    .line 510
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/gms/checkin/b/g;->l:Z

    invoke-static {v2}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 513
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->m:Z

    if-eqz v2, :cond_5

    .line 514
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->n:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 517
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->s:Z

    if-eqz v2, :cond_e

    .line 518
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->t:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 526
    goto :goto_2

    .line 527
    :cond_6
    add-int v0, v2, v3

    .line 528
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/g;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    .line 532
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 535
    goto :goto_3

    .line 536
    :cond_7
    add-int v0, v3, v2

    .line 537
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    .line 541
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    .line 544
    goto :goto_4

    .line 545
    :cond_8
    add-int v0, v3, v2

    .line 546
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 548
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->o:Z

    if-eqz v2, :cond_9

    .line 549
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->p:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 552
    :cond_9
    iget-boolean v2, p0, Lcom/google/android/gms/checkin/b/g;->q:Z

    if-eqz v2, :cond_d

    .line 553
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/android/gms/checkin/b/g;->r:I

    invoke-static {v2, v3}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    .line 558
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    .line 561
    goto :goto_6

    .line 562
    :cond_a
    add-int v0, v2, v3

    .line 563
    iget-object v2, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 567
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 570
    goto :goto_7

    .line 571
    :cond_b
    add-int v0, v2, v1

    .line 572
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 574
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/g;->z:Z

    if-eqz v1, :cond_c

    .line 575
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/gms/checkin/b/g;->A:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_c
    iput v0, p0, Lcom/google/android/gms/checkin/b/g;->B:I

    .line 579
    return v0

    :cond_d
    move v2, v0

    goto :goto_5

    :cond_e
    move v2, v0

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->c:Z

    .line 63
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->d:I

    .line 64
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->k:Z

    .line 131
    iput-boolean p1, p0, Lcom/google/android/gms/checkin/b/g;->l:Z

    .line 132
    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->e:Z

    .line 80
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->f:I

    .line 81
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->g:Z

    .line 97
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->h:I

    .line 98
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-object p0
.end method

.method public final e(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->m:Z

    .line 148
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->n:I

    .line 149
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/g;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-object p0
.end method

.method public final f(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->o:Z

    .line 165
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->p:I

    .line 166
    return-object p0
.end method

.method public final g(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->q:Z

    .line 182
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->r:I

    .line 183
    return-object p0
.end method

.method public final h(I)Lcom/google/android/gms/checkin/b/g;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/g;->s:Z

    .line 199
    iput p1, p0, Lcom/google/android/gms/checkin/b/g;->t:I

    .line 200
    return-object p0
.end method
