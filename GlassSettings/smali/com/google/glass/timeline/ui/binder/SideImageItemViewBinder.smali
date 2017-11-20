.class public Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SideImageItemViewBinder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindTitle(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 2
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "container"    # Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    .prologue
    .line 109
    sget v1, Lcom/google/glass/common/R$id;->title:I

    invoke-virtual {p2, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_side_image:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .param p3, "inBundle"    # Z
    .param p4, "isReadMore"    # Z
    .param p5, "view"    # Landroid/view/View;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "textClipListener"    # Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;
    .param p8, "contentSizedListener"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    .param p9, "contentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;
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

    .prologue
    .line 48
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    sget-object v10, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 51
    .local v2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 52
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 53
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/google/glass/timeline/ui/binder/ImageItemViewBinder;->getIdForTag(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "idForTag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    sget v9, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    .line 58
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 59
    :cond_0
    const/4 v9, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v9}, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;->onClear(Landroid/view/View;Z)V

    .line 60
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1, v9, v2}, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;->populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "title":Ljava/lang/String;
    sget v9, Lcom/google/glass/common/R$id;->mosaic_title:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 65
    .local v8, "titleView":Landroid/widget/TextView;
    sget v9, Lcom/google/glass/common/R$id;->overlay:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "gradient":Landroid/view/View;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 67
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :cond_1
    sget v9, Lcom/google/glass/common/R$id;->text:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 74
    .local v6, "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 75
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v9, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    .end local v3    # "gradient":Landroid/view/View;
    .end local v4    # "idForTag":Ljava/lang/String;
    .end local v6    # "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "titleView":Landroid/widget/TextView;
    :cond_2
    :goto_0
    return-object v5

    .line 80
    :cond_3
    sget-object v9, Lcom/google/glass/timeline/ui/binder/SideImageItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Image item has no images."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 121
    :cond_0
    sget v4, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/mosaic/MosaicView;

    .line 122
    .local v1, "mosaicView":Lcom/google/glass/mosaic/MosaicView;
    invoke-virtual {v1}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 124
    sget v4, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    sget v4, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, "textView":Landroid/widget/TextView;
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget v4, Lcom/google/glass/common/R$id;->mosaic_title:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "titleView":Landroid/widget/TextView;
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    sget v4, Lcom/google/glass/common/R$id;->overlay:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "gradient":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p3, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 90
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 93
    .local v0, "height":I
    new-instance v3, Lcom/google/glass/util/VideoThumbnailHelper;

    .line 94
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v5

    invoke-direct {v3, p2, v5}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V

    .line 95
    .local v3, "videoThumbnailHelper":Lcom/google/glass/util/VideoThumbnailHelper;
    new-instance v1, Lcom/google/glass/mosaic/AttachmentImageLoader;

    invoke-direct {v1, p4, v4, v0, v3}, Lcom/google/glass/mosaic/AttachmentImageLoader;-><init>(Ljava/util/List;IILcom/google/glass/util/VideoThumbnailHelper;)V

    .line 98
    .local v1, "loader":Lcom/google/glass/mosaic/AttachmentImageLoader;
    sget v5, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/mosaic/MosaicView;

    .line 99
    .local v2, "mosaicView":Lcom/google/glass/mosaic/MosaicView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/glass/mosaic/MosaicView;->setCellPadding(I)V

    .line 100
    const/4 v5, 0x0

    invoke-virtual {v2, v1, p2, v5}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method
