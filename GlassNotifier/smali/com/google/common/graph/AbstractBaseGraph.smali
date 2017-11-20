.class abstract Lcom/google/common/graph/AbstractBaseGraph;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lcom/google/common/graph/BaseGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/BaseGraph",
        "<TN;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public degree(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v2

    .line 93
    :goto_0
    return v2

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "neighbors":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->allowsSelfLoops()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 93
    .local v1, "selfLoopCount":I
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v2

    goto :goto_0

    .line 92
    .end local v1    # "selfLoopCount":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected edgeCount()J
    .locals 10

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    const/4 v4, 0x1

    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .local v0, "degreeSum":J
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, v2}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 46
    goto :goto_0

    .line 48
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 49
    ushr-long v4, v0, v4

    return-wide v4

    .line 48
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    new-instance v0, Lcom/google/common/graph/AbstractBaseGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractBaseGraph$1;-><init>(Lcom/google/common/graph/AbstractBaseGraph;)V

    return-object v0
.end method

.method public hasEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph;, "Lcom/google/common/graph/AbstractBaseGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
