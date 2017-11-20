.class Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;
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
    .line 428
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.glass.action.ON_HEAD_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v2

    .line 435
    iget-object v3, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v3}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/musicplayer/ActivePlayerController;->getPlaybackState()I

    move-result v3

    .line 436
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "isDonned: %s"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Playstate: %s"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "wasPlayingPriorToDoff: %s"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iget-boolean v6, v6, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iget-boolean v0, v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne v3, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$800(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    const/16 v2, 0x7e

    invoke-virtual {v0, v2}, Lcom/google/glass/music/MediaButtonDispatcher;->sendMediaButtonClick(I)Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iput-boolean v1, v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v0, v2, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    .line 446
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    iget-boolean v0, v0, Lcom/google/glass/musicplayer/TimelinePlayerService;->wasPlayingPriorToDoff:Z

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$800(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/music/MediaButtonDispatcher;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/google/glass/music/MediaButtonDispatcher;->sendMediaButtonClick(I)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 445
    goto :goto_1
.end method
