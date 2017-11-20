.class public Lcom/google/android/gms/analytics/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/analytics/a/b;

.field b:Ljava/util/Map;

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field private e:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/az;->e:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/az;->b:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/az;->c:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/az;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lcom/google/android/gms/analytics/az;
    .locals 1

    .prologue
    .line 168
    const-string v0, "&cd"

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 169
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->a:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :goto_0
    return-object p0

    .line 219
    :cond_0
    const-string v0, " HitBuilder.set() called with a null paramName."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 250
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->e:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->a:Lcom/google/android/gms/analytics/a/b;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->a:Lcom/google/android/gms/analytics/a/b;

    new-instance v1, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/google/android/gms/analytics/a/b;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/a/c;

    .line 257
    const-string v4, "&promo"

    invoke-static {v4, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 259
    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/a/a;

    .line 263
    const-string v4, "&pr"

    invoke-static {v4, v1}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/analytics/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 265
    goto :goto_1

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/az;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 270
    const-string v4, "&il"

    invoke-static {v4, v3}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/a/a;

    .line 273
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "pi"

    invoke-static {v10, v4}, Lcom/google/android/gms/analytics/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/android/gms/analytics/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 274
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 275
    goto :goto_3

    .line 277
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "nm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 281
    goto :goto_2

    .line 282
    :cond_5
    return-object v5
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/analytics/az;
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->d:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/analytics/bs;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-object p0

    .line 138
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/analytics/bs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 144
    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 145
    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 146
    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 147
    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 148
    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 149
    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 150
    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 151
    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    .line 152
    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/az;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/az;

    goto :goto_0
.end method
