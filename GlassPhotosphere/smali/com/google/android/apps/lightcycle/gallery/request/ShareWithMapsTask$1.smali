.class Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;
.super Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.source "ShareWithMapsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;

.field final synthetic val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;Landroid/content/Context;ZLcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Z

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;

    iput-object p4, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;->val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseContentString"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alleycat response ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/request/ShareWithMapsTask$1;->val$progressCallback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onDone(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
