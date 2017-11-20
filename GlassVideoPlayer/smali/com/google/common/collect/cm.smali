.class public abstract Lcom/google/common/collect/cm;
.super Lcom/google/common/collect/co;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jt;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/co;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 52
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/jt;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->putAll(Lcom/google/common/collect/jt;)Z

    move-result v0

    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/collect/cm;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
