.class Lcom/google/c/c/hv;
.super Lcom/google/c/c/ht;

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic e:Lcom/google/c/c/hk;


# direct methods
.method constructor <init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/c/ht;-><init>(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/ht;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    invoke-static {v0}, Lcom/google/c/c/hk;->c(Lcom/google/c/c/hk;)I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/hv;->c()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/hv;->size()I

    move-result v1

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/c/c/hk;->a(Lcom/google/c/c/hk;I)I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/c/hv;->c()V

    goto :goto_0
.end method

.method final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    new-instance v0, Lcom/google/c/c/hw;

    invoke-direct {v0, p0}, Lcom/google/c/c/hw;-><init>(Lcom/google/c/c/hv;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    new-instance v0, Lcom/google/c/c/hw;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/hw;-><init>(Lcom/google/c/c/hv;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    invoke-static {v1}, Lcom/google/c/c/hk;->b(Lcom/google/c/c/hk;)I

    invoke-virtual {p0}, Lcom/google/c/c/hv;->b()V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/google/c/c/hv;->a()V

    iget-object v1, p0, Lcom/google/c/c/hv;->e:Lcom/google/c/c/hk;

    iget-object v2, p0, Lcom/google/c/c/ht;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/ht;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lcom/google/c/c/hk;->a(Lcom/google/c/c/hk;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/ht;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/ht;->c:Lcom/google/c/c/ht;

    goto :goto_0
.end method
