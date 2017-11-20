.class public final Lcom/google/android/gms/common/analytics/a/e;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Boolean;

.field public p:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 458
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/protobuf/nano/m;->a:[I

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/e;->G:I

    .line 459
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 541
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 542
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 546
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 550
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 553
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 554
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 557
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 558
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 561
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 562
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 565
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 566
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 569
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 570
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 573
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    .line 575
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 576
    iget-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    aget v3, v3, v1

    .line 577
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_8
    add-int/2addr v0, v2

    .line 581
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 583
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 584
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 588
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 591
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 592
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 596
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 600
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 603
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 604
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 607
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 608
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 611
    :cond_10
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 383
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x48

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    iput-object v5, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v0, v0

    goto :goto_3

    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v1

    move v0, v2

    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_6

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v1, v1

    goto :goto_5

    :cond_9
    iput-object v4, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

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
        0x48 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
        0x70 -> :sswitch_f
        0x78 -> :sswitch_10
        0x80 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 489
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 492
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 495
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 498
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 501
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 504
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 507
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v0, v0

    if-lez v0, :cond_8

    .line 510
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 511
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/e;->p:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 515
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 518
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 520
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 521
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 523
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 524
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 526
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 527
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 529
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 530
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 532
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 533
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/e;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 535
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 536
    return-void
.end method
