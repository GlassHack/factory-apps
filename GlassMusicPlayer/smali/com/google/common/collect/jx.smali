.class abstract Lcom/google/common/collect/jx;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1977
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/jt;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 2005
    invoke-virtual {p0}, Lcom/google/common/collect/jx;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 2006
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1987
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1988
    check-cast p1, Ljava/util/Map$Entry;

    .line 1989
    invoke-virtual {p0}, Lcom/google/common/collect/jx;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/jt;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1991
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1996
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1997
    check-cast p1, Ljava/util/Map$Entry;

    .line 1998
    invoke-virtual {p0}, Lcom/google/common/collect/jx;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/jt;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/google/common/collect/jx;->a()Lcom/google/common/collect/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jt;->size()I

    move-result v0

    return v0
.end method
