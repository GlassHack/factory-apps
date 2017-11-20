.class Lcom/google/glass/sync/UploadSyncHelper$3;
.super Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;
.source "UploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/UploadSyncHelper;->markAsSynced(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/UploadSyncHelper;

.field final synthetic val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/UploadSyncHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/UploadSyncHelper;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    iput-object p2, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 15

    .prologue
    .line 966
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    .line 967
    invoke-static {v7}, Lcom/google/glass/sync/UploadSyncHelper;->access$300(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->queryTimelineItem(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 969
    .local v0, "actualItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    .line 970
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v7}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Item not found in database [itemId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 971
    const/4 v7, 0x0

    .line 1027
    :goto_0
    return-object v7

    .line 977
    :cond_0
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7, v8, v0}, Lcom/google/glass/sync/UploadSyncHelper;->isUnmodifiedDuringSync(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v6

    .line 980
    .local v6, "unmodifiedDuringSync":Z
    if-eqz v6, :cond_1

    .line 981
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v7}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Marking as synced [itemId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 985
    .local v2, "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1024
    :goto_1
    if-eqz v6, :cond_7

    const/4 v5, 0x1

    .line 1025
    .local v5, "syncStatus":I
    :goto_2
    invoke-virtual {v2, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncStatus(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1027
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v7}, Lcom/google/glass/sync/UploadSyncHelper;->access$300(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    goto :goto_0

    .line 987
    .end local v2    # "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v5    # "syncStatus":I
    :cond_1
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v7}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Not marking item as synced since it was modified during the sync and has unsynced changes [itemId=%s]."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 988
    invoke-virtual {v11}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 987
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v8}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "\nexpected:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\nactual:\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 995
    .restart local v2    # "merged":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 996
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 997
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 998
    .local v3, "pendingActions":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v8, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_2

    aget-object v1, v8, v7

    .line 999
    .local v1, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v10, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {v10}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v10

    const-string v11, "Removing actions [itemId=%s, menuItemId=%s]."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v14}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 1000
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 999
    invoke-interface {v10, v11, v12}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 998
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1003
    .end local v1    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->pendingAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 1007
    .end local v3    # "pendingActions":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;>;"
    :cond_3
    new-instance v4, Lcom/google/android/util/ArraySet;

    invoke-direct {v4}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 1008
    .local v4, "shareTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v7, :cond_4

    .line 1009
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1011
    :cond_4
    iget-object v7, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1012
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v4, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 1016
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1017
    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    :goto_4
    iget-object v8, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1019
    invoke-static {v8}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    :goto_5
    invoke-static {v7, v8}, Lcom/google/glass/timeline/AttachmentHelper;->mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1021
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-object v7, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    goto/16 :goto_1

    .line 1017
    :cond_5
    iget-object v7, p0, Lcom/google/glass/sync/UploadSyncHelper$3;->val$syncedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1018
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    .line 1019
    :cond_6
    iget-object v8, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 1020
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_5

    .line 1024
    .end local v4    # "shareTargets":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2
.end method
