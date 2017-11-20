.class public final Lcom/google/android/location/places/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;
    .locals 6

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 322
    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    .line 323
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/ae;->a:Ljava/lang/Integer;

    .line 324
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/m/a/ae;->b:Ljava/lang/Integer;

    .line 325
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/location/m/a/bc;)Lcom/google/android/location/m/a/ah;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 249
    new-instance v0, Lcom/google/android/location/m/a/ah;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ah;-><init>()V

    new-instance v1, Lcom/google/android/location/m/a/bo;

    invoke-direct {v1}, Lcom/google/android/location/m/a/bo;-><init>()V

    iput-object v1, v0, Lcom/google/android/location/m/a/ah;->a:Lcom/google/android/location/m/a/bo;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/location/m/a/d;

    invoke-direct {v1}, Lcom/google/android/location/m/a/d;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    new-array v2, v4, [Lcom/google/android/location/m/a/d;

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/location/m/a/ah;->b:[Lcom/google/android/location/m/a/d;

    .line 251
    :cond_0
    new-instance v1, Lcom/google/android/location/m/a/bg;

    invoke-direct {v1}, Lcom/google/android/location/m/a/bg;-><init>()V

    .line 252
    new-array v2, v4, [Lcom/google/android/location/m/a/bc;

    aput-object p1, v2, v3

    iput-object v2, v1, Lcom/google/android/location/m/a/bg;->a:[Lcom/google/android/location/m/a/bc;

    .line 254
    new-instance v2, Lcom/google/android/location/m/a/ai;

    invoke-direct {v2}, Lcom/google/android/location/m/a/ai;-><init>()V

    .line 255
    iput-object v1, v2, Lcom/google/android/location/m/a/ai;->n:Lcom/google/android/location/m/a/bg;

    .line 257
    new-array v1, v4, [Lcom/google/android/location/m/a/ai;

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/google/android/location/m/a/ah;->d:[Lcom/google/android/location/m/a/ai;

    .line 259
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    new-instance v3, Lcom/google/android/location/m/a/bc;

    invoke-direct {v3}, Lcom/google/android/location/m/a/bc;-><init>()V

    .line 307
    iget-object v0, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/location/m/a/bc;->a:Ljava/lang/String;

    .line 309
    invoke-static {p1}, Lcom/google/android/location/places/u;->a(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/location/m/a/at;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    iput-object v0, v3, Lcom/google/android/location/m/a/bc;->b:Lcom/google/android/location/m/a/at;

    .line 314
    :cond_0
    sget-object v0, Lcom/google/android/location/x;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.android.geo.API_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/util/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-eqz v4, :cond_3

    move v0, v1

    :goto_0
    const-string v6, "API key not found.  Check that <meta-data android:name=\"%s\" android:value=\"your API key\"/> is in the <application> element of AndroidManifest.xml"

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "com.google.android.geo.API_KEY"

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_4

    :goto_1
    const-string v0, "Package is not signed."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/location/m/a/d;

    invoke-direct {v0}, Lcom/google/android/location/m/a/d;-><init>()V

    iget-object v1, p2, Lcom/google/android/gms/location/places/internal/PlacesParams;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/location/m/a/d;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/location/m/a/d;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/location/m/a/d;->g:Ljava/lang/String;

    iput-object v0, v3, Lcom/google/android/location/m/a/bc;->k:Lcom/google/android/location/m/a/d;

    .line 318
    :cond_1
    return-object v3

    .line 315
    :catch_0
    move-exception v0

    const-string v1, "Places"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Places"

    const-string v2, "Package name not found"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Package name not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;
    .locals 4

    .prologue
    .line 94
    invoke-static {p0, p3, p4}, Lcom/google/android/location/places/bd;->a(Landroid/content/Context;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;)Lcom/google/android/location/m/a/bc;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/google/android/location/m/a/bm;

    invoke-direct {v1}, Lcom/google/android/location/m/a/bm;-><init>()V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    new-instance v2, Lcom/google/android/location/m/a/bq;

    invoke-direct {v2}, Lcom/google/android/location/m/a/bq;-><init>()V

    .line 101
    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v3}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    .line 102
    iget-object v3, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v3}, Lcom/google/android/location/places/bd;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/location/m/a/ae;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    .line 103
    iput-object v2, v1, Lcom/google/android/location/m/a/bm;->b:Lcom/google/android/location/m/a/bq;

    .line 106
    :cond_0
    iput-object p2, v1, Lcom/google/android/location/m/a/bm;->a:Ljava/lang/String;

    .line 108
    iput-object v1, v0, Lcom/google/android/location/m/a/bc;->j:Lcom/google/android/location/m/a/bm;

    .line 110
    return-object v0
.end method
