.class Lcom/google/glass/html/PagedWebView$5;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;

.field final synthetic val$resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebView;

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
    .param p1, "client"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

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
