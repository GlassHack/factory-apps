.class final Lcom/google/common/collect/hx;
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

.field g:Lcom/google/common/collect/hk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field h:Lcom/google/common/collect/hk;
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
    .line 1538
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/hu;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/hk;)V

    .line 1543
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/hx;->d:J

    .line 1555
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hx;->e:Lcom/google/common/collect/hk;

    .line 1568
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hx;->f:Lcom/google/common/collect/hk;

    .line 1583
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hx;->g:Lcom/google/common/collect/hk;

    .line 1596
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hx;->h:Lcom/google/common/collect/hk;

    .line 1539
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1547
    iget-wide v0, p0, Lcom/google/common/collect/hx;->d:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/common/collect/hx;->g:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/google/common/collect/hx;->e:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/common/collect/hx;->h:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/hk;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/common/collect/hx;->f:Lcom/google/common/collect/hk;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .prologue
    .line 1552
    iput-wide p1, p0, Lcom/google/common/collect/hx;->d:J

    .line 1553
    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/google/common/collect/hx;->g:Lcom/google/common/collect/hk;

    .line 1594
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/google/common/collect/hx;->e:Lcom/google/common/collect/hk;

    .line 1566
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/google/common/collect/hx;->h:Lcom/google/common/collect/hk;

    .line 1607
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/hk;)V
    .locals 0

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/google/common/collect/hx;->f:Lcom/google/common/collect/hk;

    .line 1579
    return-void
.end method
