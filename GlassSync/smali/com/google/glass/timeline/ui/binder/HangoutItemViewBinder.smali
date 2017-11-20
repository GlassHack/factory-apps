.class public Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "HangoutItemViewBinder.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

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
.method public getLayout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_hangout:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 21
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
    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 48
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 51
    .local v3, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget v13, Lcom/google/glass/common/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v13, Lcom/google/glass/common/R$integer;->max_lines_in_hangouts_timeline_card:I

    .line 54
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 53
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    const v13, 0x106000b

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    sget v13, Lcom/google/glass/common/R$id;->sender_picture_mosaic:I

    .line 58
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/mosaic/MosaicView;

    .line 59
    .local v6, "senderPictureMosaicView":Lcom/google/glass/mosaic/MosaicView;
    sget v13, Lcom/google/glass/common/R$id;->sender_picture_placeholder:I

    .line 60
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 61
    .local v7, "senderPicturePlaceholderView":Landroid/widget/ImageView;
    sget v13, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    .line 62
    .local v12, "width":I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v1, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 65
    .local v1, "height":I
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasCreator()Z

    move-result v13

    if-nez v13, :cond_2

    .line 68
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "No creator, setting MosaicView to share target 0\'s imageUrlList."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v13, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    .line 70
    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 71
    iget-object v13, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 109
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 110
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Setting mosaic view to valid list of image urls."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {v2, v12, v1}, Lcom/google/glass/mosaic/ImageLoaders;->forImageUrls(Ljava/util/List;II)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v13

    const/4 v14, 0x0

    .line 111
    move-object/from16 v0, p6

    invoke-virtual {v6, v13, v0, v14}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 115
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_1
    return-object v10

    .line 73
    .end local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    :cond_1
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "No creator and no share target or urls.  Might be an old TimelineItem."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v2, 0x0

    .restart local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 81
    .end local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Creator exists, setting MosaicView to participants."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v13, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v9

    .line 83
    .local v9, "shareTargetCount":I
    if-nez v9, :cond_4

    .line 84
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "We didn\'t hang out with any share targets. :("

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v13

    iget-object v13, v13, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    invoke-static {v13}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 86
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Creator had an image URL, using that."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v15

    invoke-static {v15}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .restart local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 89
    .end local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Creator had an no image URL."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/4 v2, 0x0

    .restart local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 94
    .end local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "We hung out with %s share targets."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {v9}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 96
    .restart local v2    # "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v14, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    array-length v15, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_0

    aget-object v8, v14, v13

    .line 97
    .local v8, "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v8}, Lcom/google/glass/entity/EntityUtils;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 99
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 101
    :cond_5
    sget-object v16, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v17, "Got a share target with empty/null image URL.  # of images=%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->imageUrl:[Ljava/lang/String;

    move-object/from16 v20, v0

    .line 102
    invoke-static/range {v20 .. v20}, Lcom/google/glass/util/ArrayUtils;->length([Ljava/lang/Object;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    .line 101
    invoke-interface/range {v16 .. v18}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 117
    .end local v8    # "shareTarget":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v9    # "shareTargetCount":I
    .end local v11    # "url":Ljava/lang/String;
    .restart local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    :cond_6
    sget-object v13, Lcom/google/glass/timeline/ui/binder/HangoutItemViewBinder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Using placeholder."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v13, 0x4

    invoke-virtual {v6, v13}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 119
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 127
    sget v1, Lcom/google/glass/common/R$id;->sender_picture_mosaic:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 128
    .local v0, "senderPictureMosaicView":Lcom/google/glass/mosaic/MosaicView;
    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 129
    return-void
.end method
