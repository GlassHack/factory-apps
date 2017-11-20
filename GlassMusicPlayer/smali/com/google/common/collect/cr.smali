.class public abstract Lcom/google/common/collect/cr;
.super Lcom/google/common/collect/co;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/nw;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/common/collect/co;-><init>()V

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->clear()V

    .line 48
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/nw;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/nw;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 120
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/nw;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/nw;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/nw;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->putAll(Lcom/google/common/collect/nw;)V

    .line 92
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/nw;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/nw;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->delegate()Lcom/google/common/collect/nw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/nw;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
