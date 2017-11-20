.class Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;
.super Landroid/os/AsyncTask;
.source "PanoramaViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->fetchSharedPanoFile(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

.field final synthetic val$mediumSizePanoUrl:Ljava/lang/String;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaViewActivity;Ljava/lang/String;Ljava/io/File;Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->this$0:Lcom/google/android/apps/lightcycle/PanoramaViewActivity;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$mediumSizePanoUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$tempFile:Ljava/io/File;

    iput-object p4, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 423
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$mediumSizePanoUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 425
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$tempFile:Ljava/io/File;

    invoke-static {v2, v3}, Lcom/google/android/apps/lightcycle/util/FileUtil;->storeFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 426
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 432
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 429
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 419
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaViewActivity$6;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 438
    return-void
.end method
