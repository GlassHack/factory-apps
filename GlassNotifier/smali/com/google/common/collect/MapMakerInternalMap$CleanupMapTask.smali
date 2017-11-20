.class final Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<****>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<****>;)V"
        }
    .end annotation

    .prologue
    .line 2043
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<****>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2044
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 2045
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2049
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap;

    .line 2050
    .local v0, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<****>;"
    if-nez v0, :cond_0

    .line 2051
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 2054
    :cond_0
    iget-object v3, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 2055
    .local v1, "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 2054
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2057
    .end local v1    # "segment":Lcom/google/common/collect/MapMakerInternalMap$Segment;, "Lcom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    :cond_1
    return-void
.end method
