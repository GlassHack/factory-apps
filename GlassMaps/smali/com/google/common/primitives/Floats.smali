.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(F)I
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static a(FF)I
    .locals 1

    .prologue
    .line 87
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method static synthetic a([FFII)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->c([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic b([FFII)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->d([FFII)I

    move-result v0

    return v0
.end method

.method private static c([FFII)I
    .locals 2

    .prologue
    .line 136
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 137
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 141
    :goto_1
    return v0

    .line 136
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([FFII)I
    .locals 2

    .prologue
    .line 192
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 193
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 197
    :goto_1
    return v0

    .line 192
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
