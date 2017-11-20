.class Lcom/google/c/c/ab;
.super Lcom/google/c/c/z;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    .line 712
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/c/z;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/z;)V

    .line 713
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 751
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 752
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 753
    iget-object v0, p0, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    invoke-static {v0}, Lcom/google/c/c/m;->c(Lcom/google/c/c/m;)I

    .line 754
    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/google/c/c/ab;->c()V

    .line 757
    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    .prologue
    .line 721
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x0

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/ab;->size()I

    move-result v1

    .line 725
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 726
    if-eqz v0, :cond_0

    .line 727
    iget-object v2, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 728
    iget-object v3, p0, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;I)I

    .line 729
    if-nez v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/google/c/c/ab;->c()V

    goto :goto_0
.end method

.method final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 739
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 771
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 777
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 783
    new-instance v0, Lcom/google/c/c/ac;

    invoke-direct {v0, p0}, Lcom/google/c/c/ac;-><init>(Lcom/google/c/c/ab;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 789
    new-instance v0, Lcom/google/c/c/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/c/c/ac;-><init>(Lcom/google/c/c/ab;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 762
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    invoke-static {v1}, Lcom/google/c/c/m;->b(Lcom/google/c/c/m;)I

    .line 764
    invoke-virtual {p0}, Lcom/google/c/c/ab;->b()V

    .line 765
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 745
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/google/c/c/ab;->a()V

    .line 795
    iget-object v1, p0, Lcom/google/c/c/ab;->g:Lcom/google/c/c/m;

    iget-object v2, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v1, v2, v0, p0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/List;Lcom/google/c/c/z;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0
.end method
