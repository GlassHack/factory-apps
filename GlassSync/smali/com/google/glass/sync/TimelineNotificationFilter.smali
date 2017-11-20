.class public Lcom/google/glass/sync/TimelineNotificationFilter;
.super Ljava/lang/Object;
.source "TimelineNotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/TimelineNotificationFilter$Result;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_THRESHOLD:J


# instance fields
.field private latestNotificationTime:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/TimelineNotificationFilter;->NOTIFICATION_THRESHOLD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "glass_sync"

    .line 32
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineNotificationFilter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/sync/TimelineNotificationFilter;->latestNotificationTime:J

    .line 44
    return-void
.end method


# virtual methods
.method filter(Ljava/util/List;J)Lcom/google/glass/sync/TimelineNotificationFilter$Result;
    .locals 18
    .param p2, "batchTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;J)",
            "Lcom/google/glass/sync/TimelineNotificationFilter$Result;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    const/4 v7, 0x0

    .line 78
    .local v7, "itemToNotify":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v5, 0x0

    .line 79
    .local v5, "hasFutureNotification":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 80
    .local v3, "currentTime":J
    const/4 v10, 0x0

    .line 82
    .local v10, "numNotifications":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 83
    .local v6, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasNotification()Z

    move-result v12

    if-nez v12, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Item %s has no notification config."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/google/glass/timeline/TimelineNotificationHelper;->isFuture(J)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Item %s asks for future notification."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v5, 0x1

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/glass/sync/TimelineNotificationFilter;->getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)J

    move-result-wide v8

    .line 94
    .local v8, "notificationTime":J
    sget-wide v12, Lcom/google/glass/sync/TimelineNotificationFilter;->NOTIFICATION_THRESHOLD:J

    sub-long v12, v3, v12

    cmp-long v12, v8, v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->latestNotificationTime:J

    cmp-long v12, v8, v12

    if-lez v12, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Item %s is getting notified because its notification time %s > latest notification time %s."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 97
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->latestNotificationTime:J

    move-wide/from16 v16, v0

    .line 98
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    .line 96
    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v10, v10, 0x1

    .line 100
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/glass/sync/TimelineNotificationFilter;->latestNotificationTime:J

    .line 101
    move-object v7, v6

    goto/16 :goto_0

    .line 104
    .end local v6    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v8    # "notificationTime":J
    :cond_3
    new-instance v11, Lcom/google/glass/sync/TimelineNotificationFilter$Result;

    invoke-direct {v11, v7, v5, v10}, Lcom/google/glass/sync/TimelineNotificationFilter$Result;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZI)V

    return-object v11
.end method

.method getNotificationTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)J
    .locals 4
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "batchTime"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDeliveryTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    .line 110
    .local v0, "notificationTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 111
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->getDisplayTime(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)J

    move-result-wide v0

    .line 112
    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineNotificationHelper;->isFuture(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    move-wide v0, p2

    .line 116
    :cond_0
    return-wide v0
.end method
