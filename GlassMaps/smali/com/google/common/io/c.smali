.class final Lcom/google/common/io/c;
.super Lcom/google/common/base/c;
.source "SourceFile"


# instance fields
.field final p:I

.field final q:I

.field final r:I

.field final s:I

.field private final t:Ljava/lang/String;

.field private final u:[C

.field private final v:[B

.field private final w:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-direct {p0}, Lcom/google/common/base/c;-><init>()V

    .line 459
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/io/c;->t:Ljava/lang/String;

    .line 460
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/google/common/io/c;->u:[C

    .line 462
    :try_start_0
    array-length v0, p2

    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v0, v2}, Lcom/google/common/b/a;->a(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lcom/google/common/io/c;->q:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    iget v0, p0, Lcom/google/common/io/c;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 472
    div-int v2, v4, v0

    iput v2, p0, Lcom/google/common/io/c;->r:I

    .line 473
    iget v2, p0, Lcom/google/common/io/c;->q:I

    div-int v0, v2, v0

    iput v0, p0, Lcom/google/common/io/c;->s:I

    .line 475
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/io/c;->p:I

    .line 477
    const/16 v0, 0x80

    new-array v4, v0, [B

    .line 478
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    .line 479
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 480
    aget-char v5, p2, v0

    .line 481
    sget-object v2, Lcom/google/common/base/c;->b:Lcom/google/common/base/c;

    invoke-virtual {v2, v5}, Lcom/google/common/base/c;->b(C)Z

    move-result v2

    const-string v6, "Non-ASCII character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 482
    aget-byte v2, v4, v5

    if-ne v2, v9, :cond_0

    move v2, v3

    :goto_1
    const-string v6, "Duplicate character: %s"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v6, v7}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 483
    int-to-byte v2, v0

    aput-byte v2, v4, v5

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal alphabet length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v2, v1

    .line 482
    goto :goto_1

    .line 485
    :cond_1
    iput-object v4, p0, Lcom/google/common/io/c;->v:[B

    .line 487
    iget v0, p0, Lcom/google/common/io/c;->r:I

    new-array v0, v0, [Z

    .line 488
    :goto_2
    iget v2, p0, Lcom/google/common/io/c;->s:I

    if-ge v1, v2, :cond_2

    .line 489
    mul-int/lit8 v2, v1, 0x8

    iget v4, p0, Lcom/google/common/io/c;->q:I

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v4, v5}, Lcom/google/common/b/a;->a(IILjava/math/RoundingMode;)I

    move-result v2

    aput-boolean v3, v0, v2

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 491
    :cond_2
    iput-object v0, p0, Lcom/google/common/io/c;->w:[Z

    .line 492
    return-void
.end method


# virtual methods
.method final a(I)C
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/common/io/c;->u:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public final b(C)Z
    .locals 2

    .prologue
    .line 555
    sget-object v0, Lcom/google/common/base/c;->b:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/c;->v:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/io/c;->t:Ljava/lang/String;

    return-object v0
.end method
