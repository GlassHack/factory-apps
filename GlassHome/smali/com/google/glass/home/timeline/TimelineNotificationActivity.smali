.class public abstract Lcom/google/glass/home/timeline/TimelineNotificationActivity;
.super Lcom/google/glass/timeline/ui/TimelineActivity;
.source "TimelineNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;
    }
.end annotation


# static fields
.field protected static final NOTIFICATION_ANIMATE_IN_DURATION_MS:J = 0xc8L

.field private static final NOTIFICATION_AUTO_DISMISS_MS:J = 0x1388L


# instance fields
.field protected bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

.field protected cursorLoader:Landroid/content/CursorLoader;

.field private final destroySelfRunnable:Ljava/lang/Runnable;

.field private gradient:Landroid/widget/ImageView;

.field private guardPhraseHint:Landroid/widget/TextView;

.field protected handler:Landroid/os/Handler;

.field private final hideNotificationListener:Landroid/animation/Animator$AnimatorListener;

.field protected itemId:Lcom/google/glass/timeline/TimelineItemId;

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field protected stopwatch:Lcom/google/glass/time/Stopwatch;

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

.field private wasScreenOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity$1;-><init>(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->destroySelfRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity$HideNotificationListener;-><init>(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->hideNotificationListener:Landroid/animation/Animator$AnimatorListener;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->silentlyCloseAndTurnScreenOff()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/TimelineNotificationActivity;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method private silentlyCloseAndTurnScreenOff()V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 173
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->timelineLogger:Lcom/google/glass/timeline/TimelineItemLoggingHelper;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemLoggingHelper;->stopLinger(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    .line 176
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->hideNotificationListener:Landroid/animation/Animator$AnimatorListener;

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 181
    return-void
.end method


# virtual methods
.method public createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;-><init>(Lcom/google/glass/app/GlassActivity;)V

    return-object v0
.end method

.method public createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 104
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 105
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    return-object v1
.end method

.method listenForGuardPhrase()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 135
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->wasScreenOn:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onBackPressed()V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->silentlyCloseAndTurnScreenOff()V

    .line 159
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 72
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 74
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 75
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->wasScreenOn:Z

    .line 77
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    .line 79
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 81
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->wasScreenOn:Z

    if-eqz v0, :cond_0

    .line 83
    sget v0, Lcom/google/glass/home/R$id;->container_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 84
    .local v6, "containerView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .end local v6    # "containerView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_item_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->handler:Landroid/os/Handler;

    .line 96
    sget v0, Lcom/google/glass/home/R$id;->gradient:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->gradient:Landroid/widget/ImageView;

    .line 97
    sget v0, Lcom/google/glass/home/R$id;->guard_phrase_hint:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->guardPhraseHint:Landroid/widget/TextView;

    .line 98
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPauseInternal()V

    .line 146
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 150
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 187
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimelineView;->insertLinksOnSelectedViewAsMenus(Landroid/view/Menu;)V

    .line 188
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method protected onResumeInternal()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onResumeInternal()V

    .line 117
    invoke-virtual {p0, v1, v1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->overridePendingTransition(II)V

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    .line 121
    .local v0, "view":Lcom/google/glass/timeline/ui/TimelineView;
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineView;->setY(F)V

    .line 124
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->reset()V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->destroySelfRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->destroySelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 214
    :cond_0
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 7
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->destroySelfRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 198
    .local v3, "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->canReadMore()Z

    move-result v4

    const-string v5, "t"

    .line 200
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v6

    .line 198
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 202
    .end local v3    # "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method stopListeningForGuardPhrase()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->gradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->guardPhraseHint:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 139
    return-void
.end method
