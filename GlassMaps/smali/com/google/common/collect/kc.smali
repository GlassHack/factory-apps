.class final Lcom/google/common/collect/kc;
.super Lcom/google/common/collect/kv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/jz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jz;)V
    .locals 0

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    invoke-direct {p0}, Lcom/google/common/collect/kv;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1880
    instance-of v0, p1, Lcom/google/common/collect/kq;

    if-eqz v0, :cond_1

    .line 1881
    check-cast p1, Lcom/google/common/collect/kq;

    .line 1882
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    iget-object v0, v0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1883
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1885
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1883
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1885
    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    iget-object v0, v0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    invoke-virtual {v0}, Lcom/google/common/collect/jz;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1890
    instance-of v0, p1, Lcom/google/common/collect/kq;

    if-eqz v0, :cond_0

    .line 1891
    check-cast p1, Lcom/google/common/collect/kq;

    .line 1892
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    iget-object v0, v0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1893
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/kq;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1894
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1895
    const/4 v0, 0x1

    .line 1898
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/common/collect/kc;->a:Lcom/google/common/collect/jz;

    invoke-virtual {v0}, Lcom/google/common/collect/jz;->distinctElements()I

    move-result v0

    return v0
.end method
