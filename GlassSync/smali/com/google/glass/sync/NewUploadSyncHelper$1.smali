.class Lcom/google/glass/sync/NewUploadSyncHelper$1;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "NewUploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/NewUploadSyncHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

.field final synthetic val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/NewUploadSyncHelper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    iput-object p2, p0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 18

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$100(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 357
    .local v2, "actualItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v2, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "Item not found in database [itemId=%s]."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    const/4 v10, 0x0

    .line 429
    :goto_0
    return-object v10

    .line 364
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v10, v11, v2}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$200(Lcom/google/glass/sync/NewUploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v6

    .line 367
    .local v6, "modifiedDuringSync":Z
    if-nez v6, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "No changes made to timeline during sync -- clearing pending actions [itemId=%s]."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 369
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 368
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v10}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 376
    .local v4, "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v10, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v10, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 426
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "Updating timeline item on disk [timelineId=%s, cloudSyncStatus=%s]."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 427
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCloudSyncStatus()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 426
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$100(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v11, v12}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    goto :goto_0

    .line 378
    .end local v4    # "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "Item changed during sync -- merging changes and marking as NOT_SYNCED to preserve unsynced changes [itemId=%s]."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 379
    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 378
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v11}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "\nexpected:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "\nactual:\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 384
    .restart local v4    # "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 390
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v10}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 391
    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 392
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 394
    .local v7, "pendingActions":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v11, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v12, v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_2

    aget-object v3, v11, v10

    .line 395
    .local v3, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->this$0:Lcom/google/glass/sync/NewUploadSyncHelper;

    invoke-static {v13}, Lcom/google/glass/sync/NewUploadSyncHelper;->access$000(Lcom/google/glass/sync/NewUploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v13

    const-string v14, "Removing actions [itemId=%s, menuItemId=%s]."

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 396
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 395
    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-interface {v7, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 400
    .end local v3    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v10, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 404
    .end local v7    # "pendingActions":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_3
    new-instance v8, Lcom/google/android/util/ArraySet;

    invoke-direct {v8}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 406
    .local v8, "shareTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v10, :cond_4

    .line 407
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 410
    :cond_4
    iget-object v10, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 411
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v8, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v10, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 416
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v10}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v9, "syncedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    :goto_3
    iget-object v10, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v10}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "actualAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    :goto_4
    invoke-static {v9, v1}, Lcom/google/glass/timeline/AttachmentHelper;->mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 423
    .local v5, "mergedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v10, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto/16 :goto_1

    .line 416
    .end local v1    # "actualAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .end local v5    # "mergedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .end local v9    # "syncedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/glass/sync/NewUploadSyncHelper$1;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v10, v10, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 417
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto :goto_3

    .line 418
    .restart local v9    # "syncedAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    :cond_6
    iget-object v10, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 419
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4
.end method
