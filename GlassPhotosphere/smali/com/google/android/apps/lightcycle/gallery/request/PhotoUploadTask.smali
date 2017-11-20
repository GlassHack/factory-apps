.class public Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;
.super Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.source "PhotoUploadTask.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final successCallback:Lcom/google/android/apps/lightcycle/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/util/Callback;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "successCallback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;-><init>(Landroid/content/Context;Z)V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->successCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    .line 37
    return-void
.end method


# virtual methods
.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseXml"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 49
    const-string v0, "I/O Error: Could not upload photo"

    .line 69
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 70
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    if-eqz v0, :cond_2

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->successCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-interface {v2, v4}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->successCallback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-static {p2}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->parseFromXml(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 76
    return-void

    .line 51
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 52
    .local v1, "statusCode":I
    const/16 v2, 0x191

    if-eq v1, v2, :cond_4

    const/16 v2, 0x193

    if-eq v1, v2, :cond_4

    const/16 v2, 0x195

    if-ne v1, v2, :cond_5

    .line 55
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error returned by the Picasa Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget v2, Lcom/google/android/apps/lightcycle/R$string;->authentication_error:I

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/request/PhotoUploadTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/apps/lightcycle/util/Dialogs;->showDialog(ILjava/lang/CharSequence;Landroid/content/Context;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 63
    :cond_5
    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error response received from the Picasa Server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    goto :goto_0
.end method
