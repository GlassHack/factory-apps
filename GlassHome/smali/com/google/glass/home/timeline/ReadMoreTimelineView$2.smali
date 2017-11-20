.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader;
.source "ReadMoreTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->createItemListAndLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncRead(ILcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "callback"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;

    .prologue
    const/4 v2, 0x0

    .line 224
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    int-to-long v3, p1

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ILjava/lang/Long;Ljava/lang/String;Z)V

    .line 224
    invoke-virtual {p2, v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;->onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 226
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 4
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 203
    iget-object v3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 202
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 212
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 213
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 216
    :goto_0
    return-wide v1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->val$items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 216
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;->calculateRowId(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0
.end method
