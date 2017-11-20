.class public final Lcom/google/android/gms/wearable/d/a/d;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:D

.field public d:F

.field public e:J

.field public f:I

.field public g:I

.field public h:Z

.field public i:[Lcom/google/android/gms/wearable/d/a/b;

.field public j:[Lcom/google/android/gms/wearable/d/a/c;

.field public k:[Ljava/lang/String;

.field public l:[J

.field public m:[F

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 94
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    iput-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    iput v2, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    iput v2, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    iput-boolean v2, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    invoke-static {}, Lcom/google/android/gms/wearable/d/a/b;->b()[Lcom/google/android/gms/wearable/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    invoke-static {}, Lcom/google/android/gms/wearable/d/a/c;->b()[Lcom/google/android/gms/wearable/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    sget-object v0, Lcom/google/protobuf/nano/m;->c:[F

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    iput-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/d;->G:I

    .line 95
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 290
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 291
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    sget-object v3, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 301
    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 304
    :cond_2
    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 306
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 309
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 310
    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 313
    :cond_4
    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    if-eqz v2, :cond_5

    .line 314
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    :cond_5
    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    if-eqz v2, :cond_6

    .line 318
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->h(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 321
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    if-eqz v2, :cond_7

    .line 322
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 325
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v0

    move v0, v1

    .line 326
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 327
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    aget-object v3, v3, v0

    .line 328
    if-eqz v3, :cond_8

    .line 329
    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 326
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move v0, v2

    .line 334
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    .line 335
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 336
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    aget-object v3, v3, v0

    .line 337
    if-eqz v3, :cond_b

    .line 338
    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 335
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    move v0, v2

    .line 343
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_10

    move v2, v1

    move v3, v1

    move v4, v1

    .line 346
    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_f

    .line 347
    iget-object v5, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 348
    if-eqz v5, :cond_e

    .line 349
    add-int/lit8 v4, v4, 0x1

    .line 350
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 346
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 354
    :cond_f
    add-int/2addr v0, v3

    .line 355
    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    .line 357
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v2, v2

    if-lez v2, :cond_12

    move v2, v1

    .line 359
    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 360
    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    aget-wide v4, v3, v1

    .line 361
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/b;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 364
    :cond_11
    add-int/2addr v0, v2

    .line 365
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 367
    :cond_12
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_13

    .line 368
    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v1, v1

    if-lez v1, :cond_14

    .line 372
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 373
    add-int/2addr v0, v1

    .line 374
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 376
    :cond_14
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/d/a/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/d/a/b;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/wearable/d/a/b;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/d/a/b;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/wearable/d/a/b;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/d/a/b;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/wearable/d/a/c;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/d/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/wearable/d/a/c;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/d/a/c;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x60

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

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
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v0, v0

    goto :goto_7

    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    goto/16 :goto_0

    :sswitch_d
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

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    if-nez v2, :cond_f

    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

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
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v2, v2

    goto :goto_a

    :cond_10
    iput-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x75

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    if-nez v0, :cond_12

    move v0, v1

    :goto_c
    add-int/2addr v2, v0

    new-array v2, v2, [F

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_d
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v0, v0

    goto :goto_c

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->c(I)I

    move-result v2

    div-int/lit8 v3, v0, 0x4

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    if-nez v0, :cond_15

    move v0, v1

    :goto_e
    add-int/2addr v3, v0

    new-array v3, v3, [F

    if-eqz v0, :cond_14

    iget-object v4, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    array-length v4, v3

    if-ge v0, v4, :cond_16

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v0, v0

    goto :goto_e

    :cond_16
    iput-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->d(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x62 -> :sswitch_d
        0x68 -> :sswitch_e
        0x72 -> :sswitch_10
        0x75 -> :sswitch_f
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 228
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 230
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->a(ID)V

    .line 232
    :cond_2
    iget v0, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 234
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 236
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 237
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 239
    :cond_4
    iget v0, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    if-eqz v0, :cond_5

    .line 240
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 242
    :cond_5
    iget v0, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    if-eqz v0, :cond_6

    .line 243
    const/4 v0, 0x7

    iget v2, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->e(II)V

    .line 245
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    if-eqz v0, :cond_7

    .line 246
    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 250
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    aget-object v2, v2, v0

    .line 251
    if-eqz v2, :cond_8

    .line 252
    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 249
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 257
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 258
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    aget-object v2, v2, v0

    .line 259
    if-eqz v2, :cond_a

    .line 260
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 257
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 265
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 266
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 267
    if-eqz v2, :cond_c

    .line 268
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 265
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 272
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    .line 273
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 274
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 277
    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    .line 278
    const/16 v0, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 280
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v0, v0

    if-lez v0, :cond_10

    .line 281
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    array-length v0, v0

    if-ge v1, v0, :cond_10

    .line 282
    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 285
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 286
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 119
    if-ne p1, p0, :cond_1

    .line 120
    const/4 v0, 0x1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/wearable/d/a/d;

    if-eqz v1, :cond_0

    .line 125
    check-cast p1, Lcom/google/android/gms/wearable/d/a/d;

    .line 126
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p1, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 137
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 138
    iget-wide v4, p1, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 143
    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 144
    iget v2, p1, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 148
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/d/a/d;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 151
    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    iget v2, p1, Lcom/google/android/gms/wearable/d/a/d;->f:I

    if-ne v1, v2, :cond_0

    .line 154
    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    iget v2, p1, Lcom/google/android/gms/wearable/d/a/d;->g:I

    if-ne v1, v2, :cond_0

    .line 157
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    iget-boolean v2, p1, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([J[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([F[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/d/a/d;->n:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/d/a/d;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto/16 :goto_0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 193
    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->e:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->f:I

    add-int/2addr v0, v1

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/d/a/d;->g:I

    add-int/2addr v0, v1

    .line 202
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/d/a/d;->h:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->i:[Lcom/google/android/gms/wearable/d/a/b;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->j:[Lcom/google/android/gms/wearable/d/a/c;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->k:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->l:[J

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([J)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/d/a/d;->m:[F

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    iget-wide v4, p0, Lcom/google/android/gms/wearable/d/a/d;->n:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/d/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/d/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 202
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method
