.class public final Lcom/google/glass/home/timeline/active/MusicPlayerView;
.super Lcom/google/glass/home/timeline/active/ActiveItemView;
.source "MusicPlayerView.java"


# static fields
.field private static final FOCUS_DISMISS_DELAY_MS:J = 0x1f4L

.field private static final RADIO_DIALOG_DURATION_MS:J = 0x1388L

.field private static final SEEK_VS_PREVIOUS_DURATION_MS:J = 0xbb8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private albumCoverImageView:Landroid/widget/ImageView;

.field private currentPosition:J

.field private final dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

.field private duration:J

.field private final handler:Landroid/os/Handler;

.field private hiddenMs:J

.field private isNautilus:Z

.field private menuInteractedWith:Z

.field private messageDialog:Lcom/google/glass/widget/MessageDialog;

.field private playStatus:Landroid/widget/ImageView;

.field private playerArtistName:Landroid/widget/TextView;

.field private playerCurrentTime:Landroid/widget/TextView;

.field private playerDuration:Landroid/widget/TextView;

.field private playerDurationLayout:Landroid/widget/LinearLayout;

.field private playerSongTitle:Landroid/widget/TextView;

.field private playstate:I

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private transportControlFlags:I

.field private unloaded:Z

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private visibleMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 99
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 100
    invoke-static {}, Lcom/google/glass/music/MediaButtonDispatcherProvider;->getInstance()Lcom/google/glass/music/MediaButtonDispatcherProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/music/MediaButtonDispatcherProvider;->get(Landroid/content/Context;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/MusicPlayerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->visibleMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/active/MusicPlayerView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->hiddenMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->menuInteractedWith:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/active/MusicPlayerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logNowPlayingUsed(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/active/MusicPlayerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/active/MusicPlayerView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->unloaded:Z

    return v0
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 7
    .param p1, "ms"    # J

    .prologue
    .line 588
    long-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 589
    .local v2, "totalSeconds":I
    div-int/lit8 v0, v2, 0x3c

    .line 590
    .local v0, "minutes":I
    rem-int/lit8 v1, v2, 0x3c

    .line 591
    .local v1, "seconds":I
    const-string v3, "%2d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "secondaryMessage"    # Ljava/lang/String;
    .param p3, "errorCompletionIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 467
    :cond_0
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 468
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 469
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 472
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;

    invoke-direct {v1, p0, p3}, Lcom/google/glass/home/timeline/active/MusicPlayerView$2;-><init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;Landroid/app/PendingIntent;)V

    .line 473
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 487
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 488
    return-void
.end method

.method private handleError(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 439
    const-string v3, "errorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const-string v3, "errorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "message":Ljava/lang/String;
    const-string v3, "secondaryErrorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "secondaryMessage":Ljava/lang/String;
    const-string v3, "errorDoneIntent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "errorDoneIntent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 450
    .local v0, "errorCompletionIntent":Landroid/app/PendingIntent;
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 452
    const-string v3, "errorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 453
    const-string v3, "secondaryErrorMessage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 454
    const/4 v3, 0x1

    .line 457
    .end local v0    # "errorCompletionIntent":Landroid/app/PendingIntent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "secondaryMessage":Ljava/lang/String;
    :goto_1
    return v3

    .line 447
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v2    # "secondaryMessage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "errorCompletionIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 457
    .end local v0    # "errorCompletionIntent":Landroid/app/PendingIntent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "secondaryMessage":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private logControlAction(I)V
    .locals 4
    .param p1, "playerCommand"    # I

    .prologue
    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "logIntent":Landroid/content/Intent;
    const-string v1, "userEvent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    sget-object v1, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "logging music control action via TimelineService."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 368
    return-void
.end method

.method private logNowPlayingUsed(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v3, 0x3

    .line 508
    new-instance v2, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v2}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    .line 509
    invoke-virtual {v2, v3}, Lcom/google/common/logging/MusicLogNano$Music;->setType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v2

    .line 510
    invoke-virtual {v2, v3}, Lcom/google/common/logging/MusicLogNano$Music;->setUiType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->hiddenMs:J

    iget-wide v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->visibleMs:J

    sub-long/2addr v3, v5

    .line 511
    invoke-virtual {v2, v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->setTimeSpent(J)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v2

    .line 512
    invoke-virtual {v2, p1}, Lcom/google/common/logging/MusicLogNano$Music;->setSwipe(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v0

    .line 513
    .local v0, "musicLog":Lcom/google/common/logging/MusicLogNano$Music;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setMusic(Lcom/google/common/logging/MusicLogNano$Music;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v1

    .line 514
    .local v1, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 515
    return-void
.end method

.method private processMediaButtonClick(II)V
    .locals 6
    .param p1, "musicKeyCode"    # I
    .param p2, "playerCommand"    # I

    .prologue
    const/16 v5, 0x58

    .line 280
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)Z

    move-result v0

    .line 284
    .local v0, "sentClick":Z
    if-ne p1, v5, :cond_0

    iget-wide v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 286
    invoke-direct {p0, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)Z

    .line 289
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logControlAction(I)V

    .line 292
    const/16 v1, 0x56

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->stopMusicService()V

    .line 295
    :cond_1
    return-void
.end method

.method private rccSupports(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 639
    iget v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->transportControlFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMediaButtonClick(I)Z
    .locals 6
    .param p1, "keyEvent"    # I

    .prologue
    .line 298
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    invoke-virtual {v3, p1}, Lcom/google/glass/music/MediaButtonDispatcher;->sendMediaButtonClick(I)Z

    move-result v1

    .line 299
    .local v1, "sentClick":Z
    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$string;->musicplayer_error_media_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/glass/home/R$string;->musicplayer_error_media_button_secondary:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 300
    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 304
    new-instance v3, Lcom/google/common/logging/MusicLogNano$Music;

    invoke-direct {v3}, Lcom/google/common/logging/MusicLogNano$Music;-><init>()V

    const/16 v4, 0xc

    .line 305
    invoke-virtual {v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->setType(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v3

    const/16 v4, 0xd

    .line 306
    invoke-virtual {v3, v4}, Lcom/google/common/logging/MusicLogNano$Music;->setErrorCode(I)Lcom/google/common/logging/MusicLogNano$Music;

    move-result-object v0

    .line 307
    .local v0, "musicLog":Lcom/google/common/logging/MusicLogNano$Music;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setMusic(Lcom/google/common/logging/MusicLogNano$Music;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    .line 308
    .local v2, "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 310
    .end local v0    # "musicLog":Lcom/google/common/logging/MusicLogNano$Music;
    .end local v2    # "userEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_0
    return v1
.end method

.method private startLoadingAnimation()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 632
    return-void
.end method

.method private startRadio()V
    .locals 5

    .prologue
    .line 319
    sget-object v2, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Showing start radio dialog."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->isNautilus:Z

    if-eqz v2, :cond_1

    .line 325
    sget v0, Lcom/google/glass/home/R$string;->musicplayer_menu_starting_radio:I

    .line 326
    .local v0, "mainMsg":I
    sget v1, Lcom/google/glass/home/R$string;->musicplayer_menu_starting_radio_secondary:I

    .line 332
    .local v1, "secondaryMsg":I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->cancel()V

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 337
    :cond_0
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 338
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v3, v4, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 339
    invoke-virtual {v3, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    const-wide/16 v3, 0x1388

    .line 341
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 342
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/active/MusicPlayerView$1;

    invoke-direct {v3, p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView$1;-><init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;)V

    .line 343
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    .line 360
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->messageDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 361
    return-void

    .line 328
    .end local v0    # "mainMsg":I
    .end local v1    # "secondaryMsg":I
    :cond_1
    sget v0, Lcom/google/glass/home/R$string;->musicplayer_menu_starting_instant_mix:I

    .line 329
    .restart local v0    # "mainMsg":I
    sget v1, Lcom/google/glass/home/R$string;->musicplayer_menu_starting_instant_mix_secondary:I

    .restart local v1    # "secondaryMsg":I
    goto :goto_0
.end method

.method private stopMusicService()V
    .locals 3

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.STOP_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, "stopIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 582
    return-void
.end method

.method private updateProgressUi()V
    .locals 4

    .prologue
    .line 617
    iget-wide v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    long-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 618
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->startLoadingAnimation()V

    .line 627
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerCurrentTime:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    invoke-direct {p0, v2, v3}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDuration:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->duration:J

    invoke-direct {p0, v2, v3}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-wide v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->duration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 626
    .local v0, "progress":F
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setManualProgress(F)V

    goto :goto_0
.end method


# virtual methods
.method getPlaystate()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 315
    iget v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 206
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 207
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/google/glass/home/R$menu;->musicplayer_voice_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    const/4 v1, 0x1

    .line 211
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 519
    invoke-super {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onDetachedFromWindow()V

    .line 520
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDetachedFromWindow()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->unloaded:Z

    .line 523
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 255
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xb

    if-ne p1, v1, :cond_7

    .line 256
    iput-boolean v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->menuInteractedWith:Z

    .line 257
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_play_music:I

    if-ne v1, v2, :cond_0

    .line 258
    const/16 v1, 0x7e

    invoke-direct {p0, v1, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    .line 276
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_pause_music:I

    if-ne v1, v2, :cond_1

    .line 260
    const/16 v1, 0x7f

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_next_track:I

    if-ne v1, v2, :cond_2

    .line 262
    const/16 v1, 0x57

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_previous_track:I

    if-ne v1, v2, :cond_3

    .line 264
    const/16 v1, 0x58

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 266
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_radio:I

    if-eq v1, v2, :cond_4

    .line 267
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_instant_mix:I

    if-ne v1, v2, :cond_5

    .line 268
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->startRadio()V

    goto :goto_0

    .line 269
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_exit_music:I

    if-ne v1, v2, :cond_6

    .line 270
    const/16 v1, 0x56

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 272
    :cond_6
    sget-object v1, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown action. Ignoring."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    if-ne v0, v1, :cond_0

    .line 178
    const/16 v0, 0x7e

    invoke-direct {p0, v0, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    .line 201
    :goto_0
    return v5

    .line 179
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    if-ne v0, v1, :cond_1

    .line 180
    const/16 v0, 0x7f

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_next:I

    if-ne v0, v1, :cond_2

    .line 182
    const/16 v0, 0x57

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_previous:I

    if-ne v0, v1, :cond_3

    .line 184
    const/16 v0, 0x58

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_radio:I

    if-eq v0, v1, :cond_4

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_instant_mix:I

    if-ne v0, v1, :cond_5

    .line 188
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->startRadio()V

    goto :goto_0

    .line 189
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_stop:I

    if-ne v0, v1, :cond_6

    .line 190
    const/16 v0, 0x56

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->processMediaButtonClick(II)V

    goto :goto_0

    .line 191
    :cond_6
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;->onVolume(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu item handled by %s."

    new-array v2, v5, [Ljava/lang/Object;

    const-class v3, Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    const-string v3, "music"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_7
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown action. Ignoring."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 374
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handleError(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v6, "playstate"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 379
    const-string v6, "playstate"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    .line 380
    iget-object v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    const-string v6, "rccIntent"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    invoke-virtual {v7, v6}, Lcom/google/glass/music/MediaButtonDispatcher;->setRccIntent(Landroid/app/PendingIntent;)V

    .line 381
    iget v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-ne v6, v9, :cond_c

    .line 382
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playStatus:Landroid/widget/ImageView;

    sget v7, Lcom/google/glass/home/R$drawable;->ic_music_pause_small_50:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :cond_2
    :goto_1
    iget v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-ne v6, v12, :cond_4

    .line 389
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    .line 390
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->updateProgressUi()V

    .line 394
    :cond_4
    const-string v6, "artist"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 395
    const-string v6, "artist"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "artistName":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerArtistName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    .end local v0    # "artistName":Ljava/lang/String;
    :cond_5
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 400
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerSongTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .end local v5    # "title":Ljava/lang/String;
    :cond_6
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 405
    const-string v6, "duration"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->duration:J

    .line 406
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDuration:Landroid/widget/TextView;

    iget-wide v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->duration:J

    invoke-direct {p0, v7, v8}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_7
    const-string v6, "position"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 410
    const-string v6, "position"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 411
    .local v3, "newPosition":J
    sget-object v6, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "syncing position from %d to %d"

    new-array v8, v9, [Ljava/lang/Object;

    iget-wide v9, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iput-wide v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->currentPosition:J

    .line 413
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->updateProgressUi()V

    .line 415
    .end local v3    # "newPosition":J
    :cond_8
    const-string v6, "artwork"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 416
    const-string v6, "artwork"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 417
    .local v2, "jpegData":[B
    array-length v6, v2

    invoke-static {v2, v11, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 418
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "jpegData":[B
    :cond_9
    const-string v6, "flags"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 422
    const-string v6, "flags"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->transportControlFlags:I

    .line 425
    :cond_a
    const-string v6, "loading"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "loading"

    .line 426
    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 427
    sget-object v6, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "starting loading animation"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    const-string v6, "loading"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->startLoadingAnimation()V

    .line 432
    :cond_b
    const-string v6, "isNautilus"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 433
    const-string v6, "isNautilus"

    invoke-virtual {p1, v6, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->isNautilus:Z

    .line 434
    sget-object v6, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Set isNautilus=%s"

    new-array v8, v12, [Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->isNautilus:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 383
    :cond_c
    iget v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 384
    iget-object v6, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playStatus:Landroid/widget/ImageView;

    sget v7, Lcom/google/glass/home/R$drawable;->ic_play_small_50:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    sget-object v5, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "onPrepareOptionsMenu, playstate=%s"

    new-array v9, v7, [Ljava/lang/Object;

    iget v10, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-boolean v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->menuInteractedWith:Z

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    sget v8, Lcom/google/glass/home/R$menu;->musicplayer_menu:I

    invoke-virtual {v5, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v3

    .line 135
    .local v3, "supportsPlay":Z
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v2

    .line 136
    .local v2, "supportsPause":Z
    const/16 v5, 0x80

    invoke-direct {p0, v5}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v1

    .line 137
    .local v1, "supportsNext":Z
    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v4

    .line 139
    .local v4, "supportsPrevious":Z
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_next:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 140
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_previous:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    iget v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-eq v5, v11, :cond_0

    iget v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/16 v8, 0x8

    if-ne v5, v8, :cond_2

    .line 144
    :cond_0
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 159
    :goto_0
    iget v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-eq v5, v11, :cond_1

    iget v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    :cond_1
    move v0, v7

    .line 161
    .local v0, "isRadioEnabled":Z
    :goto_1
    iget-boolean v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->isNautilus:Z

    if-eqz v5, :cond_4

    .line 162
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_radio:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_instant_mix:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    :goto_2
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_stop:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addVolume(Landroid/view/Menu;)V

    .line 172
    return v7

    .line 151
    .end local v0    # "isRadioEnabled":Z
    :cond_2
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v6

    .line 159
    goto :goto_1

    .line 165
    .restart local v0    # "isRadioEnabled":Z
    :cond_4
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_instant_mix:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_menu_radio:I

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 12
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    sget-object v7, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "onPreparePanel, playstate=%s"

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v7}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0xb

    if-ne p1, v7, :cond_5

    .line 219
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v3

    .line 220
    .local v3, "supportsPlay":Z
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v2

    .line 221
    .local v2, "supportsPause":Z
    const/16 v7, 0x80

    invoke-direct {p0, v7}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v1

    .line 222
    .local v1, "supportsNext":Z
    invoke-direct {p0, v6}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v4

    .line 224
    .local v4, "supportsPrevious":Z
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_next_track:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_previous_track:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 227
    iget v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-eq v7, v11, :cond_0

    iget v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 229
    :cond_0
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_play_music:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_pause_music:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    :goto_0
    iget v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    if-eq v7, v11, :cond_1

    iget v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    :cond_1
    move v0, v6

    .line 238
    .local v0, "isRadioEnabled":Z
    :goto_1
    iget-boolean v7, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->isNautilus:Z

    if-eqz v7, :cond_4

    .line 239
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_radio:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_instant_mix:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    :goto_2
    sget v5, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_exit_music:I

    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    .end local v0    # "isRadioEnabled":Z
    .end local v1    # "supportsNext":Z
    .end local v2    # "supportsPause":Z
    .end local v3    # "supportsPlay":Z
    .end local v4    # "supportsPrevious":Z
    :goto_3
    return v6

    .line 232
    .restart local v1    # "supportsNext":Z
    .restart local v2    # "supportsPause":Z
    .restart local v3    # "supportsPlay":Z
    .restart local v4    # "supportsPrevious":Z
    :cond_2
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_pause_music:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_play_music:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v5

    .line 236
    goto :goto_1

    .line 242
    .restart local v0    # "isRadioEnabled":Z
    :cond_4
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_instant_mix:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    sget v7, Lcom/google/glass/home/R$id;->musicplayer_voice_menu_start_radio:I

    invoke-interface {p3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 250
    .end local v0    # "isRadioEnabled":Z
    .end local v1    # "supportsNext":Z
    .end local v2    # "supportsPause":Z
    .end local v3    # "supportsPlay":Z
    .end local v4    # "supportsPrevious":Z
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v6

    goto :goto_3
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 575
    invoke-super {p0}, Lcom/google/glass/home/timeline/active/ActiveItemView;->onRemove()V

    .line 576
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onRemove"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/google/glass/home/R$id;->cover_image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->albumCoverImageView:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/google/glass/home/R$id;->song_title:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerSongTitle:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/google/glass/home/R$id;->artist_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerArtistName:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/google/glass/home/R$id;->song_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerCurrentTime:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/google/glass/home/R$id;->duration_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    .line 117
    sget v0, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 118
    sget v0, Lcom/google/glass/home/R$id;->song_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDuration:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/google/glass/home/R$id;->play_status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playStatus:Landroid/widget/ImageView;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->showOrHideProgressSlider(Z)V

    .line 124
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/google/glass/home/R$layout;->musicplayer:I

    return v0
.end method

.method public setActivated(Z)V
    .locals 5
    .param p1, "activated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setActivated(Z)V

    .line 528
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setActivated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    if-nez p1, :cond_0

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->hiddenMs:J

    .line 533
    iput-boolean v4, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->unloaded:Z

    .line 534
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView$3;-><init>(Lcom/google/glass/home/timeline/active/MusicPlayerView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->albumCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 606
    return-void
.end method

.method public setSelected(Z)V
    .locals 5
    .param p1, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    .line 564
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/active/ActiveItemView;->setSelected(Z)V

    .line 565
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "setSelected(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    if-eqz p1, :cond_0

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->visibleMs:J

    .line 569
    iput-boolean v4, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->menuInteractedWith:Z

    .line 571
    :cond_0
    return-void
.end method

.method public showOrHideProgressSlider(Z)V
    .locals 2
    .param p1, "showFlag"    # Z

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    return-void

    .line 598
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
