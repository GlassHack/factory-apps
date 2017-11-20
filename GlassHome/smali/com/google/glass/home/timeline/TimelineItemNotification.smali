.class public Lcom/google/glass/home/timeline/TimelineItemNotification;
.super Ljava/lang/Object;
.source "TimelineItemNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private final contentExecutor:Ljava/util/concurrent/Executor;

.field private contentLoadTime:J

.field private context:Landroid/content/Context;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final itemId:Lcom/google/glass/timeline/TimelineItemId;

.field private final numOfNotifications:I

.field private onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

.field private requestTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numOfNotifications"    # I
    .param p3, "timelineNotificationItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "timelineNotificationBundleItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p5, "timelineNotificationItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p6, "timelineNotificationBundleItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p7, "listener"    # Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 39
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/contentExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->contentExecutor:Ljava/util/concurrent/Executor;

    .line 74
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->context:Landroid/content/Context;

    .line 75
    iput p2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->numOfNotifications:I

    .line 76
    iput-object p3, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 77
    iput-object p4, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 78
    iput-object p5, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 79
    iput-object p6, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 80
    iput-object p7, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    .line 81
    return-void
.end method

.method private loadAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 135
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemNotification$2;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/home/timeline/TimelineItemNotification$2;-><init>(Lcom/google/glass/home/timeline/TimelineItemNotification;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->contentExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemNotification$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method

.method private loadContentIfNecessary(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 5
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preloading html for id=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preloading attachments for id=%s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 117
    goto :goto_0
.end method

.method private loadHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 122
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemNotification$1;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/home/timeline/TimelineItemNotification$1;-><init>(Lcom/google/glass/home/timeline/TimelineItemNotification;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->contentExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemNotification$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method


# virtual methods
.method public getBundleItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getBundleItemId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public getItemId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public getNumOfNotifications()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->numOfNotifications:I

    return v0
.end method

.method public getRequestTime()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->requestTime:J

    return-wide v0
.end method

.method public isInBundle()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadContent()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->requestTime:J

    .line 87
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContentIfNecessary(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Preloading content for bundleItem=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContentIfNecessary(Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Preloading content for item=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemNotification;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No content to preload, notifying immediately."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->notifyContentReady(J)V

    goto :goto_0
.end method

.method final notifyContentReady(J)V
    .locals 1
    .param p1, "contentLoadTime"    # J

    .prologue
    .line 150
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 151
    iput-wide p1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->contentLoadTime:J

    .line 152
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    invoke-interface {v0, p0}, Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;->onContentReady(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    .line 153
    return-void
.end method

.method public shouldNotify(J)Z
    .locals 4
    .param p1, "window"    # J

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->requestTime:J

    iget-wide v2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->contentLoadTime:J

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "item"

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 170
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "bundle_item"

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 173
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    const-string v1, "bundle_item_id"

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineItemNotification;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 177
    :cond_0
    return-object v0
.end method
