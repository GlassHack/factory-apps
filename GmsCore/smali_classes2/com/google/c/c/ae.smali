.class final Lcom/google/c/c/ae;
.super Lcom/google/c/c/z;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/z;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/c/c/ae;->a:Lcom/google/c/c/m;

    .line 659
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/c/c/z;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/z;)V

    .line 660
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/google/c/c/ae;->a()V

    .line 674
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/c/c/ae;->a()V

    .line 686
    new-instance v1, Lcom/google/c/c/ae;

    iget-object v2, p0, Lcom/google/c/c/ae;->a:Lcom/google/c/c/m;

    iget-object v3, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/ae;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/z;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/google/c/c/ae;->a()V

    .line 680
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/google/c/c/ae;->a()V

    .line 694
    new-instance v1, Lcom/google/c/c/ae;

    iget-object v2, p0, Lcom/google/c/c/ae;->a:Lcom/google/c/c/m;

    iget-object v3, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/ae;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/z;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/google/c/c/ae;->a()V

    .line 702
    new-instance v1, Lcom/google/c/c/ae;

    iget-object v2, p0, Lcom/google/c/c/ae;->a:Lcom/google/c/c/m;

    iget-object v3, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v4, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/google/c/c/ae;-><init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/c/c/z;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0
.end method
