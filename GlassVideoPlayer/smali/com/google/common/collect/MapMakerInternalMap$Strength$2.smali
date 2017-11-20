.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$2;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/gw;)V

    return-void
.end method


# virtual methods
.method final defaultEquivalence()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/google/common/base/Equivalence;->identity()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/hk;Ljava/lang/Object;)Lcom/google/common/collect/hs;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Lcom/google/common/collect/hl;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lcom/google/common/collect/hl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/hk;)V

    return-object v0
.end method
