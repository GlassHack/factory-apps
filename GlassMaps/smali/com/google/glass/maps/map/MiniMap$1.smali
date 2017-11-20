.class Lcom/google/glass/maps/map/MiniMap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/maps/map/MultiTileFetcher$Listener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/map/MiniMap;

.field final synthetic val$fetchTimeMs:[J

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/google/glass/maps/map/MiniMap;[JJLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMap$1;->this$0:Lcom/google/glass/maps/map/MiniMap;

    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$fetchTimeMs:[J

    iput-wide p3, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$startTime:J

    iput-object p5, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTileLoaded(Lcom/google/glass/maps/map/MultiTileFetcher;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTile;)V
    .locals 6

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/google/glass/maps/map/MultiTileFetcher;->getNumOutstandingRequests()I

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$fetchTimeMs:[J

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$startTime:J

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 507
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 509
    :cond_0
    return-void
.end method
