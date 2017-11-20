.class Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;
.super Landroid/webkit/WebViewClient;
.source "WebBrowserPreloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;-><init>(Ljava/lang/String;Lcom/google/glass/browser/WebBrowserWebView;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

.field final synthetic val$clock:Lcom/google/glass/time/Clock;

.field final synthetic val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    iput-object p2, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iput-object p3, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$clock:Lcom/google/glass/time/Clock;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 243
    invoke-static {}, Lcom/google/glass/browser/WebBrowserPreloadService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Page preloading finished for url [%s]"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "url"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "time"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$clock:Lcom/google/glass/time/Clock;

    .line 247
    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v6}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$400(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    .line 245
    invoke-static {v2, p2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->LOADED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    iput-object v1, v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 250
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$500(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 251
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 255
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 256
    invoke-static {}, Lcom/google/glass/browser/WebBrowserPreloadService;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to preload url: [%s].  errorCode: [%s] description: [%s]"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p4, v2, v6

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object p3, v2, v8

    .line 256
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v0, p2}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$602(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;I)I

    .line 260
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v0, p3}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$702(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->BROWSER_PRELOAD_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "errorCode"

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "desc"

    aput-object v5, v4, v6

    aput-object p3, v4, v7

    const-string v5, "url"

    aput-object v5, v4, v8

    aput-object p4, v4, v9

    const/4 v5, 0x4

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->val$clock:Lcom/google/glass/time/Clock;

    .line 267
    invoke-interface {v6}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v8}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$400(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 263
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    sget-object v1, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;->FAILED:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    iput-object v1, v0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->state:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$State;

    .line 270
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView$1;->this$0:Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;->access$500(Lcom/google/glass/browser/WebBrowserPreloadService$PreloadedWebBrowserWebView;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 271
    return-void
.end method
