.class Lcom/google/glass/boutique/GlasswareCardHelper$4;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/GlasswareCardHelper;->cleanupOldGlasswareCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/GlasswareCardHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$4;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 201
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$4;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryPinnedItems()Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 204
    .local v3, "toDelete":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    :cond_0
    iget-object v4, p0, Lcom/google/glass/boutique/GlasswareCardHelper$4;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v4}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$700(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 207
    .local v2, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareCardHelper$4;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    .line 209
    invoke-static {v5}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$800(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->getLocalTimelineItemSource()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSourceItemId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "boutique:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 218
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    if-eqz v0, :cond_3

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 223
    .restart local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Removing orphaned timeline item %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/boutique/GlasswareCardHelper$4;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    invoke-static {v5}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$000(Lcom/google/glass/boutique/GlasswareCardHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->deleteTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/boutique/GlasswareCardHelper;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Interrupted during deletion of timeline item [itemId=%s]."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_4
    return-void

    .line 218
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 219
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method
