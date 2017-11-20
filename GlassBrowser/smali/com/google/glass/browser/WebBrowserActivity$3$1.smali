.class Lcom/google/glass/browser/WebBrowserActivity$3$1;
.super Ljava/lang/Object;
.source "WebBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/WebBrowserActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/browser/WebBrowserActivity$3;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/browser/WebBrowserActivity$3;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$3$1;->this$1:Lcom/google/glass/browser/WebBrowserActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$3$1;->this$1:Lcom/google/glass/browser/WebBrowserActivity$3;

    iget-object v0, v0, Lcom/google/glass/browser/WebBrowserActivity$3;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v0, v0, Lcom/google/glass/browser/WebBrowserActivity;->webViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Lcom/google/glass/browser/WebBrowserActivity$3$1;->this$1:Lcom/google/glass/browser/WebBrowserActivity$3;

    iget-object v1, v1, Lcom/google/glass/browser/WebBrowserActivity$3;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    iget-object v1, v1, Lcom/google/glass/browser/WebBrowserActivity;->preloadedView:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .line 537
    invoke-virtual {v1}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->getWebBrowser()Lcom/google/glass/browser/WebBrowserWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/browser/WebBrowserWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/browser/WebBrowserActivity$3$1;->this$1:Lcom/google/glass/browser/WebBrowserActivity$3;

    iget-object v2, v2, Lcom/google/glass/browser/WebBrowserActivity$3;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v2}, Lcom/google/glass/browser/WebBrowserActivity;->access$2000(Lcom/google/glass/browser/WebBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 538
    return-void
.end method
