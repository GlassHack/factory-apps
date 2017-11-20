.class final Lcom/google/common/collect/w;
.super Lcom/google/common/collect/r;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/r;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 629
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/r;)V

    .line 630
    return-void
.end method

.method private g()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/common/collect/w;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/google/common/collect/w;->a()V

    .line 642
    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/google/common/collect/w;->a()V

    .line 652
    new-instance v0, Lcom/google/common/collect/w;

    iget-object v1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/w;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/r;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object p0

    goto :goto_0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/common/collect/w;->a()V

    .line 647
    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/google/common/collect/w;->a()V

    .line 658
    new-instance v0, Lcom/google/common/collect/w;

    iget-object v1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/w;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/r;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object p0

    goto :goto_0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/google/common/collect/w;->a()V

    .line 664
    new-instance v0, Lcom/google/common/collect/w;

    iget-object v1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/w;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/collect/w;->g()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/w;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/r;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/w;->f()Lcom/google/common/collect/r;

    move-result-object p0

    goto :goto_0
.end method
