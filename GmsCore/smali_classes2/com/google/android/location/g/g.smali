.class public final Lcom/google/android/location/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([F)Lcom/google/android/location/g/h;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 30
    .line 31
    array-length v4, p0

    move v1, v0

    move v3, v2

    .line 33
    :goto_0
    if-ge v1, v4, :cond_0

    .line 34
    aget v5, p0, v1

    add-float/2addr v3, v5

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    int-to-float v1, v4

    div-float/2addr v3, v1

    move v1, v2

    .line 40
    :goto_1
    if-ge v0, v4, :cond_1

    .line 41
    aget v5, p0, v0

    sub-float/2addr v5, v3

    .line 42
    mul-float/2addr v5, v5

    add-float/2addr v1, v5

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    .line 48
    new-instance v0, Lcom/google/android/location/g/h;

    invoke-direct {v0, v3, v2}, Lcom/google/android/location/g/h;-><init>(FF)V

    .line 51
    :goto_2
    return-object v0

    .line 50
    :cond_2
    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 51
    new-instance v0, Lcom/google/android/location/g/h;

    invoke-direct {v0, v3, v1}, Lcom/google/android/location/g/h;-><init>(FF)V

    goto :goto_2
.end method
