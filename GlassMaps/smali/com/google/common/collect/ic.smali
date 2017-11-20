.class final Lcom/google/common/collect/ic;
.super Lcom/google/common/collect/cq;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/common/collect/ic;->a:Ljava/util/SortedSet;

    invoke-direct {p0}, Lcom/google/common/collect/cq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/common/collect/ic;->a:Ljava/util/SortedSet;

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 860
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 865
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/google/common/collect/ic;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/google/common/collect/ic;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/google/common/collect/ic;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 870
    invoke-super {p0, p1}, Lcom/google/common/collect/cq;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 875
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/cq;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 880
    invoke-super {p0, p1}, Lcom/google/common/collect/cq;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
