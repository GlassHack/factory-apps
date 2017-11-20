.class final Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;
.super Lcom/google/glass/timeline/TimelineItemCreatorJob;
.source "SourceFile"


# instance fields
.field private final commandType:I

.field private final context:Landroid/content/Context;

.field private final recognitionResult:Ljava/lang/String;

.field private final shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->LAUNCH:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;I)V

    .line 61
    iput-object p1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->context:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 63
    iput p4, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->commandType:I

    .line 64
    iput-object p5, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->recognitionResult:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 66
    return-void
.end method


# virtual methods
.method protected final createFinalTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 8

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 79
    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 80
    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineItemUtils;->addShareTarget(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->recognitionResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 85
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity(Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCreator(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MIRROR_COMMAND_INVOKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "p"

    iget-object v4, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 91
    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "c"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;->commandType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 90
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method protected final shouldCreateTemporaryItem()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
