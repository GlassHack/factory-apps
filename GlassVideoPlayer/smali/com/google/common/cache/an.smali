.class final Lcom/google/common/cache/an;
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


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V
    .locals 2
    .param p4    # Lcom/google/common/cache/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1434
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/al;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1439
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/an;->a:J

    .line 1451
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/an;->b:Lcom/google/common/cache/y;

    .line 1464
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/an;->c:Lcom/google/common/cache/y;

    .line 1435
    return-void
.end method


# virtual methods
.method public final getNextInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/common/cache/an;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/google/common/cache/an;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1443
    iget-wide v0, p0, Lcom/google/common/cache/an;->a:J

    return-wide v0
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/google/common/cache/an;->b:Lcom/google/common/cache/y;

    .line 1462
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/google/common/cache/an;->c:Lcom/google/common/cache/y;

    .line 1475
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 0

    .prologue
    .line 1448
    iput-wide p1, p0, Lcom/google/common/cache/an;->a:J

    .line 1449
    return-void
.end method
