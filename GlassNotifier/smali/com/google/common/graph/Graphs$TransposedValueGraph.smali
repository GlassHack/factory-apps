.class Lcom/google/common/graph/Graphs$TransposedValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/ValueGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    .line 333
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/graph/Graphs$TransposedValueGraph;)Lcom/google/common/graph/ValueGraph;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/Graphs$TransposedValueGraph;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    return-object v0
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method protected edgeCount()J
    .locals 2

    .prologue
    .line 346
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/ValueGraph;->edgeValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isDirected()Z
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedValueGraph;, "Lcom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lcom/google/common/graph/ValueGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
