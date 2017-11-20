.class public Lcom/google/glass/sync/nowtown/HtmlRenderingService;
.super Lcom/google/android/glass/app/DirectRenderingService;
.source "HtmlRenderingService.java"


# static fields
.field public static final EXTRA_BUNDLE_COVER_STATUS:Ljava/lang/String; = "bundle_cover_status"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "timeline_item"


# instance fields
.field private bundleCoverStatus:I

.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field private timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field private timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/glass/app/DirectRenderingService;-><init>()V

    .line 26
    const-string v0, "glass_sync"

    .line 27
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->bundleCoverStatus:I

    return-void
.end method

.method private createSingleItemLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/glass/timeline/ui/TimelineItemLoader;
    .locals 1
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "bundleCoverStatus"    # I

    .prologue
    .line 113
    new-instance v0, Lcom/google/glass/sync/nowtown/HtmlRenderingService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/sync/nowtown/HtmlRenderingService$1;-><init>(Lcom/google/glass/sync/nowtown/HtmlRenderingService;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    return-object v0
.end method


# virtual methods
.method protected onConnected(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/google/android/glass/app/DirectRenderingService;->onConnected(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 71
    .local v9, "extras":Landroid/os/Bundle;
    const-string v0, "timeline_item"

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v9, v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromBundle(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 72
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Connected to HTML rendering service without providing timeline item."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "bundle_cover_status"

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->bundleCoverStatus:I

    .line 81
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v5, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->bundleCoverStatus:I

    .line 83
    invoke-direct {p0, v3, v5}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->createSingleItemLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Lcom/google/glass/timeline/ui/TimelineItemLoader;

    move-result-object v3

    iget-object v7, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v8, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .line 92
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {v0, v4, v6, v6}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->view:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onCreate()V

    .line 44
    new-instance v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-direct {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 45
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->register(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 47
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->register(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->unregister(Landroid/content/Context;)V

    .line 57
    iput-object v2, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineSyncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {p0}, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->unregister(Landroid/content/Context;)V

    .line 61
    iput-object v2, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 63
    :cond_1
    return-void
.end method

.method protected onDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_0

    .line 102
    iput-object v1, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->bundleCoverStatus:I

    .line 104
    iput-object v1, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->timelineItemAdapter:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .line 105
    iput-object v1, p0, Lcom/google/glass/sync/nowtown/HtmlRenderingService;->view:Landroid/view/View;

    .line 107
    :cond_0
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onDisconnected()V

    .line 108
    return-void
.end method
