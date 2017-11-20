.class public Lcom/google/glass/timeline/TimelineNotificationHelper;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;,
        Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_TIMELINE_ITEM:Ljava/lang/String; = "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

.field public static final EXTRA_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_NUM_NOTIFICATIONS:Ljava/lang/String; = "num_notifications"

.field public static final FUTURE_NOTIFICATION_TIME_MS:J = 0x2710L

.field private static final NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 100
    new-instance v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getNotificationTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J
    .locals 4
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v0

    .line 210
    .local v0, "notificationTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 211
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)J

    move-result-wide v0

    .line 213
    :cond_0
    return-wide v0
.end method

.method public static isFuture(J)Z
    .locals 4
    .param p0, "timeMs"    # J

    .prologue
    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_BroadcastWakeLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/util/Pair;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 188
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getBundleCover(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p3, "numNotifications"    # I

    .prologue
    .line 112
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;->parameters:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 115
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    .line 116
    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->executeIfNotQueued(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p3, "numNotifications"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 131
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getIsDeleted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    sget-object v5, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Not notifying on a deleted item."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->hasBundleId()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 144
    .local v4, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    sget-object v5, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Item is in a bundle, we must make sure we notify for the bundle cover: %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)Landroid/util/Pair;

    move-result-object v1

    .line 150
    .local v1, "cover":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 151
    sget-object v5, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Not able to find bundle cover for: %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 158
    .local v3, "mainTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 159
    move-object v0, p2

    .line 171
    .end local v1    # "cover":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/Integer;>;"
    .end local v4    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    .local v0, "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    :goto_1
    sget-object v5, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Notifying user of main timeline item: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 173
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "item"

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 174
    const-string v5, "item_id"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    if-eqz v0, :cond_2

    .line 176
    sget-object v5, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "... and bundle timeline item: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const-string v5, "bundle_item"

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 178
    const-string v5, "bundle_item_id"

    new-instance v6, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v6, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 180
    :cond_2
    const-string v5, "num_notifications"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, p1, v2}, Lcom/google/glass/timeline/TimelineNotificationHelper;->broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    .end local v0    # "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "cover":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/Integer;>;"
    .restart local v4    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    goto :goto_1

    .line 166
    .end local v0    # "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v1    # "cover":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/Integer;>;"
    .end local v3    # "mainTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .end local v4    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    :cond_4
    move-object v3, p2

    .line 167
    .restart local v3    # "mainTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    const/4 v0, 0x0

    .restart local v0    # "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    goto :goto_1
.end method
