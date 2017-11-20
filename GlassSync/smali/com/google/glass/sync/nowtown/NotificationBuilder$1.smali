.class Lcom/google/glass/sync/nowtown/NotificationBuilder$1;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader;
.source "NotificationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/NotificationBuilder;->startBuild(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

.field final synthetic val$bundleCoverStatus:I

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->this$0:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    iput-object p2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput p3, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$bundleCoverStatus:I

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "callback"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .prologue
    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v2, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$bundleCoverStatus:I

    const/4 v5, 0x0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V

    invoke-virtual {p2, v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 135
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/sync/nowtown/NotificationBuilder$1;->calculateRowId(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
