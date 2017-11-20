.class public final Lcom/google/android/location/m/a/aj;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile w:[Lcom/google/android/location/m/a/aj;


# instance fields
.field public a:Lcom/google/android/location/m/a/ae;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:[Lcom/google/android/location/m/a/s;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Lcom/google/android/location/m/a/w;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/Float;

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/String;

.field public s:Lcom/google/android/location/m/a/ac;

.field public t:Ljava/lang/Integer;

.field public u:[Lcom/google/android/location/m/a/as;

.field public v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 105
    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/m/a/s;->b()[Lcom/google/android/location/m/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/m/a/as;->b()[Lcom/google/android/location/m/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/aj;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/aj;->G:I

    .line 106
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/aj;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/location/m/a/aj;->w:[Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_1

    .line 28
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/aj;->w:[Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/aj;

    sput-object v0, Lcom/google/android/location/m/a/aj;->w:[Lcom/google/android/location/m/a/aj;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/aj;->w:[Lcom/google/android/location/m/a/aj;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 436
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v2, :cond_0

    .line 437
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 441
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 445
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 448
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 449
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 452
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 453
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 454
    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    aget-object v3, v3, v0

    .line 455
    if-eqz v3, :cond_4

    .line 456
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 453
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 461
    :cond_6
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 462
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    :cond_7
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 466
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 469
    :cond_8
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 470
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 473
    :cond_9
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 474
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 477
    :cond_a
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 478
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 481
    :cond_b
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    .line 482
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 485
    :cond_c
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 486
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 489
    :cond_d
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 490
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 493
    :cond_e
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-eqz v2, :cond_f

    .line 494
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 497
    :cond_f
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 498
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 501
    :cond_10
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    if-eqz v2, :cond_11

    .line 502
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 505
    :cond_11
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    .line 506
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 509
    :cond_12
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 510
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 513
    :cond_13
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-eqz v2, :cond_14

    .line 514
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 517
    :cond_14
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 518
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 521
    :cond_15
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    array-length v2, v2

    if-lez v2, :cond_17

    .line 522
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 523
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    aget-object v2, v2, v1

    .line 524
    if-eqz v2, :cond_16

    .line 525
    const/16 v3, 0x15

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 522
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    .line 531
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    :cond_18
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/aj;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/s;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/m/a/s;

    invoke-direct {v3}, Lcom/google/android/location/m/a/s;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/m/a/s;

    invoke-direct {v3}, Lcom/google/android/location/m/a/s;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/w;

    invoke-direct {v0}, Lcom/google/android/location/m/a/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/location/m/a/ac;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ac;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0xaa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/as;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/location/m/a/as;

    invoke-direct {v3}, Lcom/google/android/location/m/a/as;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    array-length v0, v0

    goto :goto_3

    :cond_9
    new-instance v3, Lcom/google/android/location/m/a/as;

    invoke-direct {v3}, Lcom/google/android/location/m/a/as;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x58 -> :sswitch_c
        0x60 -> :sswitch_d
        0x68 -> :sswitch_e
        0x72 -> :sswitch_f
        0x7a -> :sswitch_10
        0x85 -> :sswitch_11
        0x88 -> :sswitch_12
        0x92 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa0 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb0 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_9
        0x2 -> :sswitch_9
        0x3 -> :sswitch_9
        0x4 -> :sswitch_9
        0xf -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_9
        0x80 -> :sswitch_9
        0x100 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 358
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 361
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 364
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 367
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 368
    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    aget-object v2, v2, v0

    .line 369
    if-eqz v2, :cond_4

    .line 370
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 367
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 375
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 377
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 378
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 381
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 383
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 384
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 387
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 389
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 390
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 392
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 393
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 395
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 396
    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 398
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-eqz v0, :cond_e

    .line 399
    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 401
    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 402
    const/16 v0, 0xf

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 404
    :cond_f
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    if-eqz v0, :cond_10

    .line 405
    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 407
    :cond_10
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 408
    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 410
    :cond_11
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 411
    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 413
    :cond_12
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-eqz v0, :cond_13

    .line 414
    const/16 v0, 0x13

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 416
    :cond_13
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    .line 417
    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 419
    :cond_14
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    array-length v0, v0

    if-lez v0, :cond_16

    .line 420
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    array-length v0, v0

    if-ge v1, v0, :cond_16

    .line 421
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    aget-object v0, v0, v1

    .line 422
    if-eqz v0, :cond_15

    .line 423
    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 420
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 427
    :cond_16
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 428
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 430
    :cond_17
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 431
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    if-ne p1, p0, :cond_1

    .line 139
    const/4 v0, 0x1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/aj;

    if-eqz v1, :cond_0

    .line 144
    check-cast p1, Lcom/google/android/location/m/a/aj;

    .line 145
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_16

    .line 146
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 155
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    if-nez v1, :cond_18

    .line 162
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    if-nez v1, :cond_19

    .line 169
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    if-nez v1, :cond_1a

    .line 180
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 186
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_1b

    .line 187
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 193
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    if-nez v1, :cond_1c

    .line 194
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 199
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 200
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 206
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 207
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 213
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    if-nez v1, :cond_1f

    .line 214
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 220
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    if-nez v1, :cond_20

    .line 221
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 227
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    if-nez v1, :cond_21

    .line 228
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 234
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-nez v1, :cond_22

    .line 235
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-nez v1, :cond_0

    .line 243
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 244
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 250
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    if-nez v1, :cond_24

    .line 251
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 257
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    if-nez v1, :cond_25

    .line 258
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 264
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 265
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 271
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-nez v1, :cond_27

    .line 272
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-nez v1, :cond_0

    .line 280
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    if-nez v1, :cond_28

    .line 281
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 287
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    if-nez v1, :cond_29

    .line 292
    iget-object v1, p1, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 298
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/aj;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto/16 :goto_0

    .line 150
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 158
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 165
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 172
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 183
    :cond_1a
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 190
    :cond_1b
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 197
    :cond_1c
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 203
    :cond_1d
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 210
    :cond_1e
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 217
    :cond_1f
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 224
    :cond_20
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 231
    :cond_21
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    .line 239
    :cond_22
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    .line 247
    :cond_23
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    .line 254
    :cond_24
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    .line 261
    :cond_25
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    .line 268
    :cond_26
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    .line 276
    :cond_27
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ac;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    .line 284
    :cond_28
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    .line 295
    :cond_29
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 306
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 308
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 310
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 312
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->e:[Lcom/google/android/location/m/a/s;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 314
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 316
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 319
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 321
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 323
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 325
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 327
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 331
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    .line 333
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    if-nez v0, :cond_e

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    .line 335
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    .line 339
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    if-nez v0, :cond_11

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    .line 341
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    if-nez v0, :cond_12

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    .line 343
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->u:[Lcom/google/android/location/m/a/as;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 345
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    if-nez v2, :cond_13

    :goto_13
    add-int/2addr v0, v1

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/aj;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_5

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_6

    .line 319
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    .line 321
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_8

    .line 323
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_9

    .line 325
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_a

    .line 327
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_b

    .line 329
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->n:Lcom/google/android/location/m/a/w;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/w;->hashCode()I

    move-result v0

    goto/16 :goto_c

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_d

    .line 333
    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto/16 :goto_e

    .line 335
    :cond_f
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto/16 :goto_f

    .line 337
    :cond_10
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_10

    .line 339
    :cond_11
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->s:Lcom/google/android/location/m/a/ac;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ac;->hashCode()I

    move-result v0

    goto/16 :goto_11

    .line 341
    :cond_12
    iget-object v0, p0, Lcom/google/android/location/m/a/aj;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_12

    .line 345
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/aj;->v:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto/16 :goto_13
.end method
