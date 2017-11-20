.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemDeletedListener;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$deletedListener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineItemDeletedListener;->onDeleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 629
    return-void

    .line 627
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
