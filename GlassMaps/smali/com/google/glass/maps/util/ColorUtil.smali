.class public Lcom/google/glass/maps/util/ColorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static argbToRgbFloats(I[F)V
    .locals 3

    .prologue
    const v2, 0x3b808081

    .line 30
    const/4 v0, 0x0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 31
    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 32
    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 33
    return-void
.end method

.method public static argbToRgbaFloats(I[F)V
    .locals 3

    .prologue
    const v2, 0x3b808081

    .line 17
    const/4 v0, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 18
    const/4 v0, 0x0

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 19
    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 20
    const/4 v0, 0x2

    and-int/lit16 v1, p0, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 21
    return-void
.end method
