.class Lcom/google/common/collect/m;
.super Lcom/google/common/collect/jd;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final synthetic b:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/google/common/collect/m;->b:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/jd;-><init>()V

    .line 819
    iput-object p2, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    .line 820
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/google/common/collect/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ej;->e(Ljava/util/Iterator;)V

    .line 869
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 878
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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
    .line 883
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 830
    new-instance v1, Lcom/google/common/collect/n;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/n;-><init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 856
    .line 857
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 858
    if-eqz v0, :cond_1

    .line 859
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 860
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 861
    iget-object v0, p0, Lcom/google/common/collect/m;->b:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    move v0, v2

    .line 863
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
