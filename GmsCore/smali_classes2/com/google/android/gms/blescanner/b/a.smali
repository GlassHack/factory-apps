.class public final Lcom/google/android/gms/blescanner/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BB)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 276
    array-length v2, p0

    .line 277
    const/4 v1, 0x0

    .line 278
    :goto_0
    add-int/lit8 v3, v2, -0x2

    if-ge v1, v3, :cond_0

    .line 279
    aget-byte v3, p0, v1

    .line 280
    if-gez v3, :cond_1

    .line 296
    :cond_0
    :goto_1
    return v0

    .line 284
    :cond_1
    add-int v4, v1, v3

    if-ge v4, v2, :cond_0

    .line 288
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    .line 289
    if-ne v4, p1, :cond_2

    .line 290
    add-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 293
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 294
    goto :goto_0
.end method

.method public static a([B)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 128
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/google/android/gms/blescanner/b/a;->a([BB)I

    move-result v0

    .line 129
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BI)S
    .locals 2

    .prologue
    .line 203
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static b([B)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 185
    invoke-static {p0, v1}, Lcom/google/android/gms/blescanner/b/a;->a([BB)I

    move-result v0

    .line 186
    if-eq v0, v1, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
