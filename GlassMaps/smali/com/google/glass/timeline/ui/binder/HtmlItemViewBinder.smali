.class public Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;
.super Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;
.source "SourceFile"


# instance fields
.field private final timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/binder/BaseItemViewBinder;-><init>()V

    .line 34
    new-instance v0, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    return-void
.end method

.method private getFooterRightMargin(Landroid/content/Context;Landroid/view/View;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;->isFooterVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/google/glass/timeline/TimelineItemUtils;->shouldShowTimestamp(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lcom/google/glass/common/R$dimen;->timeline_item_timestamp_max_size:I

    .line 100
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    :goto_1
    sget v1, Lcom/google/glass/common/R$dimen;->glassware_icon_size:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/google/glass/common/R$dimen;->glassware_icon_left_margin:I

    .line 102
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/google/glass/common/R$dimen;->generic_card_padding:I

    .line 103
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    .line 98
    goto :goto_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_1
.end method


# virtual methods
.method public getLayout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/google/glass/common/R$layout;->timeline_item_html:I

    return v0
.end method

.method protected onBind(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)Ljava/util/List;
    .locals 14

    .prologue
    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v12

    .line 48
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 51
    sget v2, Lcom/google/glass/common/R$id;->placeholder:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasSource()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "api:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$color;->placeholder_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 55
    invoke-virtual {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "api:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    .line 58
    new-instance v2, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;

    .line 59
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v4

    sget-object v6, Lcom/google/glass/deferredcontent/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    .line 62
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v7

    .line 63
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->getIoTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    sget-object v10, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;->LARGE:Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;

    move-object v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/time/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/glass/deferredcontent/GlasswareIconLoadingTask$IconSize;Landroid/widget/ImageView;)V

    .line 67
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_0
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0, v12}, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;->getFooterRightMargin(Landroid/content/Context;Landroid/view/View;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v2

    .line 75
    sget v3, Lcom/google/glass/common/R$id;->tag_html_item_footer_right_margin:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 76
    sget v3, Lcom/google/glass/common/R$id;->tag_html_item_content_sized_listener:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 77
    sget v3, Lcom/google/glass/common/R$id;->tag_html_item_footer_right_margin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    sget v2, Lcom/google/glass/common/R$id;->tag_html_item_content_sized_listener:I

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    sget v2, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-object v2, p0, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v12}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->configureLinkifyForHtmlView(Landroid/view/View;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 84
    check-cast p5, Lcom/google/glass/timeline/ui/HtmlItemView;

    move-object/from16 v0, p5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView;->startRendering(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 85
    return-object v13

    .line 69
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClear(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/google/glass/timeline/ui/HtmlItemView;

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->stopRendering()V

    .line 112
    iget-object v0, p0, Lcom/google/glass/timeline/ui/binder/HtmlItemViewBinder;->timelineItemLinkify:Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/ui/binder/TimelineItemLinkify;->clearLinkifyForBoundView(Landroid/view/View;)V

    .line 115
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 116
    sget v0, Lcom/google/glass/common/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    sget v0, Lcom/google/glass/common/R$id;->tag_html_item_content_sized_listener:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    return-void
.end method
