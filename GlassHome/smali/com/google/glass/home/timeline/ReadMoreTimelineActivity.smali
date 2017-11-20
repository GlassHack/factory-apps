.class public Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;
.super Lcom/google/glass/timeline/ui/TimelineActivity;
.source "ReadMoreTimelineActivity.java"


# instance fields
.field private cursorLoader:Landroid/content/CursorLoader;

.field private onResumeTask:Landroid/content/Intent;

.field private timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;-><init>(Lcom/google/glass/app/GlassActivity;)V

    return-object v0
.end method

.method public createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 64
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 66
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    .line 67
    .local v1, "timelineMenuSelectionHandler":Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;
    return-object v1
.end method

.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/google/glass/home/R$id;->timeline:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    new-instance v2, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 54
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 55
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDestroyInternal()V

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 140
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->menu_browse_website:I

    if-ne v0, v1, :cond_0

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .line 154
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->getUserEventContextDataForWebLink()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {p0, v0, v1}, Lcom/google/glass/browser/BrowserHelper;->invokeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    .line 157
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
    .line 144
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 145
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->insertLinksOnSelectedViewAsMenus(Landroid/view/Menu;)V

    .line 146
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method protected onResumeInternal()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onResumeInternal()V

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 111
    iget-object v8, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 112
    .local v8, "intent":Landroid/content/Intent;
    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 117
    iput-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 120
    :cond_0
    const-string v0, "item_id"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/google/glass/timeline/TimelineItemId;

    .line 124
    .local v7, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v3

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v5

    .line 126
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/util/CachedBitmapFactory;

    move-object v1, p0

    .line 124
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 127
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 129
    .end local v7    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 98
    .local v3, "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    const/4 v4, 0x0

    const-string v5, "t"

    .line 100
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/ReadMoreTimelineActivity;->getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v6

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 103
    .end local v3    # "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/google/glass/home/R$layout;->read_more_activity:I

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method
