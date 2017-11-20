.class final Lcom/google/common/collect/lx;
.super Lcom/google/common/collect/cf;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;

.field private final transient b:Lcom/google/common/collect/ba;


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/google/common/collect/lx;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/google/common/collect/lx;->b:Lcom/google/common/collect/ba;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1112
    instance-of v0, p1, Lcom/google/common/collect/lx;

    if-eqz v0, :cond_0

    .line 1113
    check-cast p1, Lcom/google/common/collect/lx;

    .line 1114
    iget-object v0, p0, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/google/common/collect/lx;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1126
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1127
    mul-int/lit8 v1, v1, 0x1f

    .line 1128
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    :cond_0
    const/4 v0, 0x1

    .line 1132
    iget-object v2, p0, Lcom/google/common/collect/lx;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1133
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/common/collect/lx;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 1135
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 1136
    goto :goto_1

    .line 1137
    :cond_1
    add-int v0, v2, v1

    .line 1138
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
