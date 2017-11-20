.class final Lcom/google/c/b/ae;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/c/b/n;


# direct methods
.method constructor <init>(Lcom/google/c/b/n;)V
    .locals 0

    .prologue
    .line 4525
    iput-object p1, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->clear()V

    .line 4570
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4534
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4544
    :cond_0
    :goto_0
    return v0

    .line 4537
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4538
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4539
    if-eqz v1, :cond_0

    .line 4542
    iget-object v2, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-virtual {v2, v1}, Lcom/google/c/b/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4544
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    iget-object v2, v2, Lcom/google/c/b/n;->h:Lcom/google/c/a/u;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/c/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 4564
    iget-object v0, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 4529
    new-instance v0, Lcom/google/c/b/ad;

    iget-object v1, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-direct {v0, v1}, Lcom/google/c/b/ad;-><init>(Lcom/google/c/b/n;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4549
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4554
    :cond_0
    :goto_0
    return v0

    .line 4552
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4553
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4554
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/c/b/n;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 4559
    iget-object v0, p0, Lcom/google/c/b/ae;->a:Lcom/google/c/b/n;

    invoke-virtual {v0}, Lcom/google/c/b/n;->size()I

    move-result v0

    return v0
.end method
