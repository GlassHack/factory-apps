.class public final Lcom/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Graphs$NodeVisitState;,
        Lcom/google/common/graph/Graphs$TransposedNetwork;,
        Lcom/google/common/graph/Graphs$TransposedValueGraph;,
        Lcom/google/common/graph/Graphs$TransposedGraph;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "nextNode"    # Ljava/lang/Object;
    .param p2, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkNonNegative(I)I
    .locals 2
    .param p0, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 617
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 618
    return p0

    .line 617
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkNonNegative(J)J
    .locals 2
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 629
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 630
    return-wide p0

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkPositive(I)I
    .locals 2
    .param p0, "value"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 623
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 624
    return p0

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkPositive(J)J
    .locals 2
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 635
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 636
    return-wide p0

    .line 635
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/MutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/MutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 575
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/GraphBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 576
    .local v0, "copy":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 577
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/EndpointPair;

    .line 580
    .local v1, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 582
    .end local v1    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/Network;)Lcom/google/common/graph/MutableNetwork;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/MutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 600
    .line 601
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v4

    .line 602
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v4

    .line 603
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/graph/NetworkBuilder;->expectedEdgeCount(I)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v4

    .line 604
    invoke-virtual {v4}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 605
    .local v0, "copy":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 606
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v3}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 609
    .local v1, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v1}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 610
    .local v2, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6, v1}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    .end local v1    # "edge":Ljava/lang/Object;, "TE;"
    .end local v2    # "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/MutableValueGraph;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/MutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 587
    .line 588
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 589
    .local v0, "copy":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 590
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/EndpointPair;

    .line 593
    .local v1, "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    .end local v1    # "edge":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :cond_1
    return-object v0
.end method

.method public static equivalent(Lcom/google/common/graph/Graph;Lcom/google/common/graph/Graph;)Z
    .locals 1
    .param p0    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Graph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<*>;",
            "Lcom/google/common/graph/Graph",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    .local p0, "graphA":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    .local p1, "graphB":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equivalent(Lcom/google/common/graph/Network;Lcom/google/common/graph/Network;)Z
    .locals 1
    .param p0    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/Network;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<**>;",
            "Lcom/google/common/graph/Network",
            "<**>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    .local p0, "networkA":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    .local p1, "networkB":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equivalent(Lcom/google/common/graph/ValueGraph;Lcom/google/common/graph/ValueGraph;)Z
    .locals 1
    .param p0    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/common/graph/ValueGraph;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<**>;",
            "Lcom/google/common/graph/ValueGraph",
            "<**>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    .local p0, "graphA":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    .local p1, "graphB":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasCycle(Lcom/google/common/graph/Graph;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .line 60
    .local v1, "numEdges":I
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 63
    :cond_1
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    move v3, v4

    .line 64
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 69
    .local v2, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "node":Ljava/lang/Object;, "TN;"
    const/4 v6, 0x0

    invoke-static {p0, v2, v0, v6}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 71
    goto :goto_0
.end method

.method public static hasCycle(Lcom/google/common/graph/Network;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Network",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p0}, Lcom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/google/common/graph/Network;->asGraph()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->hasCycle(Lcom/google/common/graph/Graph;)Z

    move-result v0

    goto :goto_0
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Graph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableGraph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v1

    .line 511
    .local v1, "subgraph":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v0}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {v1}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 515
    .restart local v0    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 516
    .local v2, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v1}, Lcom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 517
    invoke-interface {v1, v0, v2}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    .end local v2    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_3
    return-object v1
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/Network;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableNetwork;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableNetwork",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/NetworkBuilder;->from(Lcom/google/common/graph/Network;)Lcom/google/common/graph/NetworkBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/graph/NetworkBuilder;->build()Lcom/google/common/graph/MutableNetwork;

    move-result-object v2

    .line 559
    .local v2, "subgraph":Lcom/google/common/graph/MutableNetwork;, "Lcom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v2, v1}, Lcom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {v2}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 563
    .restart local v1    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v1}, Lcom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 565
    .local v3, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v2}, Lcom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 566
    invoke-interface {v2, v1, v3, v0}, Lcom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 570
    .end local v0    # "edge":Ljava/lang/Object;, "TE;"
    .end local v1    # "node":Ljava/lang/Object;, "TN;"
    .end local v3    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_3
    return-object v2
.end method

.method public static inducedSubgraph(Lcom/google/common/graph/ValueGraph;Ljava/lang/Iterable;)Lcom/google/common/graph/MutableValueGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;",
            "Ljava/lang/Iterable",
            "<+TN;>;)",
            "Lcom/google/common/graph/MutableValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/ValueGraphBuilder;->from(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraphBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/graph/ValueGraphBuilder;->build()Lcom/google/common/graph/MutableValueGraph;

    move-result-object v1

    .line 535
    .local v1, "subgraph":Lcom/google/common/graph/MutableValueGraph;, "Lcom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 536
    .local v0, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v0}, Lcom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    invoke-interface {v1}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 539
    .restart local v0    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 540
    .local v2, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v1}, Lcom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    invoke-interface {p0, v0, v2}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v0, v2, v5}, Lcom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 545
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    .end local v2    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_3
    return-object v1
