.class final Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;
.super Ljava/lang/Object;
.source "SetDescriptionTask.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->setDescriptionAsync(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

.field final synthetic val$photoUrls:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->val$photoUrls:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 6
    .param p1, "shortUrl"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<entry xmlns=\'http://www.w3.org/2005/Atom\'><title>panorama.jpg</title><summary>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</summary>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <category scheme=\"http://schemas.google.com/g/2005#kind\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " term=\"http://schemas.google.com/photos/2007#photo\"/></entry>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "metaData":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->val$photoUrls:Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->editUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 49
    .local v2, "request":Lorg/apache/http/client/methods/HttpPut;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v3, "Content-Type"

    const-string v4, "application/atom+xml"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GoogleLogin auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v5, v5, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->authToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;-><init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Setting summary ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
