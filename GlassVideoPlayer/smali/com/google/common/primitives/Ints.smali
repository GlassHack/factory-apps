.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 0

    .prologue
    .line 75
    return p0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 120
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    long-to-int v3, p0

    .line 88
    int-to-long v4, v3

    cmp-long v0, v4, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Out of range: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return v3

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0
.end method

.method public static varargs a([I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 226
    aget v0, p0, v2

    .line 227
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 228
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 229
    aget v0, p0, v1

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 225
    goto :goto_0

    .line 232
    :cond_2
    return v0
.end method

.method static synthetic a([IIII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->c([IIII)I

    move-result v0

    return v0
.end method

.method public static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 133
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 134
    if-ne v3, p1, :cond_1

    .line 135
    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)[I
    .locals 5

    .prologue
    .line 427
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_0

    .line 428
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    .line 431
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 432
    array-length v4, v3

    .line 433
    new-array v1, v4, [I

    .line 434
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 436
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 434
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 438
    goto :goto_0
.end method

.method public static b(J)I
    .locals 2

    .prologue
    .line 101
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 102
    const v0, 0x7fffffff

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 105
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 107
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method static synthetic b([IIII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->d([IIII)I

    move-result v0

    return v0
.end method

.method private static c([IIII)I
    .locals 2

    .prologue
    .line 156
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 157
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 161
    :goto_1
    return v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([IIII)I
    .locals 2

    .prologue
    .line 208
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 209
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 213
    :goto_1
    return v0

    .line 208
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
