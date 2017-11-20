.class Lcom/google/c/c/hl;
.super Ljava/util/AbstractMap;


# instance fields
.field final transient a:Ljava/util/Map;

.field final synthetic b:Lcom/google/c/c/hk;

.field private transient c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/c/c/hk;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v1, v0}, Lcom/google/c/c/hk;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/c/c/gc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-static {v1}, Lcom/google/c/c/hk;->a(Lcom/google/c/c/hk;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-virtual {v0}, Lcom/google/c/c/hk;->g()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/c/c/hn;

    invoke-direct {v0, p0}, Lcom/google/c/c/hn;-><init>(Lcom/google/c/c/hl;)V

    invoke-static {v0}, Lcom/google/c/c/fp;->d(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/c/c/gc;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/hm;

    invoke-direct {v0, p0}, Lcom/google/c/c/hm;-><init>(Lcom/google/c/c/hl;)V

    iput-object v0, p0, Lcom/google/c/c/hl;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/c/c/gc;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-virtual {v1, p1, v0}, Lcom/google/c/c/hk;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-virtual {v0}, Lcom/google/c/c/hk;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-virtual {v1}, Lcom/google/c/c/hk;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/c/c/hk;->b(Lcom/google/c/c/hk;I)I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
