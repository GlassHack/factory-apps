.class final Lcom/google/common/collect/hv;
.super Lcom/google/common/collect/hu;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field d:Lcom/google/common/collect/hk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field e:Lcom/google/common/collect/hk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 1
    .param p4    # Lcom/google/common/collect/hk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1502
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/hu;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 1507
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hv;->d:Lcom/google/common/collect/hk;

    .line 1520
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hv;->e:Lcom/google/common/collect/hk;

    .line 1503
    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/google/common/collect/hv;->d:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/google/common/collect/hv;->e:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/google/common/collect/hv;->d:Lcom/google/common/collect/hk;

    .line 1518
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/google/common/collect/hv;->e:Lcom/google/common/collect/hk;

    .line 1531
    return-void
.end method
