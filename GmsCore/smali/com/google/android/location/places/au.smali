.class public final Lcom/google/android/location/places/au;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/c/f/b/g;
    .locals 6

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 257
    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    .line 258
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/g;->a:Ljava/lang/Integer;

    .line 259
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/g;->b:Ljava/lang/Integer;

    .line 260
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/c/f/b/h;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/google/c/f/b/h;

    invoke-direct {v0}, Lcom/google/c/f/b/h;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/c/f/b/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/h;->b:Lcom/google/c/f/b/g;

    .line 252
    iget-object v1, p0, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/android/location/places/au;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/c/f/b/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/h;->a:Lcom/google/c/f/b/g;

    .line 253
    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/places/PlaceFilter;Ljava/lang/String;)Lcom/google/c/f/b/k;
    .locals 5

    .prologue
    .line 235
    new-instance v1, Lcom/google/c/f/b/k;

    invoke-direct {v1}, Lcom/google/c/f/b/k;-><init>()V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    .line 239
    iget-object v3, v1, Lcom/google/c/f/b/k;->b:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iput-object p1, v1, Lcom/google/c/f/b/k;->d:Ljava/lang/String;

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/c/f/b/k;->e:Ljava/lang/Boolean;

    .line 246
    return-object v1
.end method

.method public static a(ILjava/lang/String;I)Lcom/google/c/f/b/n;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/google/c/f/b/n;

    invoke-direct {v0}, Lcom/google/c/f/b/n;-><init>()V

    .line 216
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/n;->a:Ljava/lang/Integer;

    .line 217
    new-instance v1, Lcom/google/c/f/b/b;

    invoke-direct {v1}, Lcom/google/c/f/b/b;-><init>()V

    iput-object v1, v0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    .line 218
    iget-object v1, v0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    iput-object p1, v1, Lcom/google/c/f/b/b;->a:Ljava/lang/String;

    .line 219
    iget-object v1, v0, Lcom/google/c/f/b/n;->b:Lcom/google/c/f/b/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/c/f/b/b;->b:Ljava/lang/Integer;

    .line 220
    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/c/f/b/p;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/google/c/f/b/p;

    invoke-direct {v0}, Lcom/google/c/f/b/p;-><init>()V

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/p;->a:Ljava/lang/Integer;

    .line 227
    iput-object p1, v0, Lcom/google/c/f/b/p;->b:Ljava/lang/String;

    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    iput-object p2, v0, Lcom/google/c/f/b/p;->c:Ljava/lang/String;

    .line 231
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/google/c/f/b/n;Landroid/location/Location;Ljava/util/List;)V
    .locals 6

    .prologue
    const-wide v4, 0x416312d000000000L    # 1.0E7

    .line 190
    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Lcom/google/c/f/b/g;

    invoke-direct {v0}, Lcom/google/c/f/b/g;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/g;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/c/f/b/g;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/n;->c:Lcom/google/c/f/b/g;

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/c/f/b/s;

    iput-object v0, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 197
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    .line 198
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    new-instance v3, Lcom/google/c/f/b/s;

    invoke-direct {v3}, Lcom/google/c/f/b/s;-><init>()V

    aput-object v3, v2, v1

    .line 199
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    aget-object v2, v2, v1

    iget-wide v4, v0, Lcom/google/android/location/reporting/a/i;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/c/f/b/s;->a:Ljava/lang/Long;

    .line 200
    iget-object v2, p0, Lcom/google/c/f/b/n;->d:[Lcom/google/c/f/b/s;

    aget-object v2, v2, v1

    iget v0, v0, Lcom/google/android/location/reporting/a/i;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/c/f/b/s;->b:Ljava/lang/Integer;

    .line 196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method
