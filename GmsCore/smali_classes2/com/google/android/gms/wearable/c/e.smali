.class public final Lcom/google/android/gms/wearable/c/e;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile p:[Lcom/google/android/gms/wearable/c/e;


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:D

.field public d:Ljava/lang/String;

.field public e:F

.field public f:J

.field public g:I

.field public h:I

.field public i:Z

.field public j:[Lcom/google/android/gms/wearable/c/d;

.field public k:[Lcom/google/android/gms/wearable/c/e;

.field public l:[Ljava/lang/String;

.field public m:[J

.field public n:[Lcom/google/android/gms/wearable/c/e;

.field public o:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 89
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    iput v2, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    iput v2, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    iput-boolean v2, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    invoke-static {}, Lcom/google/android/gms/wearable/c/d;->b()[Lcom/google/android/gms/wearable/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {}, Lcom/google/android/gms/wearable/c/e;->b()[Lcom/google/android/gms/wearable/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-static {}, Lcom/google/android/gms/wearable/c/e;->b()[Lcom/google/android/gms/wearable/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    sget-object v0, Lcom/google/protobuf/nano/m;->c:[F

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/e;->G:I

    .line 90
    return-void
.end method

.method private static b()[Lcom/google/android/gms/wearable/c/e;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/wearable/c/e;->p:[Lcom/google/android/gms/wearable/c/e;

    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/google/android/gms/wearable/c/e;->p:[Lcom/google/android/gms/wearable/c/e;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/wearable/c/e;

    sput-object v0, Lcom/google/android/gms/wearable/c/e;->p:[Lcom/google/android/gms/wearable/c/e;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/c/e;->p:[Lcom/google/android/gms/wearable/c/e;

    return-object v0

    .line 38
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

    .line 302
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 303
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    sget-object v3, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 311
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 313
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 320
    :cond_3
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 322
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 325
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 326
    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 329
    :cond_5
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    if-eqz v2, :cond_6

    .line 330
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 333
    :cond_6
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    if-eqz v2, :cond_7

    .line 334
    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->h(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 337
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    if-eqz v2, :cond_8

    .line 338
    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 341
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 342
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 343
    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    aget-object v3, v3, v0

    .line 344
    if-eqz v3, :cond_9

    .line 345
    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 342
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    move v0, v2

    .line 350
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    array-length v2, v2

    if-lez v2, :cond_e

    move v2, v0

    move v0, v1

    .line 351
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    .line 352
    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    aget-object v3, v3, v0

    .line 353
    if-eqz v3, :cond_c

    .line 354
    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 351
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    move v0, v2

    .line 359
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    move v2, v1

    move v3, v1

    move v4, v1

    .line 362
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_10

    .line 363
    iget-object v5, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 364
    if-eqz v5, :cond_f

    .line 365
    add-int/lit8 v4, v4, 0x1

    .line 366
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 362
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 370
    :cond_10
    add-int/2addr v0, v3

    .line 371
    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    .line 373
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v2, v2

    if-lez v2, :cond_13

    move v2, v1

    move v3, v1

    .line 375
    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v4, v4

    if-ge v2, v4, :cond_12

    .line 376
    iget-object v4, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    aget-wide v4, v4, v2

    .line 377
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 380
    :cond_12
    add-int/2addr v0, v3

    .line 381
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 383
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    array-length v2, v2

    if-lez v2, :cond_15

    .line 384
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 385
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    aget-object v2, v2, v1

    .line 386
    if-eqz v2, :cond_14

    .line 387
    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 392
    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v1, v1

    if-lez v1, :cond_16

    .line 393
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 394
    add-int/2addr v0, v1

    .line 395
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 397
    :cond_16
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 26
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/c/d;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/wearable/c/d;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/wearable/c/d;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/c/e;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x68

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v0, v0

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v2

    move v0, v1

    :goto_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->e(I)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    if-nez v2, :cond_f

    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_b
    array-length v4, v0

    if-ge v2, v4, :cond_10

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v2, v2

    goto :goto_a

    :cond_10
    iput-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x72

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    if-nez v0, :cond_12

    move v0, v1

    :goto_c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/c/e;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    new-instance v3, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    array-length v0, v0

    goto :goto_c

    :cond_13
    new-instance v3, Lcom/google/android/gms/wearable/c/e;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x7d

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    if-nez v0, :cond_15

    move v0, v1

    :goto_e
    add-int/2addr v2, v0

    new-array v2, v2, [F

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v0, v0

    goto :goto_e

    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v2

    div-int/lit8 v3, v0, 0x4

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    if-nez v0, :cond_18

    move v0, v1

    :goto_10
    add-int/2addr v3, v0

    new-array v3, v3, [F

    if-eqz v0, :cond_17

    iget-object v4, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_11
    array-length v4, v3

    if-ge v0, v4, :cond_19

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v0, v0

    goto :goto_10

    :cond_19
    iput-object v3, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x6a -> :sswitch_e
        0x72 -> :sswitch_f
        0x7a -> :sswitch_11
        0x7d -> :sswitch_10
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 232
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->a(ID)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 239
    :cond_3
    iget v0, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 241
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 243
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 244
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 246
    :cond_5
    iget v0, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    if-eqz v0, :cond_6

    .line 247
    const/4 v0, 0x7

    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 249
    :cond_6
    iget v0, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    if-eqz v0, :cond_7

    .line 250
    const/16 v0, 0x8

    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->e(II)V

    .line 252
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    if-eqz v0, :cond_8

    .line 253
    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 257
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    aget-object v2, v2, v0

    .line 258
    if-eqz v2, :cond_9

    .line 259
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 256
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 264
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 265
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    aget-object v2, v2, v0

    .line 266
    if-eqz v2, :cond_b

    .line 267
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 264
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    .line 272
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 273
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 274
    if-eqz v2, :cond_d

    .line 275
    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 272
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 279
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    .line 280
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    array-length v2, v2

    if-ge v0, v2, :cond_f

    .line 281
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 284
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    .line 285
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 286
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    aget-object v2, v2, v0

    .line 287
    if-eqz v2, :cond_10

    .line 288
    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 285
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v0, v0

    if-lez v0, :cond_12

    .line 293
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    array-length v0, v0

    if-ge v1, v0, :cond_12

    .line 294
    const/16 v0, 0xf

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 297
    :cond_12
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 298
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p1, p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/e;

    if-nez v2, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/e;

    .line 121
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 125
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 133
    iget-wide v4, p1, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 138
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 142
    goto :goto_0

    .line 145
    :cond_8
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 146
    iget v3, p1, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_9
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/c/e;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_a
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/e;->g:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_b
    iget v2, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/e;->h:I

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/c/e;->i:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    .line 168
    goto/16 :goto_0

    .line 170
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 172
    goto/16 :goto_0

    .line 174
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([J[J)Z

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 182
    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/e;->o:[F

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([F[F)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 184
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 196
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 197
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/e;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/e;->f:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/e;->g:I

    add-int/2addr v0, v1

    .line 206
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/e;->h:I

    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/e;->i:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v1

    .line 208
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->j:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->k:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->l:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->m:[J

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->n:[Lcom/google/android/gms/wearable/c/e;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->o:[F

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 207
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_2
.end method
