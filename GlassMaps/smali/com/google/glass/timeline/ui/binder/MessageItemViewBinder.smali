.class public Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


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
    .locals 9

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    .line 47
    sget v0, Lcom/google/glass/common/R$id;->participants:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/glass/mosaic/MosaicView;

    .line 50
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 53
    const/4 v0, 0x0

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 63
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 77
    :goto_0
    sget v0, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 79
    if-eqz p4, :cond_1

    .line 80
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    move-object/from16 v2, p7

    move-object v6, p5

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    invoke-static {v5, p3, v8}, Lcom/google/glass/mosaic/ImageLoaders;->forTimelineItemInView(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLandroid/view/View;)Lcom/google/glass/mosaic/ImageLoader;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lcom/google/glass/mosaic/ImageLoader;->sourceListSize()I

    move-result v2

    if-nez v2, :cond_3

    .line 89
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 95
    :goto_1
    sget v1, Lcom/google/glass/common/R$id;->failed_overlay:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-static {v5}, Lcom/google/glass/timeline/TimelineItemUtils;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$fraction;->failed_message_background_alpha:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    .line 100
    sget v2, Lcom/google/glass/common/R$id;->body:I

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    :goto_2
    return-object v0

    .line 68
    :cond_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 69
    const-string v1, "\n"

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 71
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    sget v2, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v1, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/16 v6, 0x11

    invoke-virtual {v3, v1, v2, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/google/glass/mosaic/MosaicView;->setVisibility(I)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v8, v1, p6, v2}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 102
    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    sget v1, Lcom/google/glass/common/R$id;->body:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_5
    move v4, v0

    goto/16 :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 111
    sget v0, Lcom/google/glass/common/R$id;->participants:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/mosaic/MosaicView;

    .line 112
    invoke-virtual {v0}, Lcom/google/glass/mosaic/MosaicView;->clearImages()V

    .line 114
    sget v0, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 115
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/MessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->clearLinkifyForBoundView(Landroid/view/View;)V

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 119
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
