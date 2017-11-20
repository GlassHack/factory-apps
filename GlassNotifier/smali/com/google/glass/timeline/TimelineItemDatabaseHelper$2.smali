.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

.field final synthetic val$tombstone:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 5

    .prologue
    .line 389
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/UserAction;-><init>()V

    .line 390
    .local v0, "action":Lcom/google/googlex/glass/common/proto/nano/UserAction;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/nano/UserAction;->setType(I)Lcom/google/googlex/glass/common/proto/nano/UserAction;

    .line 391
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$tombstone:Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$2;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/UserAction;ZLcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v1

    return-object v1
.end method
