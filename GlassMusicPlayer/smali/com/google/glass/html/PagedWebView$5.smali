.class Lcom/google/glass/html/PagedWebView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;

.field final synthetic val$resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$5;->this$0:Lcom/google/glass/html/PagedWebView;

    iput-object p2, p0, Lcom/google/glass/html/PagedWebView$5;->val$resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 537
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$5;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$5;->val$resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$5;->val$resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    invoke-interface {v0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    goto :goto_0
.end method
