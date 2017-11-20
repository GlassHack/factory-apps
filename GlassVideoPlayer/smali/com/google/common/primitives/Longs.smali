.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)I
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static a(JJ)I
    .locals 1

    .prologue
    .line 90
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a([JJII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->c([JJII)I

    move-result v0

    return v0
.end method

.method private static a(BBBBBBBB)J
    .locals 7

    .prologue
    const-wide/16 v5, 0xff

    .line 296
    int-to-long v0, p0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a([B)J
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->a(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 283
    goto :goto_0
.end method

.method static synthetic b([JJII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->d([JJII)I

    move-result v0

    return v0
.end method

.method public static b(J)[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 261
    new-array v1, v4, [B

    .line 262
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    .line 263
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 264
    shr-long/2addr p0, v4

    .line 262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_0
    return-object v1
.end method

.method private static c([JJII)I
    .locals 3

    .prologue
    .line 126
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 127
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 131
    :goto_1
    return v0

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([JJII)I
    .locals 3

    .prologue
    .line 178
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 179
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 183
    :goto_1
    return v0

    .line 178
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
