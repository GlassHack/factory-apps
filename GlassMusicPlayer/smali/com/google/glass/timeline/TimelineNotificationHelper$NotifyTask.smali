.class Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final parameters:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;->parameters:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;->parameters:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;

    .line 84
    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v1

    iget-object v2, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v1

    .line 90
    iget-object v2, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    iget-object v2, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->helper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iget-object v3, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->context:Landroid/content/Context;

    iget v0, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->numNotifications:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Item from database was null not notifying."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
