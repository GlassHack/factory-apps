.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Z)I
    .locals 1

    .prologue
    .line 59
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static a(ZZ)I
    .locals 1

    .prologue
    .line 73
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a([ZZII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->c([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic b([ZZII)I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->d([ZZII)I

    move-result v0

    return v0
.end method

.method private static c([ZZII)I
    .locals 2

    .prologue
    .line 118
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 119
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 123
    :goto_1
    return v0

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static d([ZZII)I
    .locals 2

    .prologue
    .line 170
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 171
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 175
    :goto_1
    return v0

    .line 170
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
