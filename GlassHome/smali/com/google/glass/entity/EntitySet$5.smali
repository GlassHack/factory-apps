.class final enum Lcom/google/glass/entity/EntitySet$5;
.super Lcom/google/glass/entity/EntitySet;
.source "EntitySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntitySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "changesWithTimelineItem"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/entity/EntitySet;-><init>(Ljava/lang/String;IZLcom/google/glass/entity/EntitySet$1;)V

    return-void
.end method


# virtual methods
.method protected calculateEntities(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;
    .locals 1
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/entity/EntityCache;->getSpeakableSendTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v0

    return-object v0
.end method
