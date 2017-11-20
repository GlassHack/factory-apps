.class public Lcom/google/glass/notifier/TimelineNotificationProducer;
.super Ljava/lang/Object;
.source "TimelineNotificationProducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/notifier/TimelineNotificationProducer$Provider;
    }
.end annotation


# static fields
.field static final NOTIFICATION_PREFIX:Ljava/lang/String; = "myglass "

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/notifier/TimelineNotificationProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->context:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 38
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 39
    return-void
.end method

.method private static addIcon(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Lcom/google/glass/notifier/NotificationWrapper;)Z
    .locals 3
    .param p0, "timelineItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/google/glass/notifier/NotificationWrapper;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "attachmentId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/glass/notifier/NotificationWrapper;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 138
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 139
    invoke-static {p0, p1, v1}, Lcom/google/glass/notifier/AttachmentHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSource(Lcom/google/glass/notifier/NotificationWrapper;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Lcom/google/glass/notifier/NotificationWrapper;

    .prologue
    .line 146
    const-string v0, "myglass "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/notifier/NotificationWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(Lcom/google/glass/notifier/NotificationWrapper;)V
    .locals 5
    .param p1, "notification"    # Lcom/google/glass/notifier/NotificationWrapper;

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 47
    invoke-virtual {p1}, Lcom/google/glass/notifier/NotificationWrapper;->getStreamId()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "streamId":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/glass/notifier/TimelineNotificationProducer;->getSource(Lcom/google/glass/notifier/NotificationWrapper;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "source":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 52
    invoke-virtual {v3, v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v2

    .line 53
    .local v2, "timelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deletePostDeleteIntent(Ljava/lang/String;)I

    .line 55
    iget-object v3, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;)V

    .line 57
    :cond_0
    return-void
.end method

.method public insertOrUpdateItem(Lcom/google/glass/notifier/NotificationWrapper;)V
    .locals 11
    .param p1, "notification"    # Lcom/google/glass/notifier/NotificationWrapper;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 64
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 67
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "updateTime":J
    invoke-virtual {p1}, Lcom/google/glass/notifier/NotificationWrapper;->getStreamId()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "streamId":Ljava/lang/String;
    invoke-static {p1}, Lcom/google/glass/notifier/TimelineNotificationProducer;->getSource(Lcom/google/glass/notifier/NotificationWrapper;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "source":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 75
    invoke-virtual {v6, v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItemBySourceItemId(Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v3

    .line 78
    .local v3, "timelineItem":Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    if-nez v3, :cond_1

    .line 79
    iget-object v6, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v6}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 97
    :goto_0
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setExpirationTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 100
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 103
    invoke-virtual {v3, v2}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setSourceItemId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 106
    invoke-static {v3, v2, p1}, Lcom/google/glass/notifier/TimelineNotificationProducer;->addIcon(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Lcom/google/glass/notifier/NotificationWrapper;)Z

    move-result v0

    .line 109
    .local v0, "hasIcon":Z
    invoke-virtual {p1}, Lcom/google/glass/notifier/NotificationWrapper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 110
    invoke-virtual {p1}, Lcom/google/glass/notifier/NotificationWrapper;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 116
    :cond_0
    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V

    .line 118
    sget-object v6, Lcom/google/glass/notifier/TimelineNotificationProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Inserting timeline item."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v6, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->ANDROID_WEAR:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    invoke-virtual {v6, v3, v7, v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/nano/UserAction;)Landroid/net/Uri;

    .line 123
    sget-object v6, Lcom/google/glass/notifier/TimelineNotificationProducer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Notifying the user."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v6, Lcom/google/glass/timeline/TimelineNotificationHelper;

    invoke-direct {v6}, Lcom/google/glass/timeline/TimelineNotificationHelper;-><init>()V

    iget-object v7, p0, Lcom/google/glass/notifier/TimelineNotificationProducer;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v3, v8}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;I)V

    .line 126
    return-void

    .line 84
    .end local v0    # "hasIcon":Z
    :cond_1
    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 85
    invoke-virtual {v3, v4, v5}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    .line 88
    iput-object v9, v3, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .line 91
    iput-object v9, v3, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/nano/MenuItem;

    .line 94
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->clearViewType()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    goto :goto_0
.end method
