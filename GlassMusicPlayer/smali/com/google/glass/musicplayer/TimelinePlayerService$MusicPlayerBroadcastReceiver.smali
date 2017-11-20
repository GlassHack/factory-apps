.class Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;
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
    .line 492
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    .line 493
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.music.action.START_PLAYER_SEEDED_RADIO"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;Lcom/google/glass/musicplayer/TimelinePlayerService$1;)V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;-><init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V

    return-void
.end method

.method private startPlayerSeededRadio(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 504
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getLocalId()J

    move-result-wide v0

    .line 505
    iget-object v2, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v2, v0, v1}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$1100(Lcom/google/glass/musicplayer/TimelinePlayerService;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Could not start player seeded radio because currentLocalId=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :goto_0
    return-void

    .line 510
    :cond_0
    const-string v2, "i"

    const-string v3, "0"

    new-array v4, v5, [Ljava/lang/Object;

    .line 511
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 513
    const-string v3, "s"

    const-string v4, "2"

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.xdi.intent.PLAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v3, "container"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v3, "id_string"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v1}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/musicplayer/ActivePlayerController;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v0, "art_uri"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$1200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 498
    const-string v0, "com.google.glass.music.action.START_PLAYER_SEEDED_RADIO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-direct {p0, p1}, Lcom/google/glass/musicplayer/TimelinePlayerService$MusicPlayerBroadcastReceiver;->startPlayerSeededRadio(Landroid/content/Context;)V

    .line 501
    :cond_0
    return-void
.end method
