.class public Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "MmsItemViewBinder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    return-void
.end method

.method protected static getIdForTag(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v2, "idForTag":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "attachmentHash":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v3, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attachment does not have an id or a client cache path set."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v0    # "attachmentHash":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_image:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 10
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
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 87
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->width:I

    .line 88
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->height:I

    .line 91
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    sget-object v8, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 95
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 96
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->getIdForTag(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "idForTag":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    sget v7, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    .line 101
    invoke-virtual {p5, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p5, v7}, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->onClear(Landroid/view/View;Z)V

    .line 103
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {p0, p5, v0, v7, v1}, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    sget v7, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 107
    .local v6, "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    invoke-virtual {v6}, Lcom/google/glass/widget/DynamicSizeTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 108
    .local v5, "textHolder":Landroid/view/View;
    if-eqz p4, :cond_2

    .line 112
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 113
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 121
    :goto_0
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 124
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget v7, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    invoke-virtual {p5, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    .end local v3    # "idForTag":Ljava/lang/String;
    .end local v5    # "textHolder":Landroid/view/View;
    .end local v6    # "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    :cond_1
    :goto_1
    return-object v4

    .line 118
    .restart local v3    # "idForTag":Ljava/lang/String;
    .restart local v5    # "textHolder":Landroid/view/View;
    .restart local v6    # "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/common/R$dimen;->timeline_image_caption_bottom_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 128
    .end local v3    # "idForTag":Ljava/lang/String;
    .end local v5    # "textHolder":Landroid/view/View;
    .end local v6    # "textView":Lcom/google/glass/widget/DynamicSizeTextView;
    :cond_3
    sget-object v7, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Mms item has no images."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    sget v3, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 166
    .local v0, "mosaicView":Lcom/google/glass/mosaic/MosaicView;
    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 168
    sget v3, Lcom/google/glass/common/R$id;->tag_item_binder_bound_item:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 171
    sget v3, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "textView":Landroid/widget/TextView;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v3, Lcom/google/glass/common/R$id;->overlay:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 176
    .local v1, "overlayView":Landroid/widget/ImageView;
    sget v3, Lcom/google/glass/common/R$drawable;->overlay_small:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected populateViews(Landroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 138
    .local p4, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    sget v4, Lcom/google/glass/common/R$id;->overlay:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 139
    .local v2, "overlayView":Landroid/widget/ImageView;
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    sget v4, Lcom/google/glass/common/R$drawable;->overlay_large_strong:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :goto_0
    new-instance v3, Lcom/google/glass/util/VideoThumbnailHelper;

    .line 147
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V

    .line 148
    .local v3, "videoThumbnailHelper":Lcom/google/glass/util/VideoThumbnailHelper;
    new-instance v0, Lcom/google/glass/mosaic/AttachmentImageLoader;

    iget v4, p0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->width:I

    iget v5, p0, Lcom/google/glass/timeline/ui/binder/MmsItemViewBinder;->height:I

    invoke-direct {v0, p4, v4, v5, v3}, Lcom/google/glass/mosaic/AttachmentImageLoader;-><init>(Ljava/util/List;IILcom/google/glass/util/VideoThumbnailHelper;)V

    .line 151
    .local v0, "loader":Lcom/google/glass/mosaic/AttachmentImageLoader;
    sget v4, Lcom/google/glass/common/R$id;->mosaic:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/mosaic/MosaicView;

    .line 152
    .local v1, "mosaicView":Lcom/google/glass/mosaic/MosaicView;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/glass/mosaic/MosaicView;->setCellPadding(I)V

    .line 153
    const/4 v4, 0x0

    invoke-virtual {v1, v0, p2, v4}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 142
    .end local v0    # "loader":Lcom/google/glass/mosaic/AttachmentImageLoader;
    .end local v1    # "mosaicView":Lcom/google/glass/mosaic/MosaicView;
    .end local v3    # "videoThumbnailHelper":Lcom/google/glass/util/VideoThumbnailHelper;
    :cond_0
    sget v4, Lcom/google/glass/common/R$drawable;->overlay_small:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
