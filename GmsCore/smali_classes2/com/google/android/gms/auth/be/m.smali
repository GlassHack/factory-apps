.class final Lcom/google/android/gms/auth/be/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public final a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2375
    const/4 v0, 0x0

    .line 2377
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2380
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/be/m;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2381
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 2382
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2383
    iget-object v4, p0, Lcom/google/android/gms/auth/be/m;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2384
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2387
    iget-object v4, p0, Lcom/google/android/gms/auth/be/m;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/google/android/gms/auth/be/m;->c:Ljava/lang/String;

    .line 2394
    :goto_1
    return-object v0

    .line 2391
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2392
    iget-object v0, p0, Lcom/google/android/gms/auth/be/m;->c:Ljava/lang/String;

    goto :goto_1

    .line 2394
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/be/m;->b:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
