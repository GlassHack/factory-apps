.class public final Lcom/google/android/location/m/a/o;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile q:[Lcom/google/android/location/m/a/o;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;

.field public c:Lcom/google/android/location/m/a/i;

.field public d:Lcom/google/android/location/m/a/i;

.field public e:[Lcom/google/android/location/m/a/n;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Lcom/google/android/location/m/a/i;

.field public l:Lcom/google/android/location/m/a/j;

.field public m:Lcom/google/android/location/m/a/l;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field public p:Lcom/google/android/location/m/a/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-static {}, Lcom/google/android/location/m/a/n;->b()[Lcom/google/android/location/m/a/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    iput-object v1, p0, Lcom/google/android/location/m/a/o;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/o;->G:I

    .line 73
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/o;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/o;->q:[Lcom/google/android/location/m/a/o;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/o;->q:[Lcom/google/android/location/m/a/o;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/o;

    sput-object v0, Lcom/google/android/location/m/a/o;->q:[Lcom/google/android/location/m/a/o;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/o;->q:[Lcom/google/android/location/m/a/o;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 326
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 327
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-eqz v1, :cond_1

    .line 336
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 340
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    aget-object v2, v2, v0

    .line 342
    if-eqz v2, :cond_2

    .line 343
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 340
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 349
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 353
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 357
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 361
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 365
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-eqz v1, :cond_a

    .line 369
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-eqz v1, :cond_b

    .line 373
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-eqz v1, :cond_c

    .line 377
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 381
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 385
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-eqz v1, :cond_f

    .line 389
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_f
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/o;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/i;

    invoke-direct {v0}, Lcom/google/android/location/m/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/i;

    invoke-direct {v0}, Lcom/google/android/location/m/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/n;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    new-instance v3, Lcom/google/android/location/m/a/n;

    invoke-direct {v3}, Lcom/google/android/location/m/a/n;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    array-length v0, v0

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/google/android/location/m/a/n;

    invoke-direct {v3}, Lcom/google/android/location/m/a/n;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/location/m/a/i;

    invoke-direct {v0}, Lcom/google/android/location/m/a/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/location/m/a/j;

    invoke-direct {v0}, Lcom/google/android/location/m/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/location/m/a/l;

    invoke-direct {v0}, Lcom/google/android/location/m/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/location/m/a/k;

    invoke-direct {v0}, Lcom/google/android/location/m/a/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 273
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 274
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 281
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    aget-object v1, v1, v0

    .line 283
    if-eqz v1, :cond_2

    .line 284
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 289
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 292
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 295
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 298
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 301
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-eqz v0, :cond_9

    .line 304
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-eqz v0, :cond_a

    .line 307
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 309
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-eqz v0, :cond_b

    .line 310
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 313
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 315
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 316
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 318
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-eqz v0, :cond_e

    .line 319
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 321
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 322
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/o;

    if-eqz v1, :cond_0

    .line 105
    check-cast p1, Lcom/google/android/location/m/a/o;

    .line 106
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    if-nez v1, :cond_11

    .line 107
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    if-nez v1, :cond_12

    .line 114
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_13

    .line 121
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_0

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_14

    .line 130
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_0

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 143
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    if-nez v1, :cond_16

    .line 150
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    if-nez v1, :cond_17

    .line 157
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    if-nez v1, :cond_18

    .line 164
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 170
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    if-nez v1, :cond_19

    .line 171
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 177
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_1a

    .line 178
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-nez v1, :cond_0

    .line 186
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-nez v1, :cond_1b

    .line 187
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-nez v1, :cond_0

    .line 195
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-nez v1, :cond_1c

    .line 196
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-nez v1, :cond_0

    .line 204
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    if-nez v1, :cond_1d

    .line 205
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 211
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 212
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 218
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-nez v1, :cond_1f

    .line 219
    iget-object v1, p1, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-nez v1, :cond_0

    .line 227
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/o;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto/16 :goto_0

    .line 110
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 117
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 125
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 134
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 146
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 153
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 160
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 167
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 174
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 182
    :cond_1a
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 191
    :cond_1b
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 200
    :cond_1c
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    .line 208
    :cond_1d
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    .line 215
    :cond_1e
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    .line 223
    :cond_1f
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    iget-object v2, p1, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 235
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 239
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->e:[Lcom/google/android/location/m/a/n;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 245
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 247
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 261
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    if-nez v2, :cond_e

    :goto_e
    add-int/2addr v0, v1

    .line 265
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/o;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->c:Lcom/google/android/location/m/a/i;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/i;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->d:Lcom/google/android/location/m/a/i;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/i;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_5

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_6

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_7

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_8

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->k:Lcom/google/android/location/m/a/i;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/i;->hashCode()I

    move-result v0

    goto :goto_9

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->l:Lcom/google/android/location/m/a/j;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/j;->hashCode()I

    move-result v0

    goto :goto_a

    .line 257
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->m:Lcom/google/android/location/m/a/l;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/l;->hashCode()I

    move-result v0

    goto :goto_b

    .line 259
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_c

    .line 261
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/o;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_d

    .line 263
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/o;->p:Lcom/google/android/location/m/a/k;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/k;->hashCode()I

    move-result v1

    goto :goto_e
.end method