.end method

.method public static reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Node %s is not an element of this graph."

    invoke-static {v4, v5, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 194
    .local v3, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 195
    .local v1, "queuedNodes":Ljava/util/Queue;, "Ljava/util/Queue<TN;>;"
    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "currentNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v0}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v0    # "currentNode":Ljava/lang/Object;, "TN;"
    .end local v2    # "successor":Ljava/lang/Object;, "TN;"
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method private static subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/common/graph/Graphs$NodeVisitState;",
            ">;TN;TN;)Z"
        }
    .end annotation

    .prologue
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    .local p1, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/google/common/graph/Graphs$NodeVisitState;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    .local p3, "previousNode":Ljava/lang/Object;, "TN;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/Graphs$NodeVisitState;

    .line 103
    .local v1, "state":Lcom/google/common/graph/Graphs$NodeVisitState;
    sget-object v4, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    if-ne v1, v4, :cond_0

    .line 118
    :goto_0
    return v2

    .line 106
    :cond_0
    sget-object v4, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    if-ne v1, v4, :cond_1

    move v2, v3

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    sget-object v4, Lcom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p0, p2}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "nextNode":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v0, p3}, Lcom/google/common/graph/Graphs;->canTraverseWithoutReusingEdge(Lcom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    invoke-static {p0, p1, v0, p2}, Lcom/google/common/graph/Graphs;->subgraphHasCycle(Lcom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 114
    goto :goto_0

    .line 117
    .end local v0    # "nextNode":Ljava/lang/Object;, "TN;"
    :cond_3
    sget-object v3, Lcom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lcom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static transitiveClosure(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/GraphBuilder;->from(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/GraphBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lcom/google/common/graph/GraphBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object v7

    .line 152
    .local v7, "transitiveClosure":Lcom/google/common/graph/MutableGraph;, "Lcom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v0}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 156
    .local v5, "reachableNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v7, v0, v5}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    .end local v5    # "reachableNode":Ljava/lang/Object;, "TN;"
    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v8, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .restart local v0    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 165
    invoke-static {p0, v0}, Lcom/google/common/graph/Graphs;->reachableNodes(Lcom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 166
    .local v6, "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {v8, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    const/4 v3, 0x1

    .line 168
    .local v3, "pairwiseMatch":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "nodeU":Ljava/lang/Object;, "TN;"
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pairwiseMatch":I
    .local v4, "pairwiseMatch":I
    invoke-static {v6, v3}, Lcom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 170
    .local v2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-interface {v7, v1, v2}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "nodeV":Ljava/lang/Object;, "TN;"
    :cond_3
    move v3, v4

    .line 172
    .end local v4    # "pairwiseMatch":I
    .restart local v3    # "pairwiseMatch":I
    goto :goto_1

    .line 177
    .end local v0    # "node":Ljava/lang/Object;, "TN;"
    .end local v1    # "nodeU":Ljava/lang/Object;, "TN;"
    .end local v3    # "pairwiseMatch":I
    .end local v6    # "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v8    # "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_4
    return-object v7
.end method

.method public static transpose(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :goto_0
    return-object p0

    .line 253
    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;

    if-eqz v0, :cond_1

    .line 254
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedGraph;

    .end local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;

    move-result-object p0

    goto :goto_0

    .line 257
    .restart local p0    # "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedGraph;-><init>(Lcom/google/common/graph/Graph;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static transpose(Lcom/google/common/graph/Network;)Lcom/google/common/graph/Network;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    .end local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :goto_0
    return-object p0

    .line 399
    .restart local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    if-eqz v0, :cond_1

    .line 400
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    .end local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;->access$200(Lcom/google/common/graph/Graphs$TransposedNetwork;)Lcom/google/common/graph/Network;

    move-result-object p0

    goto :goto_0

    .line 403
    .restart local p0    # "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedNetwork;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedNetwork;-><init>(Lcom/google/common/graph/Network;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static transpose(Lcom/google/common/graph/ValueGraph;)Lcom/google/common/graph/ValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    .end local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :goto_0
    return-object p0

    .line 321
    .restart local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    if-eqz v0, :cond_1

    .line 322
    check-cast p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    .end local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;->access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;

    move-result-object p0

    goto :goto_0

    .line 325
    .restart local p0    # "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    :cond_1
    new-instance v0, Lcom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Graphs$TransposedValueGraph;-><init>(Lcom/google/common/graph/ValueGraph;)V

    move-object p0, v0

    goto :goto_0
.end method
