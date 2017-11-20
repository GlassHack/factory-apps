.class public Lcom/google/common/graph/ImmutableGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "ImmutableGraph.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final backingGraph:Lcom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/BaseGraph",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/BaseGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    .local p1, "backingGraph":Lcom/google/common/graph/BaseGraph;, "Lcom/google/common/graph/BaseGraph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/common/graph/ImmutableGraph;->backingGraph:Lcom/google/common/graph/BaseGraph;

    .line 52
    return-void
.end method

.method private static connectionsOf(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;TN;)",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    sget-object v1, Lcom/google/common/graph/GraphConstants$Presence;->EDGE_EXISTS:Lcom/google/common/graph/GraphConstants$Presence;

    invoke-static {v1}, Lcom/google/common/base/Functions;->constant(Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    .line 86
    .local v0, "edgeValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/lang/Object;Lcom/google/common/graph/GraphConstants$Presence;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lcom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 90
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/common/graph/Graph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    goto :goto_0
.end method

.method public static copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ImmutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    instance-of v0, p0, Lcom/google/common/graph/ImmutableGraph;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Lcom/google/common/graph/ImmutableGraph;

    .line 56
    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_0
    new-instance v0, Lcom/google/common/graph/ImmutableGraph;

    new-instance v1, Lcom/google/common/graph/ConfigurableValueGraph;

    .line 59
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/common/graph/ImmutableGraph;->getNodeConnections(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/common/graph/ConfigurableValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, Lcom/google/common/graph/ImmutableGraph;-><init>(Lcom/google/common/graph/BaseGraph;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static copyOf(Lcom/google/common/graph/ImmutableGraph;)Lcom/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph",
            "<TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    .local p0, "graph":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/ImmutableGraph;

    return-object v0
.end method

.method private static getNodeConnections(Lcom/google/common/graph/Graph;)Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TN;",
            "Lcom/google/common/graph/GraphConnections",
            "<TN;",
            "Lcom/google/common/graph/GraphConstants$Presence;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 78
    .local v1, "nodeConnections":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TN;Lcom/google/common/graph/GraphConnections<TN;Lcom/google/common/graph/GraphConstants$Presence;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v0}, Lcom/google/common/graph/ImmutableGraph;->connectionsOf(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 81
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected delegate()Lcom/google/common/graph/BaseGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/BaseGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph;->backingGraph:Lcom/google/common/graph/BaseGraph;

    return-object v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0}, Lcom/google/common/graph/ForwardingGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ImmutableGraph;, "Lcom/google/common/graph/ImmutableGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/ForwardingGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
