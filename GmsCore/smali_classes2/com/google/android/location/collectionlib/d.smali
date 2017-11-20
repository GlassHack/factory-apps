.class final Lcom/google/android/location/collectionlib/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    const-string v0, "com.google.android.apps.maps.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/d;->a:Ljava/util/regex/Pattern;

    .line 34
    new-instance v0, Lcom/google/android/location/collectionlib/e;

    const-string v1, "com.google.android.apps.modis"

    sget-object v4, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 43
    new-instance v4, Lcom/google/android/location/collectionlib/e;

    const-string v5, "com.google.android.apps.activitydatacollection"

    sget-object v8, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v6, v2

    move v7, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 52
    new-instance v5, Lcom/google/android/location/collectionlib/e;

    const-string v6, "com.google.android.apps.maps"

    sget-object v9, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v7, v2

    move v8, v3

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 61
    new-instance v6, Lcom/google/android/location/collectionlib/e;

    const-string v7, "com.google.android.gms"

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v8, v2

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 71
    new-instance v7, Lcom/google/android/location/collectionlib/e;

    const-string v8, "com.google.nlpdemoapp"

    sget-object v11, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v9, v2

    move v10, v3

    move v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 80
    new-instance v8, Lcom/google/android/location/collectionlib/e;

    const-string v9, "com.google.android.apps.highfive"

    sget-object v12, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v10, v2

    move v11, v2

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 89
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/google/android/location/collectionlib/cb;

    sget-object v9, Lcom/google/android/location/collectionlib/cb;->a:Lcom/google/android/location/collectionlib/cb;

    aput-object v9, v1, v2

    sget-object v9, Lcom/google/android/location/collectionlib/cb;->b:Lcom/google/android/location/collectionlib/cb;

    aput-object v9, v1, v3

    const/4 v9, 0x2

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->g:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->h:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    aput-object v10, v1, v9

    invoke-static {v1}, Lcom/google/android/location/collectionlib/cb;->a([Lcom/google/android/location/collectionlib/cb;)Ljava/util/Set;

    move-result-object v13

    .line 93
    new-instance v9, Lcom/google/android/location/collectionlib/e;

    const-string v10, "com.google.location.lbs.collectionlib"

    move v11, v3

    move v12, v2

    move v14, v3

    invoke-direct/range {v9 .. v14}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 100
    new-instance v10, Lcom/google/android/location/collectionlib/e;

    const-string v11, "com.google.location.lbs.activityclassifierapp"

    sget-object v14, Lcom/google/android/location/collectionlib/cb;->q:Ljava/util/Set;

    move v12, v2

    move v13, v2

    move v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/google/android/location/collectionlib/e;-><init>(Ljava/lang/String;ZZLjava/util/Set;Z)V

    .line 108
    invoke-static {}, Lcom/google/android/location/collectionlib/db;->d()Ljava/util/Map;

    move-result-object v1

    .line 109
    iget-object v2, v0, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, v4, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, v5, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, v6, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, v8, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, v9, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, v7, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, v10, Lcom/google/android/location/collectionlib/e;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/collectionlib/d;->b:Ljava/util/Map;

    .line 118
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ai;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    sget-object v0, Lcom/google/android/location/collectionlib/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "com.google.android.apps.maps"

    :cond_0
    sget-object v0, Lcom/google/android/location/collectionlib/d;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/collectionlib/f;

    const-string v1, "%s cannot access to this library. Please contact lbs-team@google.com."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    invoke-interface {p1}, Lcom/google/android/location/collectionlib/ai;->d()Lcom/google/android/location/collectionlib/aj;

    move-result-object v1

    sget-object v4, Lcom/google/android/location/collectionlib/aj;->c:Lcom/google/android/location/collectionlib/aj;

    if-ne v1, v4, :cond_6

    move v1, v2

    :goto_0
    invoke-interface {p1}, Lcom/google/android/location/collectionlib/ai;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Lcom/google/android/location/collectionlib/ai;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/location/collectionlib/e;->a(Ljava/lang/String;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/google/android/location/collectionlib/e;->b:Z

    if-eqz v4, :cond_5

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/google/android/location/collectionlib/e;->c:Z

    if-eqz v1, :cond_5

    :cond_3
    invoke-interface {p1}, Lcom/google/android/location/collectionlib/ai;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/google/android/location/collectionlib/e;->e:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, v0, Lcom/google/android/location/collectionlib/e;->d:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/location/collectionlib/ai;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v2

    :cond_5
    if-nez v3, :cond_7

    .line 134
    new-instance v0, Lcom/google/android/location/collectionlib/f;

    const-string v1, "Some features are prohibited from use by this application. Please contact lbs-team@google.com"

    invoke-direct {v0, v1}, Lcom/google/android/location/collectionlib/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v1, v3

    .line 133
    goto :goto_0

    .line 137
    :cond_7
    return-void

    :cond_8
    move v4, v3

    goto :goto_1
.end method
