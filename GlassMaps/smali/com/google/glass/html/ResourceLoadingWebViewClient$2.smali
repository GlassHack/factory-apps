.class Lcom/google/glass/html/ResourceLoadingWebViewClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/deferredcontent/DeferredInputStream$Client;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load()Ljava/io/InputStream;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$400(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$6;->$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult:[I

    iget-object v5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v5}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v7}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    invoke-virtual {v5, v6, v4, v1}, Lcom/google/glass/html/Thumbnailer;->createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 345
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 331
    goto :goto_0

    :cond_1
    move v1, v2

    .line 333
    goto :goto_1

    .line 335
    :pswitch_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    .line 337
    :pswitch_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .line 338
    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v2, v3}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 345
    goto :goto_2

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContentLoaded()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    invoke-interface {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded(Lcom/google/glass/html/ResourceLoadingWebViewClient;)V

    .line 351
    return-void
.end method
