.class public Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;
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

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_iphone_message:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 10

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 44
    sget v0, Lcom/google/glass/common/R$id;->creator_picture:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/google/glass/common/R$id;->creator_name:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 48
    if-eqz v3, :cond_4

    .line 49
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->timeline_item_read_more_picture_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    .line 55
    new-instance v0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    const/4 v5, 0x0

    move-object v1, p1

    move-object/from16 v2, p6

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 57
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 61
    invoke-static {v3}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 68
    if-lez v2, :cond_1

    .line 69
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$color;->text_gray:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 74
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 72
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    :cond_2
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    sget v0, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 83
    if-eqz p4, :cond_3

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    .line 87
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    move-object/from16 v2, p7

    move-object v6, p5

    move-object v7, p1

    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V

    .line 89
    return-object v9

    .line 78
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 94
    sget v0, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 95
    iget-object v1, p0, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->clearLinkifyForBoundView(Landroid/view/View;)V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setShowEllipsis(Z)V

    .line 99
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
