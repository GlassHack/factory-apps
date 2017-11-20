.class Lcom/google/glass/share/ShareTimelineItemJob$1;
.super Landroid/database/ContentObserver;
.source "ShareTimelineItemJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareTimelineItemJob;->waitForSharedItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareTimelineItemJob;

.field final synthetic val$contentChangedNotifier:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareTimelineItemJob;Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareTimelineItemJob;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/share/ShareTimelineItemJob$1;->this$0:Lcom/google/glass/share/ShareTimelineItemJob;

    iput-object p3, p0, Lcom/google/glass/share/ShareTimelineItemJob$1;->val$contentChangedNotifier:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/glass/share/ShareTimelineItemJob$1;->val$contentChangedNotifier:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/share/ShareTimelineItemJob$1;->val$contentChangedNotifier:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
