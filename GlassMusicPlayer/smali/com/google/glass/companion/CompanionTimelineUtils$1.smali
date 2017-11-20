.class final Lcom/google/glass/companion/CompanionTimelineUtils$1;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "SourceFile"


# instance fields
.field final synthetic val$dbHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$syncStatus:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$dbHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$itemId:Ljava/lang/String;

    iput p3, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$syncStatus:I

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$dbHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 226
    iget v1, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$syncStatus:I

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 227
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 229
    iget-object v1, p0, Lcom/google/glass/companion/CompanionTimelineUtils$1;->val$dbHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
