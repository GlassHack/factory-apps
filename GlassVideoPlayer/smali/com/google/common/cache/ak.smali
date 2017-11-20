.class final Lcom/google/common/cache/ak;
.super Lcom/google/common/cache/al;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/y;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/y;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field c:Lcom/google/common/cache/y;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile d:J

.field e:Lcom/google/common/cache/y;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/cache/y;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 3
    .param p4    # Lcom/google/common/cache/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide v1, 0x7fffffffffffffffL

    .line 1482
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/al;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1487
    iput-wide v1, p0, Lcom/google/common/cache/ak;->a:J

    .line 1499
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ak;->b:Lcom/google/common/cache/y;

    .line 1512
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ak;->c:Lcom/google/common/cache/y;

    .line 1527
    iput-wide v1, p0, Lcom/google/common/cache/ak;->d:J

    .line 1539
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ak;->e:Lcom/google/common/cache/y;

    .line 1552
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ak;->f:Lcom/google/common/cache/y;

    .line 1483
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1491
    iget-wide v0, p0, Lcom/google/common/cache/ak;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/google/common/cache/ak;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/common/cache/ak;->e:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/google/common/cache/ak;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/google/common/cache/ak;->f:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1531
    iget-wide v0, p0, Lcom/google/common/cache/ak;->d:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    .prologue
    .line 1496
    iput-wide p1, p0, Lcom/google/common/cache/ak;->a:J

    .line 1497
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/google/common/cache/ak;->b:Lcom/google/common/cache/y;

    .line 1510
    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/google/common/cache/ak;->e:Lcom/google/common/cache/y;

    .line 1550
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/google/common/cache/ak;->c:Lcom/google/common/cache/y;

    .line 1523
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/google/common/cache/ak;->f:Lcom/google/common/cache/y;

    .line 1563
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    .prologue
    .line 1536
    iput-wide p1, p0, Lcom/google/common/cache/ak;->d:J

    .line 1537
    return-void
.end method
