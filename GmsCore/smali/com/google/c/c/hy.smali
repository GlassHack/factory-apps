.class final Lcom/google/c/c/hy;
.super Lcom/google/c/c/ht;

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private synthetic e:Lcom/google/c/c/hk;


# direct methods
.method constructor <init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/ht;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hy;->e:Lcom/google/c/c/hk;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/c/ht;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/ht;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hy;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/c/c/hy;->a()V

    new-instance v1, Lcom/google/c/c/hy;

    iget-object v2, p0, Lcom/google/c/c/hy;->e:Lcom/google/c/c/hk;

    iget-object v3, p0, Lcom/google/c/c/ht;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/hy;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/ht;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    goto :goto_0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hy;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/c/c/hy;->a()V

    new-instance v1, Lcom/google/c/c/hy;

    iget-object v2, p0, Lcom/google/c/c/hy;->e:Lcom/google/c/c/hk;

    iget-object v3, p0, Lcom/google/c/c/ht;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/hy;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/ht;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    goto :goto_0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    invoke-virtual {p0}, Lcom/google/c/c/hy;->a()V

    new-instance v1, Lcom/google/c/c/hy;

    iget-object v2, p0, Lcom/google/c/c/hy;->e:Lcom/google/c/c/hk;

    iget-object v3, p0, Lcom/google/c/c/ht;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/hy;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/ht;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    goto :goto_0
.end method
