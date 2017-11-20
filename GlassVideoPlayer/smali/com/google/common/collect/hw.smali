.class final Lcom/google/common/collect/hw;
.super Lcom/google/common/collect/hu;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hk;


# instance fields
.field volatile d:J

.field e:Lcom/google/common/collect/hk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/collect/hk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V
    .locals 2
    .param p4    # Lcom/google/common/collect/hk;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1455
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/hu;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 1460
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/hw;->d:J

    .line 1472
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hw;->e:Lcom/google/common/collect/hk;

    .line 1485
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hw;->f:Lcom/google/common/collect/hk;

    .line 1456
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1464
    iget-wide v0, p0, Lcom/google/common/collect/hw;->d:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/google/common/collect/hw;->e:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/common/collect/hw;->f:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 1469
    iput-wide p1, p0, Lcom/google/common/collect/hw;->d:J

    .line 1470
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/google/common/collect/hw;->e:Lcom/google/common/collect/hk;

    .line 1483
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/google/common/collect/hw;->f:Lcom/google/common/collect/hk;

    .line 1496
    return-void
.end method
