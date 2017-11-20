.class public Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# instance fields
.field private timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 23
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_text:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 8

    .prologue
    .line 36
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 38
    if-eqz p4, :cond_0

    .line 42
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 44
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    .line 53
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    move-object v2, p7

    move-object v6, p5

    move-object v7, p1

    .line 52
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$dimen;->timeline_footer_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/google/glass/common/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 62
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/TextItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->clearLinkifyForBoundView(Landroid/view/View;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 66
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
