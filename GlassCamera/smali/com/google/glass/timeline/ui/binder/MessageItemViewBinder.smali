.class public Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "MessageItemViewBinder.java"


# instance fields
.field private timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 30
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_message:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 17
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
    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 47
    .local v6, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget v1, Lcom/google/glass/common/R$id;->participants:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/glass/mosaic/MosaicView;

    .line 50
    .local v12, "participantsView":Lcom/google/glass/mosaic/MosaicView;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 51
    .local v15, "title":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "text":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 53
    .local v4, "content":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    .line 56
    .local v5, "textStartIndex":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v4, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 63
    :cond_0
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 77
    :cond_1
    :goto_0
    sget v1, Lcom/google/glass/common/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 79
    .local v2, "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    if-eqz p4, :cond_2

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 82
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    move-object/from16 v3, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 86
    .local v13, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    move/from16 v0, p3

    invoke-static {v6, v0, v12}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItemInView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/view/View;)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v10

    .line 88
    .local v10, "imageLoader":Lcom/google/glass/mosaic/ImageLoader;
    invoke-interface {v10}, Lcom/google/glass/mosaic/ImageLoader;->sourceListSize()I

    move-result v1

    if-nez v1, :cond_4

    .line 89
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 95
    :goto_1
    sget v1, Lcom/google/glass/common/R$id;->failed_overlay:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 96
    .local v11, "overlay":Landroid/view/View;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineItemUtils;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/glass/common/R$fraction;->failed_message_background_alpha:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    .line 100
    .local v9, "alpha":F
    sget v1, Lcom/google/glass/common/R$id;->body:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 106
    .end local v9    # "alpha":F
    :goto_2
    return-object v13

    .line 68
    .end local v2    # "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    .end local v10    # "imageLoader":Lcom/google/glass/mosaic/ImageLoader;
    .end local v11    # "overlay":Landroid/view/View;
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    :cond_3
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    .line 69
    .local v16, "titleLength":I
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 71
    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    sget v3, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    const/16 v7, 0x11

    move/from16 v0, v16

    invoke-virtual {v4, v1, v3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 91
    .end local v16    # "titleLength":I
    .restart local v2    # "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    .restart local v10    # "imageLoader":Lcom/google/glass/mosaic/ImageLoader;
    .restart local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 92
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v12, v10, v0, v1}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 102
    .restart local v11    # "overlay":Landroid/view/View;
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    sget v1, Lcom/google/glass/common/R$id;->body:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 111
    sget v2, Lcom/google/glass/common/R$id;->participants:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/mosaic/MosaicView;

    .line 112
    .local v1, "participantsView":Lcom/google/glass/mosaic/MosaicView;
    invoke-virtual {v1}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 114
    sget v2, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 115
    .local v0, "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-virtual {v2, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->clearLinkifyForBoundView(Landroid/view/View;)V

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 119
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
