.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItemAsync(Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

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
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 447
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 448
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$listener:Lcom/google/glass/timeline/TimelineItemDeletedListener;

    invoke-virtual {v2, v1, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemDeletedListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Interrupted during deletion of timeline item [itemid=%]."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Could not find item %s for deletion."

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$3;->val$itemId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
