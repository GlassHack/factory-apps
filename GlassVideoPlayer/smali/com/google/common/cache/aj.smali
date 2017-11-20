.class final Lcom/google/common/cache/aj;
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
    .line 1388
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/al;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/y;)V

    .line 1393
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/aj;->a:J

    .line 1405
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/y;

    .line 1418
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/y;

    .line 1389
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1397
    iget-wide v0, p0, Lcom/google/common/cache/aj;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/y;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/y;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .locals 0

    .prologue
    .line 1402
    iput-wide p1, p0, Lcom/google/common/cache/aj;->a:J

    .line 1403
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/y;

    .line 1416
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/y;)V
    .locals 0

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/y;

    .line 1429
    return-void
.end method
