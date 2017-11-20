.class public abstract Lcom/google/common/collect/cn;
.super Lcom/google/common/collect/cf;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kp;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/common/collect/cf;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/kp;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

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
    .line 82
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/kp;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kp;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/cn;->add(Ljava/lang/Object;I)I

    .line 148
    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 162
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->e(Ljava/util/Iterator;)V

    .line 120
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/collect/cn;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardCount(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 132
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kp;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 261
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/kp;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/cn;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 188
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 201
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 214
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kp;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 226
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kp;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardSize()I
    .locals 1

    .prologue
    .line 272
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->c(Lcom/google/common/collect/kp;)I

    move-result v0

    return v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/cn;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
