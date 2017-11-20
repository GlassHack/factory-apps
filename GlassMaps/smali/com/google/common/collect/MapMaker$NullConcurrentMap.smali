.class Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

.field private final removalListener:Lcom/google/common/collect/gv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 765
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/gv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/gv;

    .line 766
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 767
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 827
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 787
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 789
    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/gv;

    invoke-interface {v1, v0}, Lcom/google/common/collect/gv;->onRemoval(Lcom/google/common/collect/MapMaker$RemovalNotification;)V

    .line 790
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 794
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 797
    const/4 v0, 0x0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 814
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const/4 v0, 0x0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 820
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-static {p3}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const/4 v0, 0x0

    return v0
.end method
