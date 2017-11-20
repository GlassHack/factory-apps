.class public final Lcom/google/c/c/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Set;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1252
    .line 1253
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 1255
    goto :goto_0

    :cond_0
    move v2, v1

    .line 1254
    goto :goto_1

    .line 1256
    :cond_1
    return v0
.end method

.method public static a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/c/c/dp;
    .locals 2

    .prologue
    .line 680
    const-string v0, "set1"

    invoke-static {p0, v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v0, "set2"

    invoke-static {p1, v0}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Lcom/google/c/a/aj;->a(Ljava/util/Collection;)Lcom/google/c/a/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/aj;->a(Lcom/google/c/a/ai;)Lcom/google/c/a/ai;

    move-result-object v0

    .line 684
    new-instance v1, Lcom/google/c/c/do;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/c/c/do;-><init>(Ljava/util/Set;Lcom/google/c/a/ai;Ljava/util/Set;)V

    return-object v1
.end method

.method public static a(I)Ljava/util/HashSet;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/c/c/cd;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1263
    if-ne p0, p1, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return v0

    .line 1266
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_3

    .line 1267
    check-cast p1, Ljava/util/Set;

    .line 1270
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 1274
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1277
    goto :goto_0
.end method
