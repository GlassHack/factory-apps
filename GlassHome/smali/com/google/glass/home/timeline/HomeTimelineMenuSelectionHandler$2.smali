.class Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;
.super Ljava/lang/Object;
.source "HomeTimelineMenuSelectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->onReply(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

.field final synthetic val$dialog:Lcom/google/glass/widget/MessageDialog;

.field final synthetic val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    iput-object p2, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$dialog:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 120
    invoke-static {v0, v1}, Lcom/google/glass/companion/CompanionTimelineUtils;->sendTimelineItem(Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to send SMS to companion"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 124
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 126
    invoke-static {v2}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->access$100(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    .line 123
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/companion/CompanionTimelineUtils;->updateCompanionSyncStatus(Ljava/lang/String;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;Z)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2$1;-><init>(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "SMS to companion is sent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 132
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->this$0:Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 134
    invoke-static {v1}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;->access$100(Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    .line 131
    invoke-static {v0, v3, v1, v3}, Lcom/google/glass/companion/CompanionTimelineUtils;->updateCompanionSyncStatus(Ljava/lang/String;ILcom/google/glass/timeline/TimelineItemDatabaseHelper;Z)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler$2;->val$sent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
