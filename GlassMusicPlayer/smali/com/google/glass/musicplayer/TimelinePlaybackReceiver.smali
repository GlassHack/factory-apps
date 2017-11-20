.class public Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_PLAY_HISTORY:Ljava/lang/String; = "com.google.glass.musicplayer.PLAY_HISTORY"

.field public static final ACTION_START_BROWSE_UI:Ljava/lang/String; = "com.google.glass.musicplayer.START_BROWSE_UI"

.field private static final PLAY_MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.music"

.field private static final XDI_PLAY_ACTIVITY_NAME:Ljava/lang/String; = "com.google.android.music.xdi.XdiPlayActivity"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->startTimelinePlayerService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private playFromTimelineHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v0, "com.google.android.music"

    const-string v1, "com.google.android.music.xdi.XdiPlayActivity"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "couldn\'t find a valid songId"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "playback of local songId=%s requested"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-string v0, "container"

    const/4 v1, 0x6

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v0, "id"

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 79
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v6

    new-instance v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver$1;-><init>(Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startBrowseUi(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/musicplayer/ListenToQueryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "inputType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method private startTimelinePlayerService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-static {p1}, Lcom/google/glass/musicplayer/MusicApplication;->from(Landroid/content/Context;)Lcom/google/glass/musicplayer/MusicApplication;

    move-result-object v0

    new-instance v1, Lcom/google/common/a/n;

    invoke-direct {v1}, Lcom/google/common/a/n;-><init>()V

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->a(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->b(I)Lcom/google/common/a/n;

    move-result-object v1

    const/4 v2, 0x4

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/common/a/n;->c(I)Lcom/google/common/a/n;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/glass/musicplayer/MusicApplication;->logControlAction(Lcom/google/common/a/n;)V

    .line 130
    sget-object v0, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "starting TimelinePlayerService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "com.google.glass.musicplayer.PLAY_HISTORY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "menu_item_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "itemId"

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->playFromTimelineHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "com.google.glass.musicplayer.START_BROWSE_UI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlaybackReceiver;->startBrowseUi(Landroid/content/Context;)V

    goto :goto_0
.end method
