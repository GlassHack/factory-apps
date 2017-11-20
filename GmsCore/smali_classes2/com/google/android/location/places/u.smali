.class final Lcom/google/android/location/places/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/location/m/a/at;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v3, Lcom/google/android/location/m/a/at;

    invoke-direct {v3}, Lcom/google/android/location/m/a/at;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/places/r;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "coarse"

    aput-object v2, v1, v0

    iput-object v1, v3, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/location/m/a/at;->b:Ljava/lang/String;

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/location/m/a/at;->c:Ljava/lang/Boolean;

    :cond_3
    move-object v0, v3

    .line 49
    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v3, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    .line 36
    iget-object v5, v3, Lcom/google/android/location/m/a/at;->a:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    move v1, v2

    .line 37
    goto :goto_1
.end method
