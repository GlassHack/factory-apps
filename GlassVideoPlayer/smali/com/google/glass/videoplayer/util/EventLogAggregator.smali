.class public Lcom/google/glass/videoplayer/util/EventLogAggregator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/util/EventLogAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 17
    return-void
.end method


# virtual methods
.method public logVideoStarted()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/videoplayer/util/EventLogAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 21
    return-void
.end method

.method public logVideoStopped(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/videoplayer/util/EventLogAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_STOP:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "d"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 24
    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 27
    return-void
.end method
