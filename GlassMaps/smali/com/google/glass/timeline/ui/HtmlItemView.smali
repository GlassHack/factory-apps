.class public Lcom/google/glass/timeline/ui/HtmlItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "SourceFile"


# static fields
.field static final FORCE_JAVASCRIPT:Z

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

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private cacheReadMoreVersion(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 185
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v9

    .line 186
    invoke-virtual {p1}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v10

    .line 187
    invoke-virtual {v9, v10}, Lcom/google/glass/html/PagedWebViewCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

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
    :cond_0
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 166
    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->setSelected(Z)V

    .line 168
    if-eqz p1, :cond_3

    .line 169
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 170
    sget v1, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/html/PagedWebView;

    .line 172
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getBundleCoverStatus()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    :cond_0
    move v2, v4

    .line 174
    :goto_0
    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtmlReadMore()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {v1}, Lcom/google/glass/html/PagedWebView;->getNumPages()I

    move-result v1

    if-le v1, v4, :cond_2

    :cond_1
    move v3, v4

    .line 177
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 178
    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->cacheReadMoreVersion(Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;)V

    .line 181
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 173
    goto :goto_0
.end method

.method public startRendering(Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V
    .locals 12

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 54
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 55
    invoke-virtual {v9}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 56
    sget v0, Lcom/google/glass/common/R$id;->tag_html_item_content_sized_listener:I

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;

    .line 60
    invoke-static {}, Lcom/google/glass/html/PagedWebViewCacheProvider;->getInstance()Lcom/google/glass/html/PagedWebViewCacheProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebViewCacheProvider;->get()Lcom/google/glass/html/PagedWebViewCache;

    move-result-object v0

    .line 61
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/html/PagedWebViewCache;->generateKey(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Lcom/google/glass/html/PagedWebViewCache$Key;

    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Lcom/google/glass/html/PagedWebViewCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    .line 63
    if-nez v0, :cond_4

    const/4 v2, 0x1

    .line 64
    :goto_0
    if-eqz v2, :cond_6

    .line 66
    new-instance v0, Lcom/google/glass/html/PagedWebView;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 67
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    invoke-direct {v0, v3, v2}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    .line 69
    sget v2, Lcom/google/glass/common/R$id;->tag_html_item_footer_right_margin:I

    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    const/4 v6, 0x0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v6, Lcom/google/glass/timeline/ui/HtmlItemView$1;

    invoke-direct {v6, p0, p1}, Lcom/google/glass/timeline/ui/HtmlItemView$1;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 83
    :cond_0
    const/4 v7, 0x0

    .line 84
    if-eqz p1, :cond_1

    .line 85
    new-instance v7, Lcom/google/glass/timeline/ui/HtmlItemView$2;

    invoke-direct {v7, p0, p1}, Lcom/google/glass/timeline/ui/HtmlItemView$2;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;)V

    .line 94
    :cond_1
    invoke-virtual {v9}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtml()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const/4 v5, 0x0

    .line 97
    if-eqz v10, :cond_2

    .line 98
    new-instance v5, Lcom/google/glass/timeline/ui/HtmlItemView$3;

    invoke-direct {v5, p0, v10, v1}, Lcom/google/glass/timeline/ui/HtmlItemView$3;-><init>(Lcom/google/glass/timeline/ui/HtmlItemView;Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 110
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 135
    :cond_3
    :goto_1
    sget v1, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 136
    sget v1, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Loading HTML view, claiming paged webview: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 138
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 137
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->bringToFront()V

    .line 145
    return-void

    .line 63
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    :cond_5
    sget-object v3, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Using pre-processed html for: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-virtual {v9}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtml()Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 119
    if-eqz v10, :cond_3

    .line 120
    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v2, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 121
    invoke-virtual {v9}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getProcessedHtmlReadMore()Z

    move-result v1

    .line 120
    invoke-interface {v10, v2, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_1

    .line 126
    :cond_6
    sget-object v2, Lcom/google/glass/timeline/ui/HtmlItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Cache hit for item %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->getNumPages()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    const/4 v2, 0x1

    .line 130
    :goto_2
    if-eqz v10, :cond_3

    .line 131
    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, v1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v10, v3, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    goto :goto_1

    .line 127
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public stopRendering()V
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 151
    sget v0, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/HtmlItemView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    .line 152
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
    sget v0, Lcom/google/glass/common/R$id;->tag_paged_webview:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/ui/HtmlItemView;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method
