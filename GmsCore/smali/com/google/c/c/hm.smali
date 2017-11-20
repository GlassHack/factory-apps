.class final Lcom/google/c/c/hm;
.super Lcom/google/c/c/gg;


# instance fields
.field private synthetic a:Lcom/google/c/c/hl;


# direct methods
.method constructor <init>(Lcom/google/c/c/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hm;->a:Lcom/google/c/c/hl;

    invoke-direct {p0}, Lcom/google/c/c/gg;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hm;->a:Lcom/google/c/c/hl;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hm;->a:Lcom/google/c/c/hl;

    iget-object v0, v0, Lcom/google/c/c/hl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/if;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/c/c/hn;

    iget-object v1, p0, Lcom/google/c/c/hm;->a:Lcom/google/c/c/hl;

    invoke-direct {v0, v1}, Lcom/google/c/c/hn;-><init>(Lcom/google/c/c/hl;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/c/c/hm;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/c/c/hm;->a:Lcom/google/c/c/hl;

    iget-object v0, v0, Lcom/google/c/c/hl;->b:Lcom/google/c/c/hk;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/c/hk;->a(Lcom/google/c/c/hk;Ljava/lang/Object;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
