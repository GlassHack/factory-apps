.class public Lcom/google/h/a/b/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[D


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/h/a/b/b/a/b;->a:I

    .line 36
    iput p2, p0, Lcom/google/h/a/b/b/a/b;->b:I

    .line 37
    mul-int v0, p1, p2

    iput v0, p0, Lcom/google/h/a/b/b/a/b;->c:I

    .line 38
    mul-int v0, p1, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    .line 39
    return-void
.end method

.method public static a()Lcom/google/h/a/b/b/a/b;
    .locals 6

    .prologue
    const/4 v0, 0x2

    .line 23
    new-instance v1, Lcom/google/h/a/b/b/a/b;

    invoke-direct {v1, v0, v0}, Lcom/google/h/a/b/b/a/b;-><init>(II)V

    .line 24
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v2, :cond_0

    .line 25
    iget-object v2, v1, Lcom/google/h/a/b/b/a/b;->d:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v0

    .line 24
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 28
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(II)D
    .locals 5

    .prologue
    .line 68
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->b:I

    if-lt p2, v0, :cond_1

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested index out of bounds: %d must be within [0,%d] and %d must be within [0,%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->a:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final a(IID)V
    .locals 5

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->b:I

    if-lt p2, v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested index out of bounds: %d must be within [0,%d] and %d must be within [0,%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->a:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aput-wide p3, v0, v1

    .line 100
    return-void
.end method

.method public final a(Lcom/google/h/a/b/b/a/b;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 164
    iget v1, p1, Lcom/google/h/a/b/b/a/b;->a:I

    iget v2, p0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/google/h/a/b/b/a/b;->b:I

    iget v2, p0, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v1, v2, :cond_1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Size of this matrix is %d x %d but size of other is %d x %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p1, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget v4, p1, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    iget-object v2, p1, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    instance-of v0, p1, Lcom/google/h/a/b/b/a/b;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    check-cast p1, Lcom/google/h/a/b/b/a/b;

    .line 203
    iget v0, p0, Lcom/google/h/a/b/b/a/b;->a:I

    iget v2, p1, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->b:I

    iget v2, p1, Lcom/google/h/a/b/b/a/b;->b:I

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 208
    :goto_1
    iget v2, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v4, v4, v0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    iget v2, p0, Lcom/google/h/a/b/b/a/b;->a:I

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->b:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-eq v2, v3, :cond_1

    .line 221
    :goto_0
    iget v2, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 223
    mul-int/lit8 v1, v1, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    mul-int/lit8 v0, v1, 0x1f

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v0, v1

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->b:I

    add-int/2addr v0, v1

    .line 230
    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 236
    :goto_0
    iget v2, p0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 237
    :goto_1
    iget v4, p0, Lcom/google/h/a/b/b/a/b;->b:I

    if-ge v2, v4, :cond_0

    .line 238
    const-string v4, "%8f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/google/h/a/b/b/a/b;->a(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 241
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
