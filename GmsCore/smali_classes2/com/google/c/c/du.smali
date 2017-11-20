.class final Lcom/google/c/c/du;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/c/c/eb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/c/c/eb;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    return-object v0
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 298
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/c/c/eg;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/eg;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/c/c/ec;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/ec;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/google/c/c/eh;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/eh;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/google/c/c/ej;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/ej;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/c/c/du;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/c/c/du;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/c/c/du;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method
