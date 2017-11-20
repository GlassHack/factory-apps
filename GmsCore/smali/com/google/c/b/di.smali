.class final Lcom/google/c/b/di;
.super Lcom/google/c/b/ck;


# instance fields
.field private synthetic b:Lcom/google/c/b/ch;


# direct methods
.method constructor <init>(Lcom/google/c/b/ch;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/di;->b:Lcom/google/c/b/ch;

    invoke-direct {p0, p2}, Lcom/google/c/b/ck;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/c/b/di;->b:Lcom/google/c/b/ch;

    invoke-virtual {v2, v1}, Lcom/google/c/b/ch;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/c/b/di;->b:Lcom/google/c/b/ch;

    iget-object v2, v2, Lcom/google/c/b/ch;->e:Lcom/google/c/a/bw;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/c/a/bw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/c/b/dh;

    iget-object v1, p0, Lcom/google/c/b/di;->b:Lcom/google/c/b/ch;

    invoke-direct {v0, v1}, Lcom/google/c/b/dh;-><init>(Lcom/google/c/b/ch;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/c/b/di;->b:Lcom/google/c/b/ch;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/c/b/ch;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
