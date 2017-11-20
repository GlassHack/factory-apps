.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyStrongValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment",
            "<TK;TV;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 1938
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;TV;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 1931
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 1939
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .prologue
    .line 1929
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
            "<TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1954
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    .end local p1    # "entry":Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    return-object p1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1948
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .prologue
    .line 1964
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 1965
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 1959
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 1960
    return-void
.end method

.method bridge synthetic self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 1929
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->self()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1943
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    return-object p0
.end method
