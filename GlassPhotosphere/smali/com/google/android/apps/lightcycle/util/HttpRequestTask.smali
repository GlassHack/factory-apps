.class public Lcom/google/android/apps/lightcycle/util/HttpRequestTask;
.super Landroid/os/AsyncTask;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Ljava/lang/Integer;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final context:Landroid/content/Context;

.field private final parseResponseAsString:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private responseContentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parseResponseAsString"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->responseContentString:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->context:Landroid/content/Context;

    .line 45
    iput-boolean p2, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->parseResponseAsString:Z

    .line 46
    return-void
.end method

.method private static getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 10
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v7, 0x0

    .line 104
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 105
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 106
    .local v4, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v6, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v8, 0x1000

    new-array v0, v8, [C

    .line 110
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .line 111
    .local v5, "len":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-ltz v5, :cond_0

    .line 112
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 115
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-object v7

    .line 114
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_1

    .line 118
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, [Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "params"    # [Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 62
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 64
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 65
    .local v2, "response":Lorg/apache/http/HttpResponse;
    iget-boolean v3, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->parseResponseAsString:Z

    if-eqz v3, :cond_0

    .line 66
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->responseContentString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    sget-object v3, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "result"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v1, "HTTP request done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->responseContentString:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 51
    sget-object v0, Lcom/google/android/apps/lightcycle/util/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v1, "HTTP request in progess..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public processUploadResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "responseContentString"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method
