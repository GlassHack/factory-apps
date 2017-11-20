.class final Lcom/google/android/gms/auth/api/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/auth/api/k;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/k;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/gms/auth/api/o;->b:Lcom/google/android/gms/auth/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/o;->a:Ljava/util/Map;

    .line 278
    const-string v0, "baseUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/o;->c:Ljava/lang/String;

    .line 279
    const-string v0, "methods"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 284
    new-instance v3, Lcom/google/android/gms/auth/api/l;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/o;->c:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v2}, Lcom/google/android/gms/auth/api/l;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 285
    iget-object v2, p0, Lcom/google/android/gms/auth/api/o;->a:Ljava/util/Map;

    iget-object v4, v3, Lcom/google/android/gms/auth/api/l;->a:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_0
    const-string v0, "resources"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/o;->a(Lorg/json/JSONObject;)V

    .line 293
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 302
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 307
    const-string v0, "methods"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 309
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    new-instance v5, Lcom/google/android/gms/auth/api/l;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/o;->b:Lcom/google/android/gms/auth/api/k;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/o;->c:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/android/gms/auth/api/l;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/auth/api/o;->a:Ljava/util/Map;

    iget-object v6, v5, Lcom/google/android/gms/auth/api/l;->a:Ljava/lang/String;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 316
    :cond_1
    const-string v0, "resources"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/o;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 321
    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 431
    move v1, v0

    .line 434
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 435
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2

    .line 437
    const-string v2, "}"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 438
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 441
    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 442
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 443
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v0, v2, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 453
    goto :goto_0

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_3
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/auth/api/p;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 355
    const/4 v4, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/auth/api/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/l;

    .line 357
    iget-object v1, v0, Lcom/google/android/gms/auth/api/l;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/auth/api/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move v1, v2

    move v3, v2

    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_3

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    move-object v2, v0

    .line 363
    :goto_2
    if-nez v2, :cond_8

    .line 364
    new-instance v0, Lcom/google/android/gms/auth/api/q;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/o;->b:Lcom/google/android/gms/auth/api/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No method found with path \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_5

    const-string v8, "}"

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v8, "/"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v10, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    if-ne v1, v10, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 368
    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 374
    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 377
    :cond_a
    iget-object v0, v2, Lcom/google/android/gms/auth/api/l;->b:Ljava/lang/String;

    invoke-static {v0, p1, v3}, Lcom/google/android/gms/auth/api/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    invoke-static {v2, v3}, Lcom/google/android/gms/auth/api/l;->a(Lcom/google/android/gms/auth/api/l;Ljava/util/Map;)Lcom/google/android/gms/auth/api/p;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v2, v4

    goto/16 :goto_2
.end method
