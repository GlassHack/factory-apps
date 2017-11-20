.class public abstract Lcom/google/common/collect/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/nw;


# virtual methods
.method public abstract a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
.end method

.method public abstract a()Lcom/google/common/collect/ImmutableSet;
.end method

.method public abstract b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
.end method

.method public abstract b()Lcom/google/common/collect/ImmutableSet;
.end method

.method public abstract c()Lcom/google/common/collect/ImmutableMap;
.end method

.method public synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ef;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/google/common/collect/ImmutableSet;
.end method

.method public abstract e()Lcom/google/common/collect/ImmutableMap;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    if-ne p1, p0, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/nw;

    if-eqz v0, :cond_1

    .line 321
    check-cast p1, Lcom/google/common/collect/nw;

    .line 322
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/nw;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Lcom/google/common/collect/nw;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ef;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/ef;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
