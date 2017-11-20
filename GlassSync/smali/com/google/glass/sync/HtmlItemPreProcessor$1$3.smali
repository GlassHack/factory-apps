.class Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/HtmlItemPreProcessor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

.field final synthetic val$htmlCallback:Ljava/lang/Object;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

.field final synthetic val$webView:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$htmlCallback:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p5, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/glass/html/PagedWebView;

    iget-object v3, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iget-object v3, v3, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->this$0:Lcom/google/glass/sync/HtmlItemPreProcessor;

    invoke-static {v3}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$100(Lcom/google/glass/sync/HtmlItemPreProcessor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iget-object v4, v4, Lcom/google/glass/sync/HtmlItemPreProcessor$1;->this$0:Lcom/google/glass/sync/HtmlItemPreProcessor;

    invoke-static {v4}, Lcom/google/glass/sync/HtmlItemPreProcessor;->access$200(Lcom/google/glass/sync/HtmlItemPreProcessor;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/glass/html/PagedWebView;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$htmlCallback:Ljava/lang/Object;

    const-string v3, "INNER_HTML_INTERFACE"

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/html/PagedWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$3;->val$pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    move v3, v2

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V

    .line 165
    return-void
.end method
