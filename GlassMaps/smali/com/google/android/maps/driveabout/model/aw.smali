.class public Lcom/google/android/maps/driveabout/model/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/maps/driveabout/model/k;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/model/aw;-><init>(IIILcom/google/android/maps/driveabout/model/k;)V

    .line 59
    return-void
.end method

.method private constructor <init>(IIILcom/google/android/maps/driveabout/model/k;)V
    .locals 3

    .prologue
    const/high16 v2, 0x20000000

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    .line 47
    iput p2, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    .line 48
    iput p3, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    .line 49
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    .line 51
    rsub-int/lit8 v0, p1, 0x12

    iput v0, p0, Lcom/google/android/maps/driveabout/model/aw;->c:I

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    shr-int/2addr v0, p1

    .line 53
    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/model/aw;->a:I

    .line 54
    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/aw;->b:I

    .line 55
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/aw;)I
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->d:I

    if-ne v0, v1, :cond_5

    .line 427
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->e:I

    if-ne v0, v1, :cond_4

    .line 428
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->f:I

    if-ne v0, v1, :cond_3

    .line 429
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 430
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    if-nez v0, :cond_2

    .line 432
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 437
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 440
    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 443
    :cond_5
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/aw;->d:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(III)Lcom/google/android/maps/driveabout/model/aw;
    .locals 5

    .prologue
    const/high16 v4, 0x20000000

    const/16 v1, 0x1e

    const/4 v0, 0x0

    .line 110
    if-gtz p0, :cond_0

    .line 112
    new-instance v1, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v1, v0, v0, v0}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 113
    :cond_0
    if-le p0, v1, :cond_1

    move p0, v1

    .line 116
    :cond_1
    rsub-int/lit8 v1, p0, 0x1e

    .line 117
    add-int v2, p1, v4

    shr-int/2addr v2, v1

    .line 119
    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    .line 121
    const/4 v3, 0x1

    shl-int/2addr v3, p0

    .line 124
    if-gez v2, :cond_3

    .line 125
    add-int/2addr v2, v3

    .line 131
    :cond_2
    :goto_1
    if-gez v1, :cond_4

    .line 136
    :goto_2
    new-instance v1, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    .line 126
    :cond_3
    if-lt v2, v3, :cond_2

    .line 127
    sub-int/2addr v2, v3

    goto :goto_1

    .line 133
    :cond_4
    if-lt v1, v3, :cond_5

    .line 134
    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/aw;
    .locals 4

    .prologue
    .line 257
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 258
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 259
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 260
    new-instance v3, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/bh;I)Ljava/util/ArrayList;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    .line 269
    if-gez p1, :cond_1

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bh;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bh;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    .line 274
    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(III)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v5

    .line 278
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bh;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 279
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bh;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 277
    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/model/aw;->a(III)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v6

    .line 280
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v1

    .line 281
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    .line 282
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v7

    .line 283
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v8

    .line 285
    const/4 v0, 0x1

    shl-int v9, v0, p1

    .line 287
    if-le v1, v7, :cond_2

    .line 288
    sub-int v0, v9, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    .line 294
    :goto_1
    if-gez v4, :cond_3

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 290
    :cond_2
    sub-int v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 298
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    if-gt v4, v10, :cond_4

    .line 300
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    if-ne v4, v10, :cond_0

    .line 302
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_4
    if-le v1, v7, :cond_8

    move v4, v1

    .line 305
    :goto_2
    if-ge v4, v9, :cond_7

    move v1, v2

    .line 306
    :goto_3
    if-gt v1, v8, :cond_5

    .line 307
    new-instance v5, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v5, p1, v4, v1}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 305
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 310
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :cond_7
    if-gt v3, v7, :cond_0

    move v1, v2

    .line 311
    :goto_4
    if-gt v1, v8, :cond_6

    .line 312
    new-instance v4, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v4, p1, v3, v1}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v3, v1

    .line 316
    :goto_5
    if-gt v3, v7, :cond_0

    move v1, v2

    .line 317
    :goto_6
    if-gt v1, v8, :cond_9

    .line 318
    new-instance v4, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {v4, p1, v3, v1}, Lcom/google/android/maps/driveabout/model/aw;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 316
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 247
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 248
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 249
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/maps/driveabout/model/aw;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/aw;->a(Lcom/google/android/maps/driveabout/model/aw;)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/k;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/model/am;
    .locals 6

    .prologue
    .line 222
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    shr-int/2addr v0, v1

    .line 223
    new-instance v1, Lcom/google/android/maps/driveabout/model/am;

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    iget v3, p0, Lcom/google/android/maps/driveabout/model/aw;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/model/aw;->b:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    iget v4, p0, Lcom/google/android/maps/driveabout/model/aw;->a:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/google/android/maps/driveabout/model/aw;->b:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 383
    if-ne p0, p1, :cond_1

    .line 384
    const/4 v0, 0x1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    instance-of v1, p1, Lcom/google/android/maps/driveabout/model/aw;

    if-eqz v1, :cond_0

    .line 390
    check-cast p1, Lcom/google/android/maps/driveabout/model/aw;

    .line 392
    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->e:I

    if-ne v1, v2, :cond_0

    .line 395
    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->f:I

    if-ne v1, v2, :cond_0

    .line 398
    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    iget v2, p1, Lcom/google/android/maps/driveabout/model/aw;->d:I

    if-ne v1, v2, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    .line 408
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    add-int/2addr v0, v1

    .line 409
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    add-int/2addr v0, v1

    .line 410
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    if-eqz v1, :cond_0

    .line 411
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 413
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    if-nez v0, :cond_0

    .line 419
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/aw;->d:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/aw;->e:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/aw;->f:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/aw;->g:Lcom/google/android/maps/driveabout/model/k;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
