.class public final Lcom/google/glass/sound/VolumeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIGH_VOLUME_PERCENTAGE:I = 0x32


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVolumePercent(II)I
    .locals 3

    .prologue
    .line 30
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 34
    :cond_0
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 38
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static isHighVolumeRatio(II)Z
    .locals 2

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/google/glass/sound/VolumeUtils;->getVolumePercent(II)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
