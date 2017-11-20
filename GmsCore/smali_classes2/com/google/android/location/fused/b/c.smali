.class public final Lcom/google/android/location/fused/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/android/gms/location/internal/LocationRequestInternal;)Lcom/google/android/gms/wearable/m;
    .locals 6

    .prologue
    .line 97
    new-instance v2, Lcom/google/android/gms/wearable/m;

    invoke-direct {v2}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    .line 99
    const-string v0, "PRIORITY"

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 100
    const-string v0, "INTERVAL_MS"

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    .line 101
    const-string v0, "FASTEST_INTERVAL_MS"

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->e()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    .line 102
    const-string v0, "SMALLEST_DISPLACEMENT_METERS"

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->h()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->f()J

    move-result-wide v0

    .line 106
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 109
    :cond_0
    const-string v4, "EXPIRATION_DURATION_MS"

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    .line 110
    const-string v0, "NUM_UPDATES"

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest;->g()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    .line 116
    iget-object v0, v0, Lcom/google/android/gms/location/internal/ClientIdentity;->b:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-string v0, "CLIENTS_PACKAGE_ARRAY"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    return-object v2
.end method

.method public static a(Ljava/util/Collection;Z)Lcom/google/android/gms/wearable/m;
    .locals 4

    .prologue
    .line 49
    new-instance v1, Lcom/google/android/gms/wearable/m;

    invoke-direct {v1}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 50
    const-string v0, "VERSION"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 51
    const-string v0, "TRIGGER_UPDATE"

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Z)V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 54
    invoke-static {v0}, Lcom/google/android/location/fused/b/c;->a(Lcom/google/android/gms/location/internal/LocationRequestInternal;)Lcom/google/android/gms/wearable/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "REQUEST_LIST"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 58
    return-object v1
.end method

.method public static a(Lcom/google/android/gms/wearable/m;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3

    .prologue
    .line 77
    const-string v0, "REQUEST_LIST"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 82
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/m;

    .line 85
    invoke-static {v0, p1}, Lcom/google/android/location/fused/b/c;->b(Lcom/google/android/gms/wearable/m;Landroid/content/pm/PackageManager;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method private static b(Lcom/google/android/gms/wearable/m;Landroid/content/pm/PackageManager;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    .line 134
    const-string v0, "PRIORITY"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 135
    const-string v0, "INTERVAL_MS"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 136
    const-string v0, "FASTEST_INTERVAL_MS"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    .line 137
    const-string v0, "SMALLEST_DISPLACEMENT_METERS"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->f(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/LocationRequest;->a(F)Lcom/google/android/gms/location/LocationRequest;

    .line 138
    const-string v0, "EXPIRATION_DURATION_MS"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->c(J)Lcom/google/android/gms/location/LocationRequest;

    .line 139
    const-string v0, "NUM_UPDATES"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/LocationRequest;->b(I)Lcom/google/android/gms/location/LocationRequest;

    .line 142
    if-eqz p1, :cond_4

    .line 143
    const-string v0, "CLIENTS_PACKAGE_ARRAY"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->l(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    array-length v4, v3

    .line 145
    new-array v5, v4, [I

    move v0, v1

    .line 146
    :goto_0
    if-ge v0, v4, :cond_0

    .line 147
    aget-object v6, v3, v0

    .line 149
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 150
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v6, v5, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    aput-object v6, v3, v0

    goto :goto_1

    .line 156
    :cond_0
    array-length v4, v5

    if-nez v4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 160
    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v4, :cond_1

    aget-object v6, v3, v1

    if-eqz v6, :cond_3

    new-instance v7, Lcom/google/android/gms/location/internal/ClientIdentity;

    aget v8, v5, v1

    invoke-direct {v7, v8, v6}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method
