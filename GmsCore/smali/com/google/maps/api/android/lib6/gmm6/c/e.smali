.class public final Lcom/google/maps/api/android/lib6/gmm6/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(D)I
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static a(I)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    new-instance v0, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/c;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->a(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->c(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->b(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 6

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/c/bp;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iget v1, p0, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/bp;->b()F

    move-result v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(FFF)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/a/a/f;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/f;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(D)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/a/a/f;-><init>(II)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/maps/api/android/lib6/c/bp;
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bp;

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->c:F

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->b:F

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->a:F

    invoke-direct {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(FFF)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cd;->a(Lcom/google/maps/api/android/lib6/gmm6/l/p;)Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Lcom/google/maps/api/android/lib6/gmm6/streetview/t;)[Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    aget-object v3, p0, v0

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->c:Ljava/lang/String;

    aget-object v4, p0, v0

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/streetview/t;->a:F

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;-><init>(Ljava/lang/String;F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(DD)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    return-object v0
.end method
