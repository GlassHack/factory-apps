.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/gw;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)Lcom/google/common/collect/hk;

    move-result-object v0

    .line 446
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$7;->copyEvictableEntry(Lcom/google/common/collect/hk;Lcom/google/common/collect/hk;)V

    .line 447
    return-object v0
.end method

.method final newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/hk;)Lcom/google/common/collect/hk;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Lcom/google/common/collect/hv;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/hv;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    return-object v0
.end method
