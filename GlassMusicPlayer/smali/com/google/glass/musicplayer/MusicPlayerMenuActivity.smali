.class public Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final RADIO_DIALOG_DURATION_MS:J = 0x1388L

.field private static final SEEK_VS_PREVIOUS_DURATION_MS:J = 0xbb8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentPosition:J

.field private dialog:Landroid/app/Dialog;

.field private dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

.field private dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

.field private fromLiveCardVoice:Z

.field private isNautilus:Z

.field private playstate:I

.field private selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private shouldDismissMenu:Z

.field private timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

.field private transportControlFlags:I

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    .line 84
    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;-><init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 498
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;)Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)Lcom/google/glass/music/MediaButtonDispatcher;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->performActionsIfConnected()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->sendStartRadioIntent()V

    return-void
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->cleanupAndFinishIfPossible()V

    return-void
.end method

.method private cleanupAndFinishIfPossible()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->shouldDismissMenu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    .line 303
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 304
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->finish()V

    goto :goto_0
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    .line 447
    :cond_0
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 448
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 449
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$3;-><init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Landroid/app/PendingIntent;)V

    .line 450
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    .line 463
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 464
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 465
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 466
    return-void
.end method

.method private isDialogShowing()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFeatureMenu(I)Z
    .locals 1

    .prologue
    .line 488
    if-eqz p1, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logControlAction(I)V
    .locals 4

    .prologue
    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v1, "userEvent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    sget-object v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "logging music control action via TimelineService."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    return-void
.end method

.method private performActionsIfConnected()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TimelinePlayerService is not yet connected. Ignoring action."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$4;->$SwitchMap$com$google$glass$musicplayer$MusicPlayerMenuActivity$MenuAction:[I

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_1
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    .line 293
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->cleanupAndFinishIfPossible()V

    goto :goto_0

    .line 268
    :pswitch_0
    const/16 v0, 0x7e

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->processMediaButtonClick(II)V

    goto :goto_1

    .line 271
    :pswitch_1
    const/16 v0, 0x7f

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->processMediaButtonClick(II)V

    goto :goto_1

    .line 274
    :pswitch_2
    const/16 v0, 0x57

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->processMediaButtonClick(II)V

    goto :goto_1

    .line 277
    :pswitch_3
    const/16 v0, 0x58

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->processMediaButtonClick(II)V

    goto :goto_1

    .line 281
    :pswitch_4
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->startRadio()V

    goto :goto_1

    .line 284
    :pswitch_5
    const/16 v0, 0x56

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->processMediaButtonClick(II)V

    goto :goto_1

    .line 287
    :pswitch_6
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->showVolumeDialog()V

    goto :goto_1

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processMediaButtonClick(II)V
    .locals 6

    .prologue
    const/16 v5, 0x58

    .line 394
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->sendMediaButtonClick(I)Z

    move-result v0

    .line 398
    if-ne p1, v5, :cond_0

    iget-wide v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->currentPosition:J

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 400
    invoke-direct {p0, v5}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->sendMediaButtonClick(I)Z

    .line 403
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logControlAction(I)V

    .line 406
    const/16 v1, 0x56

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->stopMusicService()V

    .line 409
    :cond_1
    return-void
.end method

