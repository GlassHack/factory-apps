.class public Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "IPhoneMessageItemViewBinder.java"


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
    .locals 23
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

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v5

    .line 44
    .local v5, "creator":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget v3, Lcom/google/glass/common/R$id;->creator_picture:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 45
    .local v6, "creatorPicture":Landroid/widget/ImageView;
    sget v3, Lcom/google/glass/common/R$id;->creator_name:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 47
    .local v17, "creatorName":Landroid/widget/TextView;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 48
    .local v22, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    if-eqz v5, :cond_4

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$dimen;->timeline_item_read_more_picture_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v8, v3

    .line 55
    .local v8, "pictureSize":I
    new-instance v2, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move v9, v8

    invoke-direct/range {v2 .. v9}, Lcom/google/glass/deferredcontent/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 57
    .local v2, "task":Lcom/google/glass/deferredcontent/EntityImageDownloadTask;
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 61
    .local v20, "nameContent":Landroid/text/SpannableStringBuilder;
    invoke-static {v5}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v19

    .line 62
    .local v19, "name":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    :cond_0
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getEmail()Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "email":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    invoke-virtual/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v21

    .line 68
    .local v21, "spanStart":I
    if-lez v21, :cond_1

    .line 69
    const-string v3, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/google/glass/common/R$color;->text_gray:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 74
    invoke-virtual/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v7, 0x21

    .line 72
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    .end local v21    # "spanStart":I
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v2    # "task":Lcom/google/glass/deferredcontent/EntityImageDownloadTask;
    .end local v8    # "pictureSize":I
    .end local v18    # "email":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "nameContent":Landroid/text/SpannableStringBuilder;
    :goto_0
    sget v3, Lcom/google/glass/common/R$id;->message:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 83
    .local v10, "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    if-eqz p4, :cond_3

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setForcedToSmallestSize(Z)V

    .line 86
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/timeline/ui/binder/IPhoneMessageItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v14

    move-object/from16 v11, p7

    move-object/from16 v15, p5

    move-object/from16 v16, p1

    .line 86
    invoke-virtual/range {v9 .. v16}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForTextView(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Landroid/view/View;Landroid/content/Context;)V

    .line 89
    return-object v22

    .line 78
    .end local v10    # "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "willBindSameItem"    # Z

    .prologue
    .line 94
    sget v1, Lcom/google/glass/common/R$id;->message:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    .line 95
    .local v0, "messageView":Lcom/google/glass/widget/DynamicSizeTextView;
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
