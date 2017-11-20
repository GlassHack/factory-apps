.class Lcom/google/glass/html/ResourceLoadingWebViewClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$700(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ImageUrlHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/html/ImageUrlHelper;->getImageDownloadParams(Ljava/lang/String;)Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;

    move-result-object v5

    .line 361
    new-instance v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->val$imageUrl:Ljava/lang/String;

    iget v3, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    iget v4, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    iget v5, v5, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;III)V

    .line 363
    invoke-virtual {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->checkCache()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 370
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onContentLoaded()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-interface {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    .line 376
    return-void
.end method
