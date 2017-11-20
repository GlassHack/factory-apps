.class public Lcom/google/glass/timeline/TimelineNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 26
    const-class v0, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 102
    new-instance v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J
    .locals 4

    .prologue
    .line 214
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    .line 215
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 216
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    .line 218
    :cond_0
    return-wide v0
.end method

.method public static isFuture(J)Z
    .locals 4

    .prologue
    .line 204
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

    .prologue
    .line 199
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_BroadcastWakeLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/glass/util/BroadcastUnderWakeLock;->sendBroadcastUnderWakeLock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 194
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->getBundleCover(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;->parameters:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyParameters;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 117
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->NOTIFY_TASK:Lcom/google/glass/timeline/TimelineNotificationHelper$NotifyTask;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->executeIfNotQueued(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Suppressing legacy notification as NowTown is active."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not notifying on a deleted item."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasBundleId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v0, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 151
    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Item is in a bundle, we must make sure we notify for the bundle cover: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/timeline/TimelineNotificationHelper;->getBundleCover(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;

    move-result-object v1

    .line 156
    if-nez v1, :cond_2

    .line 157
    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not able to find bundle cover for: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 164
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 177
    :goto_1
    sget-object v1, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Notifying user of main timeline item: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.glass.action.NOTIFY_TIMELINE_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 179
    const-string v2, "item"

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 180
    const-string v2, "item_id"

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    if-eqz p2, :cond_3

    .line 182
    sget-object v0, Lcom/google/glass/timeline/TimelineNotificationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... and bundle timeline item: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v0, "bundle_item"

    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 184
    const-string v0, "bundle_item_id"

    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v2, p2}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    :cond_3
    const-string v0, "num_notifications"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;->broadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move-object p2, v2

    .line 167
    goto :goto_1

    :cond_5
    move-object v0, p2

    move-object p2, v2

    .line 173
    goto :goto_1
.end method
