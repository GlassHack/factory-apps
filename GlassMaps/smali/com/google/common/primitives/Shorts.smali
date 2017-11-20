.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(S)I
    .locals 0

    .prologue
    .line 72
    return p0
.end method

.method public static a(SS)I
    .locals 1

    .prologue
    .line 118
    sub-int v0, p0, p1

    return v0
.end method

.method static synthetic a([SSII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->c([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic b([SSII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->d([SSII)I

    move-result v0

    return v0
.end method

.method private static c([SSII)I
    .locals 2

    .prologue
    .line 154
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 155
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 159
    :goto_1
    return v0

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([SSII)I
    .locals 2

    .prologue
    .line 206
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 207
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 211
    :goto_1
    return v0

    .line 206
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
