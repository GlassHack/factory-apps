.class public Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearItemDeletedBroadcastReceiver.java"


# static fields
.field public static final ACTION_WEAR_TIMELINE_ITEM_DELETED:Ljava/lang/String; = "com.google.android.wearable.app.WEAR_ITEM_DELETED"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method deleteBundleMembers(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 8
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p3, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "numBundleItems":I
    if-nez v1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    sget-object v3, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Deleting %d bundle members for [bundleId=%s, source=%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p3, p1, p2, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleMembers(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "bundleMembers":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 106
    .local v2, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p3, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0
.end method

.method deleteStandaloneCover(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 117
    .line 118
    invoke-virtual {p3, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "numNonCoverItems":I
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p3, p1, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryBundleCover(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 125
    .local v1, "possibleCover":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p3, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 129
    .end local v1    # "possibleCover":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    const-string v0, "com.google.android.wearable.app.WEAR_ITEM_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;-><init>(Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    .line 40
    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method
