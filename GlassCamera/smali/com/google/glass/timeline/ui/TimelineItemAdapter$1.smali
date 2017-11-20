.class Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
.source "TimelineItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bind(ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field final synthetic val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter;ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iput p2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRead(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V
    .locals 22
    .param p1, "result"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .prologue
    .line 255
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v10

    .line 259
    .local v10, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$position:I

    invoke-interface {v1, v4, v10}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;->onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 263
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v7

    .line 264
    .local v7, "bundleCoverStatus":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getCrc32()Ljava/lang/Long;

    move-result-object v8

    .line 269
    .local v8, "crc32":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$position:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    .line 273
    invoke-virtual {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 274
    .local v16, "oldResult":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    if-nez v16, :cond_4

    const/4 v15, 0x0

    .line 275
    .local v15, "oldItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_item_crc32:I

    invoke-virtual {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 276
    .local v14, "oldCrc32":Ljava/lang/Long;
    if-eqz v15, :cond_1

    invoke-static {v10, v8, v15, v14}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->isSameItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 277
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v4, "Binding %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v11, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v11, v10}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 280
    .local v11, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->removeContainedView()V

    .line 283
    invoke-static {v10}, Lcom/google/glass/timeline/TimelineItemUtils;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v13

    .line 286
    .local v13, "nextViewType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$300(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)I

    move-result v17

    .line 288
    .local v17, "prevViewType":I
    const/4 v3, 0x0

    .line 290
    .local v3, "view":Landroid/view/View;
    move/from16 v0, v17

    if-ne v13, v0, :cond_6

    .line 292
    if-eqz v15, :cond_5

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v19, 0x1

    .line 296
    .local v19, "sameId":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    move/from16 v0, v19

    invoke-static {v1, v4, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$400(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 300
    .restart local v3    # "view":Landroid/view/View;
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    .line 311
    .end local v19    # "sameId":Z
    .local v2, "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    move-object/from16 v0, p1

    invoke-virtual {v1, v4, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_item_crc32:I

    invoke-virtual {v1, v4, v8}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$800(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v4, v10}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$900(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;

    move-result-object v12

    .line 320
    .local v12, "listener":Lcom/google/glass/timeline/ui/NotificationState$Listener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$800(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/glass/timeline/ui/NotificationState;->addListener(Lcom/google/glass/timeline/ui/NotificationState$Listener;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    invoke-virtual {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    invoke-virtual {v1, v4, v12}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 327
    .end local v12    # "listener":Lcom/google/glass/timeline/ui/NotificationState$Listener;
    :cond_2
    new-instance v6, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;-><init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 342
    .local v6, "textClipListener":Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bindView(Lcom/google/glass/timeline/ui/binder/ItemViewBinder;Landroid/view/View;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v1, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setContainedView(Landroid/view/View;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v1, v4, v10, v7}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setBundleState(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1200(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 363
    .end local v2    # "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    .end local v3    # "view":Landroid/view/View;
    .end local v6    # "textClipListener":Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v11    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v13    # "nextViewType":I
    .end local v17    # "prevViewType":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Runnable;

    .line 365
    .local v18, "runnable":Ljava/lang/Runnable;
    if-eqz v18, :cond_3

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v4, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_load_runnable:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 367
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 369
    :cond_3
    return-void

    .line 274
    .end local v14    # "oldCrc32":Ljava/lang/Long;
    .end local v15    # "oldItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v18    # "runnable":Ljava/lang/Runnable;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v15

    goto/16 :goto_0

    .line 292
    .restart local v3    # "view":Landroid/view/View;
    .restart local v11    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .restart local v13    # "nextViewType":I
    .restart local v14    # "oldCrc32":Ljava/lang/Long;
    .restart local v15    # "oldItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .restart local v17    # "prevViewType":I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$500(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$600(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Z

    move-result v1

    invoke-static {v13, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getBinder(IZ)Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    move-result-object v2

    .line 307
    .restart local v2    # "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v4, v13, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$700(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;ILcom/google/glass/timeline/ui/binder/ItemViewBinder;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_2

    .line 343
    .restart local v6    # "textClipListener":Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    :catch_0
    move-exception v9

    .line 346
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v4, "Bad timeline item: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-interface {v1, v9, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 359
    .end local v2    # "binder":Lcom/google/glass/timeline/ui/binder/ItemViewBinder;
    .end local v3    # "view":Landroid/view/View;
    .end local v6    # "textClipListener":Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v13    # "nextViewType":I
    .end local v17    # "prevViewType":I
    :cond_7
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v4, "Item %s has not changed, not re-binding."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method
