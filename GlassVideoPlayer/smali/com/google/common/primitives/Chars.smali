.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(C)I
    .locals 0

    .prologue
    .line 68
    return p0
.end method

.method public static a(CC)I
    .locals 1

    .prologue
    .line 113
    sub-int v0, p0, p1

    return v0
.end method

.method static synthetic a([CCII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->c([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic b([CCII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->d([CCII)I

    move-result v0

    return v0
.end method

.method private static c([CCII)I
    .locals 2

    .prologue
    .line 149
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 150
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 154
    :goto_1
    return v0

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([CCII)I
    .locals 2

    .prologue
    .line 201
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 202
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 206
    :goto_1
    return v0

    .line 201
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
