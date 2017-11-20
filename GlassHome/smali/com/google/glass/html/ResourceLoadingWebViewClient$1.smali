.class Lcom/google/glass/html/ResourceLoadingWebViewClient$1;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 204
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->isWebViewDeallocated(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "WebView is deallocated; canceling load: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error canceling load of: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Running load task asynchronously for: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;->createLoadingTask()Lcom/google/glass/deferredcontent/LoadingTask;

    move-result-object v1

    .line 216
    .local v1, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0
.end method
