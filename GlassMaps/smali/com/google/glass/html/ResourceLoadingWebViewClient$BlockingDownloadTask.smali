.class Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;
.super Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;III)V
    .locals 6

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .line 70
    invoke-static {p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    .line 71
    return-void
.end method


# virtual methods
.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->bindContent(Ljava/lang/String;)V

    return-void
.end method

.method protected bindContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
