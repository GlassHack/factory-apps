.class public Lcom/google/glass/videoplayer/WatchActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private card:Landroid/widget/FrameLayout;

.field private cardScroller:Lcom/google/android/glass/widget/CardScrollView;

.field private detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

.field private idToStreamConverter:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private player:Lcom/google/glass/videoplayer/VideoPlayer;

.field private playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

.field private volatile shouldShowVoiceMenu:Z

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 274
    new-instance v0, Lcom/google/glass/videoplayer/WatchActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/WatchActivity$3;-><init>(Lcom/google/glass/videoplayer/WatchActivity;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/videoplayer/WatchActivity;)Lcom/google/glass/videoplayer/ScrubbingDetector;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/videoplayer/WatchActivity;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/glass/videoplayer/WatchActivity;->shouldShowVoiceMenu:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/videoplayer/WatchActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->invalidateVoiceMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/videoplayer/WatchActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->pauseVideo()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/videoplayer/WatchActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->playVideo()V

    return-void
.end method

.method private invalidateVoiceMenu()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 184
    :cond_0
    return-void
.end method

.method private pauseVideo()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->pause(Z)V

    .line 192
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->play()V

    .line 188
    return-void
.end method

.method private setVideoPath()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    invoke-static {v0}, Lcom/google/glass/videoplayer/util/Utils;->isWatchUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->setUrl(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->playVideo()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {v0}, Lcom/google/glass/videoplayer/util/Utils;->getVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->idToStreamConverter:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

    iget-object v2, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v3, p0, Lcom/google/glass/videoplayer/WatchActivity;->playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->requestVideo(Ljava/lang/String;Lcom/google/glass/videoplayer/VideoPlayer;Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/app/Activity;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "timeline_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->setTimelineId(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->playVideo()V

    goto :goto_0
.end method

.method private stopVideo()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->finish()V

    .line 196
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->shouldShowVoiceMenu:Z

    .line 83
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 84
    new-instance v0, Lcom/google/glass/videoplayer/ScrubbingDetector;

    invoke-direct {v0, p0}, Lcom/google/glass/videoplayer/ScrubbingDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    .line 85
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/videoplayer/R$layout;->watch_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->card:Landroid/widget/FrameLayout;

    .line 86
    new-instance v0, Lcom/google/glass/widget/SingleCardScrollAdapter;

    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->card:Landroid/widget/FrameLayout;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/SingleCardScrollAdapter;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lcom/google/glass/videoplayer/WatchActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/videoplayer/WatchActivity$1;-><init>(Lcom/google/glass/videoplayer/WatchActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 97
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v2, p0, Lcom/google/glass/videoplayer/WatchActivity;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/widget/CardScrollView;->setScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;)V

    .line 98
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 100
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {p0, v0}, Lcom/google/glass/videoplayer/WatchActivity;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/google/glass/util/CachedBitmapFactory;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;II)V

    .line 106
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    .line 108
    new-instance v0, Lcom/google/glass/videoplayer/VideoPlayer;

    iget-object v3, p0, Lcom/google/glass/videoplayer/WatchActivity;->detector:Lcom/google/glass/videoplayer/ScrubbingDetector;

    new-instance v4, Lcom/google/glass/videoplayer/util/EventLogAggregator;

    invoke-direct {v4, p0}, Lcom/google/glass/videoplayer/util/EventLogAggregator;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/google/glass/videoplayer/WatchActivity;->card:Landroid/widget/FrameLayout;

    sget v6, Lcom/google/glass/videoplayer/R$id;->video_texture_view:I

    .line 113
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/TextureView;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/videoplayer/VideoPlayer;-><init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/videoplayer/ScrubbingDetector;Lcom/google/glass/videoplayer/util/EventLogAggregator;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    .line 114
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    new-instance v1, Lcom/google/glass/videoplayer/WatchActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/videoplayer/WatchActivity$2;-><init>(Lcom/google/glass/videoplayer/WatchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->setControllerListener(Lcom/google/glass/videoplayer/VideoPlayer$ControllerListener;)V

    .line 133
    new-instance v0, Lcom/google/glass/videoplayer/widget/PlayerView;

    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->card:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/videoplayer/widget/PlayerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/google/glass/videoplayer/VideoPlayer;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    .line 134
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->showLoadingScreen()Z

    .line 136
    new-instance v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->idToStreamConverter:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

    .line 137
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/glass/videoplayer/WatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioManager:Landroid/media/AudioManager;

    .line 138
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 141
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 142
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/videoplayer/WatchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/videoplayer/R$menu;->videoplayer_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 267
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 165
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/videoplayer/R$id;->videoplayer_pause:I

    if-ne v1, v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->pauseVideo()V

    .line 173
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/glass/util/ContextualMenuLogger;->logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V

    .line 174
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->invalidateVoiceMenu()V

    .line 177
    :goto_1
    return v0

    .line 167
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/videoplayer/R$id;->videoplayer_play:I

    if-ne v1, v2, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->playVideo()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/videoplayer/R$id;->videoplayer_stop:I

    if-ne v1, v2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->stopVideo()V

    goto :goto_0

    .line 177
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onNewIntent() [newIntent=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p0, p1}, Lcom/google/glass/videoplayer/WatchActivity;->setIntent(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPause()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0, v3}, Lcom/google/glass/videoplayer/VideoPlayer;->pause(Z)V

    .line 246
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 247
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 248
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 152
    sget v0, Lcom/google/glass/videoplayer/R$id;->videoplayer_pause:I

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->shouldShowVoiceMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    .line 153
    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 152
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 154
    sget v0, Lcom/google/glass/videoplayer/R$id;->videoplayer_play:I

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/glass/videoplayer/WatchActivity;->shouldShowVoiceMenu:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    .line 155
    invoke-virtual {v3}, Lcom/google/glass/videoplayer/VideoPlayer;->isVideoPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 154
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 156
    sget v0, Lcom/google/glass/videoplayer/R$id;->videoplayer_stop:I

    invoke-interface {p3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/glass/videoplayer/WatchActivity;->shouldShowVoiceMenu:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 153
    goto :goto_0

    .line 159
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/widget/PlayerView;->showLoadingScreen()Z

    .line 231
    invoke-direct {p0}, Lcom/google/glass/videoplayer/WatchActivity;->setVideoPath()V

    .line 232
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->cardScroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 233
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/videoplayer/WatchActivity;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 235
    if-eq v0, v4, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not gain audio focus to play video"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    sget v1, Lcom/google/glass/videoplayer/R$string;->generic_error:I

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessage(I)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 223
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->CANCELED:Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->setState(Lcom/google/glass/videoplayer/util/State;)Lcom/google/glass/videoplayer/util/State;

    .line 253
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->player:Lcom/google/glass/videoplayer/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/glass/videoplayer/VideoPlayer;->stop()V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 255
    iget-object v0, p0, Lcom/google/glass/videoplayer/WatchActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStop()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    return-void
.end method
