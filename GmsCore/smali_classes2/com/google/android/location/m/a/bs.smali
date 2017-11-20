.class public final Lcom/google/android/location/m/a/bs;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Lcom/google/android/location/m/a/ao;

.field public c:[Lcom/google/android/location/m/a/a;

.field public d:[Lcom/google/android/location/m/a/ab;

.field public e:[Lcom/google/android/location/m/a/al;

.field public f:[Lcom/google/android/location/m/a/h;

.field public g:[Lcom/google/android/location/m/a/ch;

.field public h:[Lcom/google/android/location/m/a/aj;

.field public i:Lcom/google/android/location/m/a/al;

.field public j:[Lcom/google/android/location/m/a/y;

.field public k:[Lcom/google/android/location/m/a/e;

.field public l:[Lcom/google/android/location/m/a/cc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    invoke-static {}, Lcom/google/android/location/m/a/ao;->b()[Lcom/google/android/location/m/a/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    invoke-static {}, Lcom/google/android/location/m/a/a;->b()[Lcom/google/android/location/m/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    invoke-static {}, Lcom/google/android/location/m/a/ab;->b()[Lcom/google/android/location/m/a/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    invoke-static {}, Lcom/google/android/location/m/a/al;->b()[Lcom/google/android/location/m/a/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    invoke-static {}, Lcom/google/android/location/m/a/h;->b()[Lcom/google/android/location/m/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    invoke-static {}, Lcom/google/android/location/m/a/ch;->b()[Lcom/google/android/location/m/a/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    invoke-static {}, Lcom/google/android/location/m/a/aj;->b()[Lcom/google/android/location/m/a/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    iput-object v1, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-static {}, Lcom/google/android/location/m/a/y;->b()[Lcom/google/android/location/m/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    invoke-static {}, Lcom/google/android/location/m/a/e;->b()[Lcom/google/android/location/m/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    invoke-static {}, Lcom/google/android/location/m/a/cc;->b()[Lcom/google/android/location/m/a/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    iput-object v1, p0, Lcom/google/android/location/m/a/bs;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bs;->G:I

    .line 61
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 275
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    aget-object v3, v3, v0

    .line 282
    if-eqz v3, :cond_1

    .line 283
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 288
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 289
    :goto_1
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 290
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    aget-object v3, v3, v0

    .line 291
    if-eqz v3, :cond_4

    .line 292
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 289
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 297
    :cond_6
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 298
    :goto_2
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 299
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    aget-object v3, v3, v0

    .line 300
    if-eqz v3, :cond_7

    .line 301
    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 298
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 306
    :cond_9
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 307
    :goto_3
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 308
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    aget-object v3, v3, v0

    .line 309
    if-eqz v3, :cond_a

    .line 310
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 307
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v2

    .line 315
    :cond_c
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v0

    move v0, v1

    .line 316
    :goto_4
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_e

    .line 317
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    aget-object v3, v3, v0

    .line 318
    if-eqz v3, :cond_d

    .line 319
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 316
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move v0, v2

    .line 324
    :cond_f
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    array-length v2, v2

    if-lez v2, :cond_12

    move v2, v0

    move v0, v1

    .line 325
    :goto_5
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    array-length v3, v3

    if-ge v0, v3, :cond_11

    .line 326
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    aget-object v3, v3, v0

    .line 327
    if-eqz v3, :cond_10

    .line 328
    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 325
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    move v0, v2

    .line 333
    :cond_12
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    array-length v2, v2

    if-lez v2, :cond_15

    move v2, v0

    move v0, v1

    .line 334
    :goto_6
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    array-length v3, v3

    if-ge v0, v3, :cond_14

    .line 335
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    aget-object v3, v3, v0

    .line 336
    if-eqz v3, :cond_13

    .line 337
    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 334
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_14
    move v0, v2

    .line 342
    :cond_15
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-eqz v2, :cond_16

    .line 343
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 346
    :cond_16
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    array-length v2, v2

    if-lez v2, :cond_19

    move v2, v0

    move v0, v1

    .line 347
    :goto_7
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    array-length v3, v3

    if-ge v0, v3, :cond_18

    .line 348
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    aget-object v3, v3, v0

    .line 349
    if-eqz v3, :cond_17

    .line 350
    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 347
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    move v0, v2

    .line 355
    :cond_19
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    array-length v2, v2

    if-lez v2, :cond_1c

    move v2, v0

    move v0, v1

    .line 356
    :goto_8
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    array-length v3, v3

    if-ge v0, v3, :cond_1b

    .line 357
    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    aget-object v3, v3, v0

    .line 358
    if-eqz v3, :cond_1a

    .line 359
    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 356
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1b
    move v0, v2

    .line 364
    :cond_1c
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    array-length v2, v2

    if-lez v2, :cond_1e

    .line 365
    :goto_9
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    .line 366
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    aget-object v2, v2, v1

    .line 367
    if-eqz v2, :cond_1d

    .line 368
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 365
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 373
    :cond_1e
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bs;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ao;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/ao;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ao;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/ao;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ao;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/a;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/location/m/a/a;

    invoke-direct {v3}, Lcom/google/android/location/m/a/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/location/m/a/a;

    invoke-direct {v3}, Lcom/google/android/location/m/a/a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ab;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/location/m/a/ab;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ab;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/location/m/a/ab;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ab;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/al;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    new-instance v3, Lcom/google/android/location/m/a/al;

    invoke-direct {v3}, Lcom/google/android/location/m/a/al;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    array-length v0, v0

    goto :goto_7

    :cond_c
    new-instance v3, Lcom/google/android/location/m/a/al;

    invoke-direct {v3}, Lcom/google/android/location/m/a/al;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    if-nez v0, :cond_e

    move v0, v1

    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/h;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    new-instance v3, Lcom/google/android/location/m/a/h;

    invoke-direct {v3}, Lcom/google/android/location/m/a/h;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    array-length v0, v0

    goto :goto_9

    :cond_f
    new-instance v3, Lcom/google/android/location/m/a/h;

    invoke-direct {v3}, Lcom/google/android/location/m/a/h;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    if-nez v0, :cond_11

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ch;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_12

    new-instance v3, Lcom/google/android/location/m/a/ch;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ch;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    array-length v0, v0

    goto :goto_b

    :cond_12
    new-instance v3, Lcom/google/android/location/m/a/ch;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ch;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    if-nez v0, :cond_14

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    new-instance v3, Lcom/google/android/location/m/a/aj;

    invoke-direct {v3}, Lcom/google/android/location/m/a/aj;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    array-length v0, v0

    goto :goto_d

    :cond_15
    new-instance v3, Lcom/google/android/location/m/a/aj;

    invoke-direct {v3}, Lcom/google/android/location/m/a/aj;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/location/m/a/al;

    invoke-direct {v0}, Lcom/google/android/location/m/a/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    :cond_16
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x52

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/y;

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19

    new-instance v3, Lcom/google/android/location/m/a/y;

    invoke-direct {v3}, Lcom/google/android/location/m/a/y;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_18
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    array-length v0, v0

    goto :goto_f

    :cond_19
    new-instance v3, Lcom/google/android/location/m/a/y;

    invoke-direct {v3}, Lcom/google/android/location/m/a/y;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_11
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/e;

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_12
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1c

    new-instance v3, Lcom/google/android/location/m/a/e;

    invoke-direct {v3}, Lcom/google/android/location/m/a/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1b
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    array-length v0, v0

    goto :goto_11

    :cond_1c
    new-instance v3, Lcom/google/android/location/m/a/e;

    invoke-direct {v3}, Lcom/google/android/location/m/a/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_13
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/cc;

    if-eqz v0, :cond_1d

    iget-object v3, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_14
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1f

    new-instance v3, Lcom/google/android/location/m/a/cc;

    invoke-direct {v3}, Lcom/google/android/location/m/a/cc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1e
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    array-length v0, v0

    goto :goto_13

    :cond_1f
    new-instance v3, Lcom/google/android/location/m/a/cc;

    invoke-direct {v3}, Lcom/google/android/location/m/a/cc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 187
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    aget-object v2, v2, v0

    .line 189
    if-eqz v2, :cond_1

    .line 190
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 187
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 195
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    aget-object v2, v2, v0

    .line 197
    if-eqz v2, :cond_3

    .line 198
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 203
    :goto_2
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 204
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    aget-object v2, v2, v0

    .line 205
    if-eqz v2, :cond_5

    .line 206
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 203
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 211
    :goto_3
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 212
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    aget-object v2, v2, v0

    .line 213
    if-eqz v2, :cond_7

    .line 214
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 211
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    .line 219
    :goto_4
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 220
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    aget-object v2, v2, v0

    .line 221
    if-eqz v2, :cond_9

    .line 222
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 219
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    .line 227
    :goto_5
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 228
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    aget-object v2, v2, v0

    .line 229
    if-eqz v2, :cond_b

    .line 230
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 227
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 234
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    .line 235
    :goto_6
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 236
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    aget-object v2, v2, v0

    .line 237
    if-eqz v2, :cond_d

    .line 238
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 235
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-eqz v0, :cond_f

    .line 243
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 245
    :cond_f
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    .line 246
    :goto_7
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 247
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    aget-object v2, v2, v0

    .line 248
    if-eqz v2, :cond_10

    .line 249
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 246
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 253
    :cond_11
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    .line 254
    :goto_8
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 255
    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    aget-object v2, v2, v0

    .line 256
    if-eqz v2, :cond_12

    .line 257
    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 254
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 261
    :cond_13
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    array-length v0, v0

    if-lez v0, :cond_15

    .line 262
    :goto_9
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    array-length v0, v0

    if-ge v1, v0, :cond_15

    .line 263
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    aget-object v0, v0, v1

    .line 264
    if-eqz v0, :cond_14

    .line 265
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 262
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 269
    :cond_15
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 270
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 84
    const/4 v0, 0x1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bs;

    if-eqz v1, :cond_0

    .line 89
    check-cast p1, Lcom/google/android/location/m/a/bs;

    .line 90
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 91
    iget-object v1, p1, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-nez v1, :cond_5

    .line 126
    iget-object v1, p1, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-nez v1, :cond_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bs;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    iget-object v2, p1, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/al;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->b:[Lcom/google/android/location/m/a/ao;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->c:[Lcom/google/android/location/m/a/a;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->d:[Lcom/google/android/location/m/a/ab;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->e:[Lcom/google/android/location/m/a/al;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->f:[Lcom/google/android/location/m/a/h;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->g:[Lcom/google/android/location/m/a/ch;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->h:[Lcom/google/android/location/m/a/aj;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->j:[Lcom/google/android/location/m/a/y;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->k:[Lcom/google/android/location/m/a/e;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->l:[Lcom/google/android/location/m/a/cc;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bs;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bs;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bs;->i:Lcom/google/android/location/m/a/al;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/al;->hashCode()I

    move-result v1

    goto :goto_1
.end method
