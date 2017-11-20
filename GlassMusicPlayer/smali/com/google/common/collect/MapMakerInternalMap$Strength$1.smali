.class final enum Lcom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lcom/google/common/collect/MapMakerInternalMap$Strength;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/gw;)V

    return-void
.end method


# virtual methods
.method final defaultEquivalence()Lcom/google/common/base/Equivalence;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method final referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/hk;Ljava/lang/Object;)Lcom/google/common/collect/hs;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/google/common/collect/hq;

    invoke-direct {v0, p3}, Lcom/google/common/collect/hq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