.method private rccSupports(I)Z
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->transportControlFlags:I

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
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/glass/music/MediaButtonDispatcher;->sendMediaButtonClick(I)Z

    move-result v0

    .line 424
    if-nez v0, :cond_0

    .line 425
    sget v1, Lcom/google/glass/musicplayer/R$string;->error_media_button:I

    invoke-virtual {p0, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/glass/musicplayer/R$string;->error_media_button_secondary:I

    .line 426
    invoke-virtual {p0, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 425
    invoke-direct {p0, v1, v2, v3}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->handleError(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 429
    new-instance v1, Lcom/google/common/a/n;

    invoke-direct {v1}, Lcom/google/common/a/n;-><init>()V

    const/16 v2, 0xc

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v1

    const/16 v2, 0xd

    .line 431
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->h(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 433
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v2

    .line 434
    invoke-virtual {v2, v1}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v2, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 437
    :cond_0
    return v0
.end method

.method private sendStartRadioIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 375
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Broadcasting startRadioIntent."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.START_PLAYER_SEEDED_RADIO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 378
    new-instance v0, Lcom/google/common/a/n;

    invoke-direct {v0}, Lcom/google/common/a/n;-><init>()V

    const/4 v1, 0x2

    .line 379
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v0

    const/4 v1, 0x6

    .line 380
    invoke-virtual {v0, v1}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v3}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 382
    invoke-virtual {v0, v3}, Lcom/google/common/a/n;->f(I)Lcom/google/common/a/n;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/a/d;->a(Lcom/google/common/a/n;)Lcom/google/common/a/d;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 385
    return-void
.end method

.method private showVolumeDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    new-instance v1, Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    iput-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    .line 317
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 319
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 321
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Menu item handled by VolumeControlDialog."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_CONTEXT:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    const-string v3, "music"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private startRadio()V
    .locals 4

    .prologue
    .line 332
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Showing start radio dialog."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isNautilus:Z

    if-eqz v0, :cond_1

    .line 338
    sget v1, Lcom/google/glass/musicplayer/R$string;->menu_starting_radio:I

    .line 339
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_starting_radio_secondary:I

    move v2, v1

    move v1, v0

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    .line 350
    :cond_0
    new-instance v3, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 351
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 352
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 353
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 354
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$2;-><init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;)V

    .line 355
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    .line 369
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 370
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 371
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 372
    return-void

    .line 341
    :cond_1
    sget v1, Lcom/google/glass/musicplayer/R$string;->menu_starting_instant_mix:I

    .line 342
    sget v0, Lcom/google/glass/musicplayer/R$string;->menu_starting_instant_mix_secondary:I

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method private stopMusicService()V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.music.action.STOP_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->stopService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 414
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 134
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->fromLiveCardVoice:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->openOptionsMenu()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.EXTRA_FROM_LIVECARD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->fromLiveCardVoice:Z

    .line 118
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->fromLiveCardVoice:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 124
    :cond_0
    invoke-static {}, Lcom/google/glass/music/MediaButtonDispatcherProvider;->getInstance()Lcom/google/glass/music/MediaButtonDispatcherProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/music/MediaButtonDispatcherProvider;->get(Landroid/content/Context;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    .line 125
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 126
    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;-><init>(Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->dialogListener:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$DialogListener;

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void

    :cond_1
    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isFeatureMenu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$menu;->live_card_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isFeatureMenu(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_play:I

    if-ne v0, v2, :cond_0

    .line 214
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PLAY:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 232
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_8

    move v0, v1

    .line 231
    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/glass/voice/menu/CommandValue;->logVoiceMenuCommandEvent(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/voice/menu/CommandValue;Z)V

    .line 234
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->performActionsIfConnected()V

    .line 237
    :goto_2
    return v1

    .line 215
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_pause:I

    if-ne v0, v2, :cond_1

    .line 216
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PAUSE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_next:I

    if-ne v0, v2, :cond_2

    .line 218
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NEXT:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 219
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_previous:I

    if-ne v0, v2, :cond_3

    .line 220
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->PREV:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 221
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_radio:I

    if-eq v0, v2, :cond_4

    .line 222
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_instant_mix:I

    if-ne v0, v2, :cond_5

    .line 223
    :cond_4
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->RADIO:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 224
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_stop:I

    if-ne v0, v2, :cond_6

    .line 225
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->STOP:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 226
    :cond_6
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_volume:I

    if-ne v0, v2, :cond_7

    .line 227
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->VOLUME:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 229
    :cond_7
    sget-object v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;->NONE:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->selectedAction:Lcom/google/glass/musicplayer/MusicPlayerMenuActivity$MenuAction;

    goto :goto_0

    .line 232
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_2
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isFeatureMenu(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->shouldDismissMenu:Z

    .line 250
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->performActionsIfConnected()V

    .line 252
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    sget-object v2, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "onPreparePanel, playstate=%s"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isFeatureMenu(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 160
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->getCurrentPlayState()I

    move-result v2

    iput v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    .line 162
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->getNatilusStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isNautilus:Z

    .line 163
    iget-object v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->getFlags()I

    move-result v2

    iput v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->transportControlFlags:I

    .line 166
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->rccSupports(I)Z

    move-result v2

    .line 167
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->rccSupports(I)Z

    move-result v3

    .line 168
    const/16 v4, 0x80

    invoke-direct {p0, v4}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->rccSupports(I)Z

    move-result v4

    .line 169
    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->rccSupports(I)Z

    move-result v5

    .line 171
    sget v6, Lcom/google/glass/musicplayer/R$id;->menu_next:I

    invoke-interface {p3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    sget v4, Lcom/google/glass/musicplayer/R$id;->menu_previous:I

    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    iget v4, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 176
    :cond_2
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_play:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_pause:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :goto_1
    iget v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->playstate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_3
    move v2, v0

    .line 188
    :goto_2
    if-nez p1, :cond_4

    .line 189
    sget v3, Lcom/google/glass/musicplayer/R$id;->menu_instant_mix:I

    invoke-interface {p3, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget v4, Lcom/google/glass/musicplayer/R$string;->menu_instant_mix:I

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 192
    :cond_4
    iget-boolean v3, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->isNautilus:Z

    if-eqz v3, :cond_7

    .line 193
    sget v3, Lcom/google/glass/musicplayer/R$id;->menu_radio:I

    invoke-interface {p3, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_instant_mix:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :goto_3
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_stop:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_volume:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    iget-boolean v2, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->shouldDismissMenu:Z

    if-nez v2, :cond_8

    :goto_4
    move v1, v0

    goto/16 :goto_0

    .line 179
    :cond_5
    sget v3, Lcom/google/glass/musicplayer/R$id;->menu_pause:I

    invoke-interface {p3, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    sget v3, Lcom/google/glass/musicplayer/R$id;->menu_play:I

    invoke-interface {p3, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v2, v1

    .line 183
    goto :goto_2

    .line 196
    :cond_7
    sget v3, Lcom/google/glass/musicplayer/R$id;->menu_instant_mix:I

    invoke-interface {p3, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    sget v2, Lcom/google/glass/musicplayer/R$id;->menu_radio:I

    invoke-interface {p3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    move v0, v1

    .line 205
    goto :goto_4

    .line 207
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected setTimelinePlayerBinder(Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 495
    iput-object p1, p0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;->timelinePlayerService:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    .line 496
    return-void
.end method
