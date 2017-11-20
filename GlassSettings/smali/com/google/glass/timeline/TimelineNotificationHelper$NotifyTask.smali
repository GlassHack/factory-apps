.class Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotifyTask"
.end annotation


# instance fields
.field final parameters:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;",
            ">;"
        }
    .end annotation
.end field


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
    .locals 6

    .prologue
    .line 83
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;->parameters:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;

    .line 84
    .local v1, "parameters":Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;
    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v3

    iget-object v4, v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 90
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    iget-object v3, v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 91
    .local v2, "refreshedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v2, :cond_1

    .line 92
    iget-object v3, v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->helper:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iget-object v4, v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->context:Landroid/content/Context;

    iget v5, v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;->numNotifications:I

    invoke-virtual {v3, v4, v2, v5}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 98
    .end local v0    # "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .end local v2    # "refreshedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .restart local v2    # "refreshedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Item from database was null not notifying."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
