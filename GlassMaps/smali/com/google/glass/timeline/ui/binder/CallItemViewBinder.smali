.class public Lcom/google/glass/timeline/ui/binder/CallItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_call:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 9

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 42
    sget v0, Lcom/google/glass/common/R$color;->state_green:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 43
    sget v1, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget v0, Lcom/google/glass/common/R$color;->state_red:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v2, v0

    .line 47
    :goto_0
    sget v0, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    sget v1, Lcom/google/glass/common/R$id;->sender_name:I

    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    sget v4, Lcom/google/glass/common/R$id;->sender_picture:I

    invoke-virtual {p5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 50
    sget v6, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 51
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 58
    sget v8, Lcom/google/glass/common/R$integer;->max_lines_in_phone_call_timeline_card:I

    .line 59
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 58
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    new-instance v0, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getNameFromEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 79
    sget v0, Lcom/google/glass/common/R$id;->sender_picture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method
