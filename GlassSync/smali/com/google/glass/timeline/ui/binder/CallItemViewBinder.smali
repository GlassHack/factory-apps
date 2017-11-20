.class public Lcom/google/glass/timeline/ui/binder/CallItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "CallItemViewBinder.java"


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
    .locals 16
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
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v14

    .line 41
    .local v14, "text":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 42
    .local v11, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/google/glass/common/R$color;->state_green:I

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 43
    .local v15, "textColor":I
    sget v2, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget v2, Lcom/google/glass/common/R$color;->state_red:I

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 47
    :cond_0
    sget v2, Lcom/google/glass/common/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 48
    .local v10, "messageView":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/common/R$id;->sender_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 49
    .local v13, "senderNameView":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/common/R$id;->sender_picture:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 50
    .local v5, "senderPictureView":Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/common/R$dimen;->lhs_width:I

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    .line 51
    .local v7, "width":I
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    .local v8, "height":I
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v4

    .line 58
    .local v4, "sender":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget v2, Lcom/google/glass/common/R$integer;->max_lines_in_phone_call_timeline_card:I

    .line 59
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 58
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    new-instance v9, Lcom/google/glass/phone/PhoneCallTimelineHelper;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/google/glass/phone/PhoneCallTimelineHelper;-><init>(Landroid/content/Context;)V

    .line 65
    .local v9, "helper":Lcom/google/glass/phone/PhoneCallTimelineHelper;
    invoke-virtual {v9, v4}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getNameFromEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "senderName":Ljava/lang/String;
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 72
    .local v1, "loadingTask":Lcom/google/glass/deferredcontent/EntityImageDownloadTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 79
    sget v1, Lcom/google/glass/common/R$id;->sender_picture:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "senderPictureView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method
