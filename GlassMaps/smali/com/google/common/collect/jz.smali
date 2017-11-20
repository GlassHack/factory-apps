.class final Lcom/google/common/collect/jz;
.super Lcom/google/common/collect/af;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/jt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jt;)V
    .locals 0

    .prologue
    .line 1826
    invoke-direct {p0}, Lcom/google/common/collect/af;-><init>()V

    .line 1827
    iput-object p1, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    .line 1828
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->clear()V

    .line 1943
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1912
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0
.end method

.method final createEntrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1855
    new-instance v0, Lcom/google/common/collect/kc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kc;-><init>(Lcom/google/common/collect/jz;)V

    return-object v0
.end method

.method final distinctElements()I
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1831
    new-instance v0, Lcom/google/common/collect/ka;

    iget-object v1, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v1}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ka;-><init>(Lcom/google/common/collect/jz;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1917
    if-ltz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 1918
    if-nez p2, :cond_2

    .line 1919
    invoke-virtual {p0, p1}, Lcom/google/common/collect/jz;->count(Ljava/lang/Object;)I

    move-result v1

    .line 1938
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 1917
    goto :goto_0

    .line 1922
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/jz;->a:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1924
    if-eqz v0, :cond_0

    .line 1928
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1929
    if-lt p2, v2, :cond_4

    .line 1930
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_3
    move v1, v2

    .line 1938
    goto :goto_1

    .line 1932
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1933
    :goto_2
    if-ge v1, p2, :cond_3

    .line 1934
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1935
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1933
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
