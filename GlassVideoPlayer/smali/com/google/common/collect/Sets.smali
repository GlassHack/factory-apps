.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Set;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1283
    .line 1284
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1285
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 1287
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 1289
    goto :goto_0

    :cond_0
    move v2, v1

    .line 1285
    goto :goto_1

    .line 1290
    :cond_1
    return v0
.end method

.method public static a()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashSet;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/Set;Lcom/google/common/base/ai;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 831
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 832
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/SortedSet;Lcom/google/common/base/ai;)Ljava/util/SortedSet;

    move-result-object v0

    .line 842
    :goto_0
    return-object v0

    .line 834
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/ly;

    if-eqz v0, :cond_1

    .line 837
    check-cast p0, Lcom/google/common/collect/ly;

    .line 838
    iget-object v0, p0, Lcom/google/common/collect/ly;->b:Lcom/google/common/base/ai;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v2

    .line 839
    new-instance v1, Lcom/google/common/collect/ly;

    iget-object v0, p0, Lcom/google/common/collect/ly;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ly;-><init>(Ljava/util/Set;Lcom/google/common/base/ai;)V

    move-object v0, v1

    goto :goto_0

    .line 842
    :cond_1
    new-instance v2, Lcom/google/common/collect/ly;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/ai;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/ly;-><init>(Ljava/util/Set;Lcom/google/common/base/ai;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/util/SortedSet;Lcom/google/common/base/ai;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 891
    instance-of v0, p0, Lcom/google/common/collect/ly;

    if-eqz v0, :cond_0

    .line 894
    check-cast p0, Lcom/google/common/collect/ly;

    .line 895
    iget-object v0, p0, Lcom/google/common/collect/ly;->b:Lcom/google/common/base/ai;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ai;Lcom/google/common/base/ai;)Lcom/google/common/base/ai;

    move-result-object v2

    .line 896
    new-instance v1, Lcom/google/common/collect/lz;

    iget-object v0, p0, Lcom/google/common/collect/ly;->a:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/lz;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/ai;)V

    move-object v0, v1

    .line 899
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/common/collect/lz;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/ai;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/lz;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/ai;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 1311
    :cond_0
    :goto_0
    return v1

    .line 1300
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 1301
    check-cast p1, Ljava/util/Set;

    .line 1304
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1308
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1306
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 1326
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    .line 1328
    check-cast p1, Lcom/google/common/collect/kp;

    invoke-interface {p1}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1337
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1338
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1339
    const/4 v0, 0x0

    .line 1340
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1342
    const/4 v0, 0x1

    .line 1343
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1348
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method private static a(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2

    .prologue
    .line 1318
    const/4 v0, 0x0

    .line 1319
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1322
    :cond_0
    return v0
.end method

.method public static b()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
