.class Lcom/google/glass/html/ResourceLoadingWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/google/glass/deferredcontent/DeferredInputStream;)V
    .locals 0

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
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 204
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->isWebViewDeallocated(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "WebView is deallocated; canceling load: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error canceling load of: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Running load task asynchronously for: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$url:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$finalData:Lcom/google/glass/deferredcontent/DeferredInputStream;

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->createLoadingTask()Lcom/google/glass/deferredcontent/LoadingTask;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/deferredcontent/LoadingTask;)V

    goto :goto_0
.end method
