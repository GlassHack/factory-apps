.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted during deletion of timeline item [itemid=%]."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Could not find item %s for deletion."

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$itemId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
