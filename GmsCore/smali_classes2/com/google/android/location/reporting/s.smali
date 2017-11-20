.class public final Lcom/google/android/location/reporting/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/location/Location;Landroid/location/Location;)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 118
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 119
    sget-object v0, Lcom/google/android/location/reporting/service/y;->w:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_0
.end method
