.class Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;


# direct methods
.method constructor <init>(Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;->this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;->this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    iget-object v0, v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 317
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;->this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    iget-object v0, v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$700(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;->this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    iget-object v1, v1, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v1}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 319
    iget-object v0, p0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2$1;->this$1:Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;

    iget-object v0, v0, Lcom/google/glass/musicplayer/HistoricTimelineCardManager$2;->this$0:Lcom/google/glass/musicplayer/HistoricTimelineCardManager;

    invoke-static {v0}, Lcom/google/glass/musicplayer/HistoricTimelineCardManager;->access$900(Lcom/google/glass/musicplayer/HistoricTimelineCardManager;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
