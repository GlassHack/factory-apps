.class Lcom/google/glass/html/ResourceLoadingWebViewClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 385
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 386
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 387
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$800(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v1

    .line 388
    if-eqz v1, :cond_0

    .line 389
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 406
    :goto_0
    return-object v0

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$800(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/o;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 394
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 395
    if-eqz v0, :cond_1

    .line 396
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 400
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 406
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :catch_1
    move-exception v0

    .line 402
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Map rendering error, uri: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onContentLoaded()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-interface {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    .line 412
    return-void
.end method
