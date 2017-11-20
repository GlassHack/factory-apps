.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 623
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onDeleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 631
    return-void

    .line 629
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
