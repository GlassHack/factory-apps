.class Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;
.super Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

.field final synthetic val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter;ILcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0

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
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 255
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 257
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    .line 259
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$000(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$position:I

    invoke-interface {v0, v1, v9}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;->onItemLoaded(ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v10

    .line 264
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getCrc32()Ljava/lang/Long;

    move-result-object v3

    .line 269
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$100(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$position:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 274
    if-nez v0, :cond_4

    move-object v1, v6

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v2, Lcom/google/glass/common/R$id;->tag_item_crc32:I

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 276
    if-eqz v1, :cond_1

    invoke-static {v9, v3, v1, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->isSameItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 277
    :cond_1
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Binding %s."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, v9}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 280
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->removeContainedView()V

    .line 283
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineItemUtils;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v0

    .line 286
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v2, v5}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$300(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)I

    move-result v2

    .line 288
    if-ne v0, v2, :cond_6

    .line 292
    if-eqz v1, :cond_5

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    .line 296
    :goto_1
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v2, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$400(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 300
    sget v1, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_binder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    move-object v2, v0

    .line 311
    :goto_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {v0, v5, p1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v5, Lcom/google/glass/common/R$id;->tag_item_crc32:I

    invoke-virtual {v0, v5, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$800(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v0, v3, v9}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$900(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/ui/NotificationState$Listener;

    move-result-object v0

    .line 320
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v3}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$800(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/ui/NotificationState;->addListener(Lcom/google/glass/timeline/ui/NotificationState$Listener;)V

    .line 321
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v5, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    invoke-virtual {v3, v5}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 322
    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v5, Lcom/google/glass/common/R$id;->tag_notification_state_listener:I

    invoke-virtual {v3, v5, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 327
    :cond_2
    new-instance v5, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;

    invoke-direct {v5, p0, v4}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1$1;-><init>(Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->bindView(Lcom/google/glass/timeline/ui/binder/ItemViewBinder;Landroid/view/View;Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_3
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setContainedView(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v0, v1, v9, v10}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setBundleState(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 357
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$1200(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 363
    :goto_4
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v1, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 365
    if-eqz v0, :cond_3

    .line 366
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    sget v2, Lcom/google/glass/common/R$id;->tag_timeline_database_adapter_load_runnable:I

    invoke-virtual {v1, v2, v6}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 367
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 369
    :cond_3
    return-void

    .line 274
    :cond_4
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_5
    move v0, v8

    .line 292
    goto/16 :goto_1

    .line 303
    :cond_6
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$500(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 306
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-static {v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$600(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->getBinder(IZ)Lcom/google/glass/timeline/ui/binder/ItemViewBinder;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->this$0:Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineItemAdapter$1;->val$container:Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-static {v2, v5, v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$700(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/glass/timeline/ui/TimelineItemContainerView;ILcom/google/glass/timeline/ui/binder/ItemViewBinder;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 343
    :catch_0
    move-exception v0

    .line 346
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v3, "Bad timeline item: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v1, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 359
    :cond_7
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Item %s has not changed, not re-binding."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method
