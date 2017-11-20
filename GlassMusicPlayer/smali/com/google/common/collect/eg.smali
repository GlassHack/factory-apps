.class public final Lcom/google/common/collect/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 685
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v0, Lcom/google/common/collect/ei;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ei;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/w;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 766
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->c(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/aj;II)V
    .locals 2

    .prologue
    .line 216
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p3, :cond_1

    .line 217
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_1
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_2

    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 225
    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Z
    .locals 1

    .prologue
    .line 171
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aj;

    invoke-static {p0, v0}, Lcom/google/common/collect/eg;->a(Ljava/util/List;Lcom/google/common/base/aj;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Lcom/google/common/base/aj;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 319
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 320
    invoke-static {p1}, Lcom/google/common/collect/bb;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 321
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ej;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/aj;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 181
    move v0, v1

    move v2, v1

    .line 184
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 185
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 186
    invoke-interface {p1, v4}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    if-le v2, v0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    invoke-static {p0, p1, v0, v2}, Lcom/google/common/collect/eg;->a(Ljava/util/List;Lcom/google/common/base/aj;II)V

    .line 201
    :goto_1
    return v3

    .line 200
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 201
    if-eq v2, v0, :cond_3

    move v1, v3

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 567
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Lcom/google/common/collect/eh;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/eh;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->d(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Iterable;Lcom/google/common/base/aj;)Z
    .locals 1

    .prologue
    .line 604
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->c(Ljava/util/Iterator;Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method static c(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-static {p0}, Lcom/google/common/collect/eg;->e(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 1006
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1007
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 1009
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 308
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method
