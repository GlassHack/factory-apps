.class public Lcom/google/glass/home/timeline/BundleTimelineActivity;
.super Lcom/google/glass/timeline/ui/TimelineActivity;
.source "BundleTimelineActivity.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cursorLoader:Landroid/content/CursorLoader;

.field private onResumeTask:Landroid/content/Intent;

.field private parentItemId:Lcom/google/glass/timeline/TimelineItemId;

.field private timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

.field private timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-eqz p1, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;-><init>(Lcom/google/glass/app/GlassActivity;)V

    return-object v0
.end method

.method public createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 83
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 84
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    .line 86
    .local v1, "timelineMenuSelectionHandler":Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;
    return-object v1
.end method

.method protected getNotificationItemId(Landroid/content/Intent;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    const-string v0, "bundle_item_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    .line 72
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 73
    new-instance v1, Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/logging/PiiHasher$Provider;->getInstance()Lcom/google/glass/logging/PiiHasher$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/logging/PiiHasher$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/PiiHasher;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;-><init>(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Lcom/google/glass/logging/PiiHasher;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    .line 76
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDestroyInternal()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 182
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 7
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v6, 0x0

    .line 241
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getViewedPositions()Ljava/util/Set;

    move-result-object v0

    .line 242
    .local v0, "viewedPositions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->stopBundleView(II)V

    .line 249
    :cond_0
    sget-object v1, Lcom/google/glass/home/timeline/BundleTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "[DismissAction=%s], [isNotification=%s], [parentItemId=%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    aput-object v5, v3, v4

    .line 249
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v1, p1}, Lcom/google/glass/input/InputListener$DismissAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    invoke-static {p0, v1, v6}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 256
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    .line 258
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->menu_browse_website:I

    if-ne v0, v1, :cond_0

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    .line 197
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getUserEventContextDataForWebLink()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {p0, v0, v1}, Lcom/google/glass/browser/BrowserHelper;->invokeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 187
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->insertLinksOnSelectedViewAsMenus(Landroid/view/Menu;)V

    .line 188
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method protected onResumeInternal()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onResumeInternal()V

    .line 119
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 120
    iget-object v10, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 121
    .local v10, "intent":Landroid/content/Intent;
    iput-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 126
    iput-object v1, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 129
    :cond_0
    const-string v0, "item_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 131
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[parentItemId=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->parentItemId:Lcom/google/glass/timeline/TimelineItemId;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    const-string v0, "bundle_item_id"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/TimelineItemId;

    .line 134
    .local v7, "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    const/4 v9, 0x0

    .line 135
    .local v9, "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const-string v0, "bundle_item"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "bundle_item"

    sget-object v1, Lcom/google/glass/home/timeline/BundleTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v10, v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    .line 139
    :cond_1
    const-string v0, "notificationStopwatch"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/glass/time/Stopwatch;

    .line 143
    .local v8, "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/BundleTimelineView;

    .line 144
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v3

    .line 146
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v4

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v5

    .line 148
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/util/CachedBitmapFactory;

    move-object v1, p0

    .line 143
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 151
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 160
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    invoke-virtual {v0, v9}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->startBundleView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 162
    .end local v7    # "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v8    # "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    .end local v9    # "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 155
    .restart local v7    # "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    .restart local v8    # "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    .restart local v9    # "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 213
    .local v3, "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    .line 214
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->canReadMore()Z

    move-result v4

    const-string v5, "t"

    .line 215
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v6

    .line 213
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 217
    .end local v3    # "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onWindowFocusChanged(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 226
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 230
    sget v0, Lcom/google/glass/home/R$layout;->bundle_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method
