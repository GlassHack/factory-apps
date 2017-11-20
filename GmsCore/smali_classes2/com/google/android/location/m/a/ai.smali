.class public final Lcom/google/android/location/m/a/ai;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile p:[Lcom/google/android/location/m/a/ai;


# instance fields
.field public a:Lcom/google/android/location/m/a/h;

.field public b:Lcom/google/android/location/m/a/ch;

.field public c:Lcom/google/android/location/m/a/aj;

.field public d:Lcom/google/android/location/m/a/v;

.field public e:Lcom/google/android/location/m/a/an;

.field public f:[I

.field public g:[[B

.field public h:Lcom/google/android/location/m/a/ad;

.field public i:Lcom/google/android/location/m/a/bs;

.field public j:Ljava/lang/Integer;

.field public k:[Lcom/google/android/location/m/a/bw;

.field public l:Lcom/google/android/location/m/a/cb;

.field public m:Ljava/lang/Long;

.field public n:Lcom/google/android/location/m/a/bg;

.field public o:Lcom/google/android/location/m/a/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    sget-object v0, Lcom/google/protobuf/nano/m;->a:[I

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    sget-object v0, Lcom/google/protobuf/nano/m;->g:[[B

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/m/a/bw;->b()[Lcom/google/android/location/m/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    iput-object v1, p0, Lcom/google/android/location/m/a/ai;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ai;->G:I

    .line 78
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/ai;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/location/m/a/ai;->p:[Lcom/google/android/location/m/a/ai;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/ai;->p:[Lcom/google/android/location/m/a/ai;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/ai;

    sput-object v0, Lcom/google/android/location/m/a/ai;->p:[Lcom/google/android/location/m/a/ai;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/ai;->p:[Lcom/google/android/location/m/a/ai;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-eqz v1, :cond_1

    .line 337
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-eqz v1, :cond_2

    .line 341
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-eqz v1, :cond_3

    .line 345
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-eqz v1, :cond_4

    .line 349
    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->f:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    .line 354
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 355
    iget-object v4, p0, Lcom/google/android/location/m/a/ai;->f:[I

    aget v4, v4, v1

    .line 356
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_5
    add-int/2addr v0, v3

    .line 360
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 362
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v3, v2

    move v4, v2

    .line 365
    :goto_1
    iget-object v5, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 366
    iget-object v5, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    aget-object v5, v5, v1

    .line 367
    if-eqz v5, :cond_7

    .line 368
    add-int/lit8 v4, v4, 0x1

    .line 369
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->b([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 365
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :cond_8
    add-int/2addr v0, v3

    .line 374
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 376
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-eqz v1, :cond_a

    .line 377
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-eqz v1, :cond_b

    .line 381
    const/16 v1, 0x9

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 385
    const/16 v1, 0xa

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 389
    :goto_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    array-length v1, v1

    if-ge v2, v1, :cond_e

    .line 390
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    aget-object v1, v1, v2

    .line 391
    if-eqz v1, :cond_d

    .line 392
    const/16 v3, 0xc

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 397
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-eqz v1, :cond_f

    .line 398
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 402
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 405
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-eqz v1, :cond_11

    .line 406
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-eqz v1, :cond_12

    .line 410
    const/16 v1, 0x63

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_12
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ai;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/h;

    invoke-direct {v0}, Lcom/google/android/location/m/a/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/ch;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ch;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/aj;

    invoke-direct {v0}, Lcom/google/android/location/m/a/aj;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/a/v;

    invoke-direct {v0}, Lcom/google/android/location/m/a/v;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/an;

    invoke-direct {v0}, Lcom/google/android/location/m/a/an;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->f:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v0, v0

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ai;->f:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->f:[I

    if-nez v2, :cond_b

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/google/android/location/m/a/ai;->f:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v2, v2

    goto :goto_4

    :cond_c
    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    if-nez v0, :cond_e

    move v0, v1

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    array-length v0, v0

    goto :goto_6

    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/location/m/a/ad;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    :cond_10
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/location/m/a/bs;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bs;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    :cond_11
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    if-nez v0, :cond_13

    move v0, v1

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/bw;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_14

    new-instance v3, Lcom/google/android/location/m/a/bw;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bw;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    array-length v0, v0

    goto :goto_8

    :cond_14
    new-instance v3, Lcom/google/android/location/m/a/bw;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bw;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/location/m/a/cb;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cb;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    :cond_15
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    const/4 v0, 0x1

    ushr-long v4, v2, v0

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    neg-long v2, v2

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/location/m/a/bg;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bg;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    :cond_16
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/location/m/a/q;

    invoke-direct {v0}, Lcom/google/android/location/m/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    :cond_17
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x31a -> :sswitch_10
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_2

    .line 276
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-eqz v0, :cond_3

    .line 279
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-eqz v0, :cond_4

    .line 282
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->f:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 286
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/location/m/a/ai;->f:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 290
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 291
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    aget-object v2, v2, v0

    .line 292
    if-eqz v2, :cond_6

    .line 293
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 290
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-eqz v0, :cond_8

    .line 298
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-eqz v0, :cond_9

    .line 301
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 303
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 304
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 306
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 307
    :goto_2
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 308
    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    aget-object v2, v2, v0

    .line 309
    if-eqz v2, :cond_b

    .line 310
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 307
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-eqz v0, :cond_d

    .line 315
    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 317
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    if-eqz v0, :cond_e

    .line 318
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->i(II)V

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->c(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(J)V

    .line 320
    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-eqz v0, :cond_f

    .line 321
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 323
    :cond_f
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-eqz v0, :cond_10

    .line 324
    const/16 v0, 0x63

    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 326
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 327
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ai;

    if-eqz v1, :cond_0

    .line 109
    check-cast p1, Lcom/google/android/location/m/a/ai;

    .line 110
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-nez v1, :cond_e

    .line 111
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-nez v1, :cond_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-nez v1, :cond_f

    .line 120
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-nez v1, :cond_0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_10

    .line 129
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-nez v1, :cond_0

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-nez v1, :cond_11

    .line 138
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-nez v1, :cond_0

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-nez v1, :cond_12

    .line 147
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-nez v1, :cond_0

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->f:[I

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->f:[I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->g:[[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-nez v1, :cond_13

    .line 164
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-nez v1, :cond_0

    .line 172
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-nez v1, :cond_14

    .line 173
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-nez v1, :cond_0

    .line 181
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 182
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 188
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-nez v1, :cond_16

    .line 193
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-nez v1, :cond_0

    .line 201
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    if-nez v1, :cond_17

    .line 202
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-nez v1, :cond_18

    .line 209
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-nez v1, :cond_0

    .line 217
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-nez v1, :cond_19

    .line 218
    iget-object v1, p1, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-nez v1, :cond_0

    .line 226
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ai;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto/16 :goto_0

    .line 115
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 124
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ch;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 133
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/aj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 142
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 151
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/an;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 168
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ad;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 177
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 185
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 197
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/cb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 205
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 213
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 222
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    iget-object v2, p1, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 234
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 236
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 238
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 240
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->f:[I

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([I)I

    move-result v2

    add-int/2addr v0, v2

    .line 244
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->g:[[B

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 248
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->k:[Lcom/google/android/location/m/a/bw;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 258
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 260
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 262
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ai;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->a:Lcom/google/android/location/m/a/h;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/h;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->b:Lcom/google/android/location/m/a/ch;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ch;->hashCode()I

    move-result v0

    goto/16 :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->c:Lcom/google/android/location/m/a/aj;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/aj;->hashCode()I

    move-result v0

    goto/16 :goto_2

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->d:Lcom/google/android/location/m/a/v;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/v;->hashCode()I

    move-result v0

    goto/16 :goto_3

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->e:Lcom/google/android/location/m/a/an;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/an;->hashCode()I

    move-result v0

    goto/16 :goto_4

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->h:Lcom/google/android/location/m/a/ad;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ad;->hashCode()I

    move-result v0

    goto :goto_5

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->i:Lcom/google/android/location/m/a/bs;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bs;->hashCode()I

    move-result v0

    goto :goto_6

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_7

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->l:Lcom/google/android/location/m/a/cb;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/cb;->hashCode()I

    move-result v0

    goto :goto_8

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->m:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_9

    .line 258
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bg;->hashCode()I

    move-result v0

    goto :goto_a

    .line 260
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/ai;->o:Lcom/google/android/location/m/a/q;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/q;->hashCode()I

    move-result v1

    goto :goto_b
.end method
