.class Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;
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
    .line 540
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    .line 541
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.music.playbackfailed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.music.metachanged"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.music.playbackcomplete"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$1300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 547
    const-string v0, "com.android.music.playbackfailed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/musicplayer/ActivePlayerController;->handleError(Landroid/content/Intent;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    const-string v0, "id"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 551
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v0, "album"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 553
    const-string v0, "track"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    const-string v0, "duration"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 556
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/musicplayer/ActivePlayerController;->setMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 558
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0, v7, v8}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$1100(Lcom/google/glass/musicplayer/TimelinePlayerService;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No song ID given in metachanged intent from Timeline card."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/google/glass/musicplayer/ActivePlayerController;->setLocalId(J)V

    goto :goto_0

    .line 564
    :cond_3
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicStateBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->onPlaybackComplete()V

    goto :goto_0
.end method
