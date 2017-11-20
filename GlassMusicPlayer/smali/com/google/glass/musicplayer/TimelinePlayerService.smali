.class public Lcom/google/glass/musicplayer/TimelinePlayerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ID:J = 0x0L

.field private static final EXTRA_ART_URI:Ljava/lang/String; = "art_uri"

.field public static final EXTRA_LOADING_CARD:Ljava/lang/String; = "loadingCard"

.field private static final EXTRA_SONG_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_XDI_PLAY_INTENT:Ljava/lang/String; = "loadCompletionIntent"

.field private static final INVALID_COMMAND:I = -0x1

.field private static final LIVE_CARD_TAG:Ljava/lang/String; = "musicplayer"

.field private static final MUSIC_SERVICE:Landroid/content/ComponentName;

.field static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field private static final donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final headsetStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final musicPlayerReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final musicStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

.field private audioManager:Landroid/media/AudioManager;

.field final donStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final headsetStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

.field private layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

.field private liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

.field private mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

.field final musicPlayerReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private musicServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field final musicStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private remoteControlDisplay:Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;

.field private final timelinePlayerBinder:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

.field wasPlayingPriorToDoff:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 98
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "donStateReceiver"

    .line 99
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 132
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "musicStateReceiver"

    .line 133
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 135
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "musicPlayerReceiver"

    .line 136
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicPlayerReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 141
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "headsetStateReceiver"

    .line 142
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->headsetStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.music"

    const-string v2, "com.google.android.music.MusicUserContentBinder$MusicUserContentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->MUSIC_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->timelinePlayerBinder:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    .line 138
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->donStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;

    .line 144
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->headsetStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;

    .line 151
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicPlayerReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;

    .line 157
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;

    .line 169
    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlayerService$1;

    sget-object v1, Lcom/google/glass/musicplayer/TimelinePlayerService;->MUSIC_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService$1;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/MusicPlayerLiveCard;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->headsetStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/musicplayer/TimelinePlayerService;J)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/TimelinePlayerService;->isLocalIdValid(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicPlayerReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/livecard/ViewToLiveCardTranslator;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/music/MediaButtonDispatcher;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->donStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private handleLogAction(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 370
    const-string v0, "userEvent"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 371
    if-ne v0, v1, :cond_0

    .line 372
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received invalid log action."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v1, Lcom/google/common/a/n;

    invoke-direct {v1}, Lcom/google/common/a/n;-><init>()V

    const/4 v2, 0x1

    .line 377
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 378
    invoke-virtual {v1, v0}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v1

    const/4 v2, 0x3

    .line 379
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 381
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 383
    invoke-static {p0}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/MusicApplication;->getNumSongsPlayedBeforePause()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/a/n;->e(I)Lcom/google/common/a/n;

    .line 384
    invoke-static {p0}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/MusicApplication;->getDurationOfSongsPlayedBeforePause()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/common/a/n;->b(J)Lcom/google/common/a/n;

    .line 386
    :cond_1
    invoke-static {p0}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/MusicApplication;->logControlAction(Lcom/google/common/a/n;)V

    goto :goto_0
.end method

.method private isLocalIdValid(J)Z
    .locals 2

    .prologue
    .line 390
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startXdiPlayer(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    if-eqz p1, :cond_0

    .line 353
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "sending load complete PendingIntent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "caught PendingIntent CanceledException"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Was playing prior to doff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/musicplayer/ActivePlayerController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->timelinePlayerBinder:Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 200
    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    .line 203
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/google/glass/musicplayer/MusicPlayerMenuActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const v0, 0x10008000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 209
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    const-string v3, "musicplayer"

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    .line 210
    invoke-virtual {v5}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->getSurfaceHolderCallback()Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/view/SurfaceHolder$Callback;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 214
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVoiceActionEnabled(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 219
    new-instance v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    .line 220
    invoke-static {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 222
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->audioManager:Landroid/media/AudioManager;

    .line 223
    new-instance v0, Lcom/google/glass/music/MediaButtonDispatcher;

    invoke-direct {v0, p0}, Lcom/google/glass/music/MediaButtonDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    .line 225
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 226
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 227
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 228
    new-instance v0, Lcom/google/glass/musicplayer/ActivePlayerController;

    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    iget-object v3, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    iget-object v5, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->layoutView:Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/musicplayer/ActivePlayerController;-><init>(Landroid/content/Context;Lcom/google/glass/musicplayer/HistoricTimelineCardManager;Landroid/media/AudioManager;Lcom/google/glass/music/MediaButtonDispatcher;Lcom/google/glass/ongoing/OngoingActivityManager;ILcom/google/glass/musicplayer/MusicPlayerLiveCard;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    .line 232
    new-instance v0, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-direct {v0, v1}, Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;-><init>(Lcom/google/glass/musicplayer/ActivePlayerController;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->remoteControlDisplay:Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;

    .line 233
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->remoteControlDisplay:Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/glass/hidden/HiddenAudioManager;->registerRemoteControlDisplay(Landroid/media/AudioManager;Landroid/media/IRemoteControlDisplay;II)V

    .line 237
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registered as RemoteControlDisplay"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->headsetStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->donStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 242
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicPlayerReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 247
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/glass/musicplayer/R$string;->player_name:I

    .line 249
    invoke-virtual {p0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->music_player_icon:I

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 252
    sget v1, Lcom/google/glass/musicplayer/R$string;->player_name:I

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 253
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "service running in the foreground"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping music player"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 268
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->hideTimelineCard()V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->shutdown()V

    .line 277
    :cond_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->stopForeground(Z)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 282
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->musicPlayerReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 285
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->remoteControlDisplay:Lcom/google/glass/musicplayer/IRemoteControlDisplayWeak;

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenAudioManager;->unregisterRemoteControlDisplay(Landroid/media/AudioManager;Landroid/media/IRemoteControlDisplay;)V

    .line 288
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistered as RemoteControlDisplay"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->headsetStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 297
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->donStateReceiver:Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 299
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 300
    return-void

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 304
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->startPlayerUI(Lcom/google/glass/musicplayer/cards/Card;)V

    .line 348
    :goto_0
    return v9

    .line 312
    :cond_0
    const-string v0, "com.google.glass.music.action.LOG_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService;->handleLogAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 314
    :cond_1
    const-string v0, "com.google.glass.music.action.STOP_MUSIC"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->stopSelf()V

    goto :goto_0

    .line 317
    :cond_2
    const-string v0, "loadCompletionIntent"

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 319
    if-nez v0, :cond_3

    .line 320
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null xdi play intent encountered!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->stopSelf()V

    goto :goto_0

    .line 325
    :cond_3
    const-string v1, "loadingCard"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/musicplayer/cards/Card;

    .line 328
    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->historicTimelineCardManager:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->generateNewBundle()V

    .line 329
    sget-object v2, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "loadingCard=%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    if-eqz v1, :cond_4

    .line 331
    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getXdiIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Lcom/google/glass/musicplayer/cards/Card;->getType()Lcom/google/glass/musicplayer/cards/Card$Type;

    move-result-object v2

    sget-object v3, Lcom/google/glass/musicplayer/cards/Card$Type;->SONG:Lcom/google/glass/musicplayer/cards/Card$Type;

    if-ne v2, v3, :cond_4

    move-object v2, v1

    .line 332
    check-cast v2, Lcom/google/glass/musicplayer/cards/Song;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/cards/Song;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 333
    invoke-direct {p0, v2, v3}, Lcom/google/glass/musicplayer/TimelinePlayerService;->isLocalIdValid(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    sget-object v4, Lcom/google/glass/musicplayer/TimelinePlayerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "parsed localId=%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v4, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v4, v2, v3}, Lcom/google/glass/musicplayer/ActivePlayerController;->setLocalId(J)V

    .line 340
    :cond_4
    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    invoke-virtual {v2, v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->startPlayerUI(Lcom/google/glass/musicplayer/cards/Card;)V

    .line 342
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->MPLC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    sget-object v2, Lcom/google/android/glass/timeline/LiveCard$PublishMode;->REVEAL:Lcom/google/android/glass/timeline/LiveCard$PublishMode;

    invoke-virtual {v1, v8, v2}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(ILcom/google/android/glass/timeline/LiveCard$PublishMode;)V

    .line 345
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->startXdiPlayer(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method setActivePlayerControllerForTest(Lcom/google/glass/musicplayer/ActivePlayerController;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 408
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->activePlayerController:Lcom/google/glass/musicplayer/ActivePlayerController;

    .line 409
    return-void
.end method

.method setAudioManagerForTest(Landroid/media/AudioManager;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 402
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->audioManager:Landroid/media/AudioManager;

    .line 403
    return-void
.end method

.method setMediaButtonDispatcherForTest(Lcom/google/glass/music/MediaButtonDispatcher;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 414
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->mediaButtonDispatcher:Lcom/google/glass/music/MediaButtonDispatcher;

    .line 415
    return-void
.end method

.method setOngoingActivityManagerForTest(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 396
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 397
    return-void
.end method
