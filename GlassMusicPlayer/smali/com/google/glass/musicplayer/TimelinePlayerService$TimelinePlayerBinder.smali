.class public Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;


# direct methods
.method public constructor <init>(Lcom/google/glass/musicplayer/TimelinePlayerService;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPlayState()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getFlags()I

    move-result v0

    return v0
.end method

.method public getNatilusStatus()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getNautilusStatus()Z

    move-result v0

    return v0
.end method

.method public getRccIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->getRccIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$100(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/MusicPlayerLiveCard;

    move-result-object v0

    return-object v0
.end method

.method navigate()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$200(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->getLiveCard()Lcom/google/android/glass/timeline/LiveCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCard;->navigate()V

    .line 91
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/musicplayer/TimelinePlayerService$TimelinePlayerBinder;->this$0:Lcom/google/glass/musicplayer/TimelinePlayerService;

    invoke-static {v0}, Lcom/google/glass/musicplayer/TimelinePlayerService;->access$000(Lcom/google/glass/musicplayer/TimelinePlayerService;)Lcom/google/glass/musicplayer/ActivePlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/ActivePlayerController;->shutdown()V

    .line 77
    return-void
.end method
