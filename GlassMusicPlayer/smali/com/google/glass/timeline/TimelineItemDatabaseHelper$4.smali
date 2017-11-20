.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Interrupted during deletion of timeline item [itemId=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
