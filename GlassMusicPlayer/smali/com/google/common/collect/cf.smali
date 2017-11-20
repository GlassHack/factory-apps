.class public abstract Lcom/google/common/collect/cf;
.super Lcom/google/common/collect/co;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/common/collect/co;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 99
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Collection;
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ej;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->e(Ljava/util/Iterator;)V

    .line 200
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardContainsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 128
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/common/collect/cf;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected standardIsEmpty()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ej;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardToArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/common/collect/cf;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-static {p0, p1}, Lcom/google/common/collect/kx;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {p0}, Lcom/google/common/collect/bb;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
