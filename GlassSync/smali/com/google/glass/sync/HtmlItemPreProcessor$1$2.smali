.class Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;
.super Ljava/lang/Object;
.source "HtmlItemPreProcessor.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;


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

.field final synthetic val$currentItemNumPages:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$webView:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/HtmlItemPreProcessor$1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->this$1:Lcom/google/glass/sync/HtmlItemPreProcessor$1;

    iput-object p2, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->val$currentItemNumPages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 3
    .param p1, "pages"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->isDoneLoadingResources()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->val$currentItemNumPages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/sync/HtmlItemPreProcessor$1$2;->val$webView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/PagedWebView;

    const-string v1, "window[\'INNER_HTML_INTERFACE\'][\'bodyInnerHtml\'](document.getElementsByTagName(\'body\')[0].innerHTML);"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/html/PagedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 154
    :cond_0
    return-void
.end method
