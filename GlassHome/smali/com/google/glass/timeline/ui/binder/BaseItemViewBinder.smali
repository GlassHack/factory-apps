.class public abstract Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.super Ljava/lang/Object;
.source "BaseItemViewBinder.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/binder/ItemViewBinder;


# instance fields
.field private isBound:Z

.field private timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindGlasswareIcon(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;)Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            ")",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 128
    sget v0, Lcom/google/glass/common/R$id;->source_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 129
    .local v9, "iconView":Landroid/widget/ImageView;
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 132
    const-string v0, "application/glass+attribution+icon"

    .line 133
    invoke-static {p2, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentOfType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v10

    .line 134
    .local v10, "attributionIconAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v10, :cond_0

    .line 135
    new-instance v0, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;

    invoke-direct {v0, p1, v10, v9, p4}, Lcom/google/glass/deferredcontent/ImageAttachmentLoadingTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Landroid/widget/ImageView;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 162
    .end local v10    # "attributionIconAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :goto_0
    return-object v0

    .line 139
    .restart local v10    # "attributionIconAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_0
    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_android_30:I

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    .end local v10    # "attributionIconAttachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, v9, p2}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->bindStaticGlasswareIcon(Landroid/widget/ImageView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "projectId":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    .line 150
    .local v3, "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v0, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 151
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v4, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    .line 154
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    .line 155
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->getIoTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    sget-object v8, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 160
    .end local v3    # "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v7    # "projectId":Ljava/lang/String;
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private bindStaticGlasswareIcon(Landroid/widget/ImageView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasAttributionType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return v1

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 180
    :pswitch_1
    sget v0, Lcom/google/glass/common/R$drawable;->ic_camera_30:I

    .line 213
    .local v0, "iconResource":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "iconResource":I
    :pswitch_2
    sget v0, Lcom/google/glass/common/R$drawable;->ic_video_30:I

    .line 184
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 186
    .end local v0    # "iconResource":I
    :pswitch_3
    sget v0, Lcom/google/glass/common/R$drawable;->ic_vignette_30:I

    .line 187
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 189
    .end local v0    # "iconResource":I
    :pswitch_4
    sget v0, Lcom/google/glass/common/R$drawable;->ic_search_30:I

    .line 190
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 192
    .end local v0    # "iconResource":I
    :pswitch_5
    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_30:I

    .line 193
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 195
    .end local v0    # "iconResource":I
    :pswitch_6
    sget v0, Lcom/google/glass/common/R$drawable;->ic_eighth_note_30:I

    .line 196
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 198
    .end local v0    # "iconResource":I
    :pswitch_7
    sget v0, Lcom/google/glass/common/R$drawable;->ic_google_play_music_30:I

    .line 199
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 201
    .end local v0    # "iconResource":I
    :pswitch_8
    sget v0, Lcom/google/glass/common/R$drawable;->ic_directions_30:I

    .line 202
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 204
    .end local v0    # "iconResource":I
    :pswitch_9
    sget v0, Lcom/google/glass/common/R$drawable;->ic_bug_30:I

    .line 205
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 207
    .end local v0    # "iconResource":I
    :pswitch_a
    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_30:I

    .line 208
    .restart local v0    # "iconResource":I
    goto :goto_1

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private showFooter(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 286
    sget v1, Lcom/google/glass/common/R$id;->timeline_item_footer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "timelineItemFooter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .param p3, "inBundle"    # Z
    .param p4, "isReadMore"    # Z
    .param p5, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;
    .param p6, "view"    # Landroid/view/View;
    .param p7, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p8, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .param p9, "contentSizedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    .param p10, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p11, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p12, "contentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;",
            "ZZ",
            "Lcom/google/glass/timeline/ui/TimelineItemContainerView;",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;",
            "Lcom/google/glass/sync/TimelineSyncStatusReceiver;",
            "Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;",
            "Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 59
    iget-boolean v3, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->isBound:Z

    const-string v4, "May not bind more than once: "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v3, v2}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->isBound:Z

    .line 62
    const/4 v12, 0x0

    .line 63
    .local v12, "iconLoadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    if-eqz p4, :cond_3

    .line 64
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->hideFooter(Landroid/view/View;)V

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setItemAndSyncStatusReceiver(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p12

    .line 74
    invoke-virtual/range {v2 .. v11}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;

    move-result-object v13

    .line 76
    .local v13, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    if-nez v13, :cond_0

    .line 77
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 79
    :cond_0
    if-eqz v12, :cond_1

    .line 80
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    sget v2, Lcom/google/glass/common/R$id;->tag_loading_task:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v13}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Ljava/util/List;)V

    .line 84
    return-object v13

    .line 59
    .end local v12    # "iconLoadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .restart local v12    # "iconLoadingTask":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p11

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->bindTimestamp(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {p0, v2, v0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->bindTitle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->bindGlasswareIcon(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;)Lcom/google/glass/deferredcontent/LoadingTask;

    move-result-object v12

    .line 70
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    move-object/from16 v0, p5

    move-object/from16 v1, p10

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setItemAndSyncStatusReceiver(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V

    .line 71
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->showFooter(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected bindTimestamp(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .prologue
    .line 97
    sget v1, Lcom/google/glass/common/R$id;->timestamp:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimestampView;

    .line 98
    .local v0, "timeView":Lcom/google/glass/timeline/ui/TimestampView;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/TimestampView;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 102
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimestampView;->setAlpha(F)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {p3, v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->addListener(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;)V

    .line 107
    iput-object p3, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 110
    :cond_0
    return-void
.end method

.method protected bindTitle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 117
    sget v1, Lcom/google/glass/common/R$id;->title:I

    invoke-virtual {p2, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getAttributionType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasHtml()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public clear(Landroid/view/View;Landroid/view/View;Z)V
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "willBindSameItem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 222
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 225
    iget-boolean v4, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->isBound:Z

    if-nez v4, :cond_0

    .line 261
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->isBound:Z

    .line 231
    sget v4, Lcom/google/glass/common/R$id;->timestamp:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimestampView;

    .line 232
    .local v3, "timeView":Lcom/google/glass/timeline/ui/TimestampView;
    if-eqz v3, :cond_2

    .line 234
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    if-eqz v4, :cond_1

    .line 235
    iget-object v4, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-virtual {v4, v3}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->removeListener(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$Listener;)V

    .line 239
    :cond_1
    invoke-virtual {v3, v6}, Lcom/google/glass/timeline/ui/TimestampView;->setItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 241
    :cond_2
    iput-object v6, p0, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 244
    sget v4, Lcom/google/glass/common/R$id;->source_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "sourceIcon":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 246
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_3
    sget v4, Lcom/google/glass/common/R$id;->tag_loading_task:I

    .line 252
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 253
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    if-eqz v2, :cond_5

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 255
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v4, v5}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->cancel(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 257
    :cond_4
    sget v4, Lcom/google/glass/common/R$id;->tag_loading_task:I

    invoke-virtual {p2, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 260
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;->onClear(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public abstract getLayout()I
.end method

.method protected hideFooter(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 278
    sget v1, Lcom/google/glass/common/R$id;->timeline_item_footer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "timelineItemFooter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 280
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    return-void
.end method

.method protected isFooterVisible(Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 268
    sget v2, Lcom/google/glass/common/R$id;->timeline_item_footer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "timelineItemFooter":Landroid/view/View;
    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;",
            "ZZ",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;",
            "Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end method

.method protected abstract onClear(Landroid/view/View;Z)V
.end method
