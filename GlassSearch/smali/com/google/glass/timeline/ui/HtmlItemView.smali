.class public Lcom/google/glass/timeline/ui/HtmlItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "HtmlItemView.java"


# static fields
.field static final FORCE_JAVASCRIPT:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private cacheReadMoreVersion(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V
    .locals 11
    .param p1, "readResult"    # Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 185
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v9

    .line 186
    .local v9, "cache":Lcom/google/glass/html/PagedWebViewCache;
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v10

    .line 187
    .local v10, "key":Lcom/google/glass/html/PagedWebViewCache$Key;
    invoke-virtual {v9, v10}, Lcom/google/glass/html/PagedWebViewCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 188
    new-instance v0, Lcom/google/glass/html/PagedWebView;

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v0, v4, v1}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 190
    .local v0, "webViewToCache":Lcom/google/glass/html/PagedWebView;
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    move v4, v2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v9, v10, v0}, Lcom/google/glass/html/PagedWebViewCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v0    # "webViewToCache":Lcom/google/glass/html/PagedWebView;
    :cond_0
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 8
    .param p1, "selected"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 166
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->setSelected(Z)V

    .line 168
    if-eqz p1, :cond_2

    .line 169
    sget v6, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 170
    .local v2, "readResult":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    sget v6, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v6}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/html/PagedWebView;

    .line 172
    .local v3, "webView":Lcom/google/glass/html/PagedWebView;
    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 173
    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    :cond_0
    move v0, v5

    .line 174
    .local v0, "hasBundleCorner":Z
    :goto_0
    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtmlReadMore()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v3}, Lcom/google/glass/html/PagedWebView;->getNumPages()I

    move-result v6

    if-le v6, v5, :cond_4

    :cond_1
    move v1, v5

    .line 177
    .local v1, "hasReadMore":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 178
    invoke-direct {p0, v2}, Lcom/google/glass/timeline/ui/HtmlItemView;->cacheReadMoreVersion(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 181
    .end local v0    # "hasBundleCorner":Z
    .end local v1    # "hasReadMore":Z
    .end local v2    # "readResult":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v3    # "webView":Lcom/google/glass/html/PagedWebView;
    :cond_2
    return-void

    .restart local v2    # "readResult":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .restart local v3    # "webView":Lcom/google/glass/html/PagedWebView;
    :cond_3
    move v0, v4

    .line 173
    goto :goto_0

    .restart local v0    # "hasBundleCorner":Z
    :cond_4
    move v1, v4

    .line 175
    goto :goto_1
.end method

.method public startRendering(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 25
    .param p1, "contentLoadCompletionListener"    # Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 54
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 55
    .local v24, "readResult":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 56
    .local v3, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget v5, Lcom/google/glass/common/R$id;->tag_html_item_content_sized_listener:I

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    .line 60
    .local v22, "contentSizedListener":Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v19

    .line 61
    .local v19, "cache":Lcom/google/glass/html/PagedWebViewCache;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v23

    .line 62
    .local v23, "key":Lcom/google/glass/html/PagedWebViewCache$Key;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/glass/html/PagedWebViewCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/html/PagedWebView;

    .line 63
    .local v2, "webView":Lcom/google/glass/html/PagedWebView;
    if-nez v2, :cond_4

    const/16 v20, 0x1

    .line 64
    .local v20, "cacheMiss":Z
    :goto_0
    if-eqz v20, :cond_6

    .line 66
    new-instance v2, Lcom/google/glass/html/PagedWebView;

    .end local v2    # "webView":Lcom/google/glass/html/PagedWebView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 67
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v2, v6, v5}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 69
    .restart local v2    # "webView":Lcom/google/glass/html/PagedWebView;
    sget v5, Lcom/google/glass/common/R$id;->tag_html_item_footer_right_margin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 72
    .local v4, "footerRightMargin":I
    const/4 v8, 0x0

    .line 73
    .local v8, "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    if-eqz p1, :cond_0

    .line 74
    new-instance v8, Lcom/google/glass/timeline/ui/HtmlItemView$1;

    .end local v8    # "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView$1;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 83
    .restart local v8    # "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    :cond_0
    const/4 v9, 0x0

    .line 84
    .local v9, "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    if-eqz p1, :cond_1

    .line 85
    new-instance v9, Lcom/google/glass/timeline/ui/HtmlItemView$2;

    .end local v9    # "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView$2;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 94
    .restart local v9    # "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    if-eqz v22, :cond_2

    .line 98
    new-instance v7, Lcom/google/glass/timeline/ui/HtmlItemView$3;

    .end local v7    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1, v3}, Lcom/google/glass/timeline/ui/HtmlItemView$3;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 110
    .restart local v7    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 135
    .end local v4    # "footerRightMargin":I
    .end local v7    # "pageCountChangeListener":Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .end local v8    # "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .end local v9    # "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    :cond_3
    :goto_1
    sget v5, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 136
    sget v5, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/google/glass/timeline/ui/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 137
    sget-object v5, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Loading HTML view, claiming paged webview: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 138
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 137
    invoke-interface {v5, v6, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/timeline/ui/HtmlItemView;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v2}, Lcom/google/glass/html/PagedWebView;->bringToFront()V

    .line 145
    return-void

    .line 63
    .end local v20    # "cacheMiss":Z
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 114
    .restart local v4    # "footerRightMargin":I
    .restart local v8    # "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .restart local v9    # "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    .restart local v20    # "cacheMiss":Z
    :cond_5
    sget-object v5, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Using pre-processed html for: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v5, v6, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 116
    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtml()Ljava/lang/String;

    move-result-object v18

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 115
    invoke-virtual/range {v10 .. v18}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 119
    if-eqz v22, :cond_3

    .line 120
    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 121
    invoke-virtual/range {v24 .. v24}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtmlReadMore()Z

    move-result v6

    .line 120
    move-object/from16 v0, v22

    invoke-interface {v0, v5, v6}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_1

    .line 126
    .end local v4    # "footerRightMargin":I
    .end local v8    # "resourceLoadedCallback":Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .end local v9    # "onSiteLoadedListener":Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    :cond_6
    sget-object v5, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Cache hit for item %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v23, v10, v11

    invoke-interface {v5, v6, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v2}, Lcom/google/glass/html/PagedWebView;->getNumPages()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    const/16 v21, 0x1

    .line 130
    .local v21, "clipped":Z
    :goto_2
    if-eqz v22, :cond_3

    .line 131
    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v5, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v5, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto/16 :goto_1

    .line 127
    .end local v21    # "clipped":Z
    :cond_7
    const/16 v21, 0x0

    goto :goto_2
.end method

.method public stopRendering()V
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 151
    sget v1, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    .line 152
    .local v0, "webView":Lcom/google/glass/html/PagedWebView;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->removeView(Landroid/view/View;)V

    .line 157
    sget-object v1, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unloading HTML view, releasing paged webview: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 158
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 157
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->release()V

    .line 160
    sget v1, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method
