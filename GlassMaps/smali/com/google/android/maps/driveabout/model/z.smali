.class public final Lcom/google/android/maps/driveabout/model/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)F
    .locals 2

    .prologue
    .line 80
    int-to-float v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static a(I[BI)V
    .locals 3

    .prologue
    .line 138
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 139
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 140
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 141
    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 142
    return-void
.end method

.method public static a(II)Z
    .locals 1

    .prologue
    .line 128
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)F
    .locals 2

    .prologue
    .line 90
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static c(I)F
    .locals 2

    .prologue
    .line 103
    int-to-float v0, p0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static d(I)F
    .locals 2

    .prologue
    .line 113
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    return v0
.end method
