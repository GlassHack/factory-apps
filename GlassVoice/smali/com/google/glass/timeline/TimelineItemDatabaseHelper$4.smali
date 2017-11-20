.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

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
    .locals 6

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted during deletion of timeline item [itemId=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$4;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
