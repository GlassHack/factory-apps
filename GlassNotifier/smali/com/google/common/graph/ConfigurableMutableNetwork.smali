.class final Lcom/google/common/graph/ConfigurableMutableNetwork;
.super Lcom/google/common/graph/ConfigurableNetwork;
.source "ConfigurableMutableNetwork.java"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ConfigurableNetwork",
        "<TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/graph/NetworkBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/NetworkBuilder",
            "<-TN;-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "builder":Lcom/google/common/graph/NetworkBuilder;, "Lcom/google/common/graph/NetworkBuilder<-TN;-TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableNetwork;-><init>(Lcom/google/common/graph/NetworkBuilder;)V

    .line 48
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->newConnections()Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 71
    .local v0, "connections":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newConnections()Lcom/google/common/graph/NetworkConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/NetworkConnections",
            "<TN;TE;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/google/common/graph/DirectedMultiNetworkConnections;->of()Lcom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/google/common/graph/DirectedNetworkConnections;->of()Lcom/google/common/graph/DirectedNetworkConnections;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/google/common/graph/UndirectedMultiNetworkConnections;->of()Lcom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/google/common/graph/UndirectedNetworkConnections;->of()Lcom/google/common/graph/UndirectedNetworkConnections;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "edge":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    const-string v5, "nodeU"

    invoke-static {p1, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v5, "nodeV"

    invoke-static {p2, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "edge"

    invoke-static {p3, v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsEdge(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {p0, p3}, Lcom/google/common/graph/ConfigurableMutableNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 84
    .local v2, "existingIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-static {p0, p1, p2}, Lcom/google/common/graph/EndpointPair;->of(Lcom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v4

    .line 86
    .local v4, "newIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2, v4}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    .line 85
    invoke-static {v5, v7, p3, v2, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .end local v2    # "existingIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    .end local v4    # "newIncidentNodes":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    :goto_0
    return v6

    .line 93
    :cond_0
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 94
    .local v0, "connectionsU":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_1
    move v5, v7

    :goto_1
    const-string v8, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    .line 95
    invoke-static {v5, v8, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 102
    .local v3, "isSelfLoop":Z
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    if-nez v3, :cond_3

    move v6, v7

    :cond_3
    const-string v5, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v6, v5, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_4
    if-nez v0, :cond_5

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 109
    :cond_5
    invoke-interface {v0, p3, p2}, Lcom/google/common/graph/NetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    .line 111
    .local v1, "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v1, :cond_6

    .line 112
    invoke-direct {p0, p2}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    move-result-object v1

    .line 114
    :cond_6
    invoke-interface {v1, p3, p1, v3}, Lcom/google/common/graph/NetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    iget-object v5, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v5, p3, p1}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 116
    goto :goto_0

    .end local v1    # "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    .end local v3    # "isSelfLoop":Z
    :cond_7
    move v5, v6

    .line 96
    goto :goto_1
.end method

.method public addNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/NetworkConnections;

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    const-string v6, "edge"

    invoke-static {p1, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, "nodeU":Ljava/lang/Object;, "TN;"
    if-nez v2, :cond_0

    .line 154
    :goto_0
    return v4

    .line 148
    :cond_0
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 149
    .local v0, "connectionsU":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->oppositeNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v6, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v3}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/NetworkConnections;

    .line 151
    .local v1, "connectionsV":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v0, p1}, Lcom/google/common/graph/NetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    invoke-interface {v1, p1, v4}, Lcom/google/common/graph/NetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 154
    goto :goto_0
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/graph/ConfigurableMutableNetwork;, "Lcom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v2, "node"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v2, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/NetworkConnections;

    .line 125
    .local v0, "connections":Lcom/google/common/graph/NetworkConnections;, "Lcom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v0, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 135
    :goto_0
    return v2

    .line 131
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Lcom/google/common/graph/ConfigurableMutableNetwork;->removeEdge(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v1    # "edge":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v2, 0x1

    goto :goto_0
.end method
