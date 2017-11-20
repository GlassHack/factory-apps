.class Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;


# direct methods
.method private constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V
    .locals 3

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    .line 464
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$1000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    const-string v0, "state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iget-boolean v1, v1, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Headset unplugged while song was paused and device is doffed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iget-boolean v0, v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$800(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/google/glass/music/MediaButtonDispatcher;->sendMediaButtonClick(I)Z

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$HeadsetStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iput-boolean v3, v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    .line 479
    :cond_1
    return-void
.end method
