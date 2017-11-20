.class public abstract Lcom/google/glass/timeline/ui/FilteredTimelineActivity;
.super Lcom/google/glass/timeline/ui/TimelineActivity;
.source "SourceFile"


# instance fields
.field private handler:Landroid/os/Handler;

.field private iconProvider:Lcom/google/glass/util/IconProvider;

.field private timelineLoaders:Ljava/util/List;

.field private timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    return-object v0
.end method

.method static createIconProvider(Landroid/content/Context;)Lcom/google/glass/util/IconProvider;
    .locals 5

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/util/IconProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$dimen;->timeline_menu_item_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$dimen;->timeline_menu_item_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method


# virtual methods
.method public createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuBuilder;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V

    return-object v0
.end method

.method public createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/IconProvider;Lcom/google/glass/voice/VoiceAnnotationHelper;)V

    return-object v0
.end method

.method public abstract getFilter()Lcom/google/glass/timeline/TimelineDatabaseFilter;
.end method

.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->createIconProvider(Landroid/content/Context;)Lcom/google/glass/util/IconProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 37
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->handler:Landroid/os/Handler;

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 41
    new-instance v1, Lcom/google/glass/timeline/ui/FilteredTimelineView;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/ui/FilteredTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;

    .line 42
    iget-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->setHorizontalScrollBarEnabled(Z)V

    .line 43
    iget-object v1, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineView:Lcom/google/glass/timeline/ui/FilteredTimelineView;

    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v4

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->getFilter()Lcom/google/glass/timeline/TimelineDatabaseFilter;

    move-result-object v5

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->init(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 48
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/timeline/ui/FilteredTimelineActivity$1;-><init>(Lcom/google/glass/timeline/ui/FilteredTimelineActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public onDestroyInternal()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 80
    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/FilteredTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 84
    :cond_1
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDestroyInternal()V

    .line 85
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/google/glass/common/R$layout;->timeline_activity:I

    return v0
.end method
