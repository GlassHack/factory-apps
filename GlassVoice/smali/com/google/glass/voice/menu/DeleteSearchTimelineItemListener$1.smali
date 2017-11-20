.class Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;
.super Ljava/lang/Object;
.source "DeleteSearchTimelineItemListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->sendDeleteSearchRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;

.field final synthetic val$requestData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;->this$0:Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;

    iput-object p2, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;->val$requestData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 99
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 100
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "https://history.google.com/history/api/delete"

    invoke-direct {v3, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    iget-object v7, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;->val$requestData:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    iget-object v6, p0, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener$1;->this$0:Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;

    iget-object v6, v6, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const-string v7, "oauth2:https://www.googleapis.com/auth/webhistory"

    invoke-interface {v6, v7, v10}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "loginOauth":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    .end local v2    # "loginOauth":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "unsupported encoding of delete request"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "loginOauth":Ljava/lang/String;
    :cond_1
    const-string v7, "Authorization"

    const-string v8, "Bearer "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v3, v7, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v6, "X-Developer-Key"

    const-string v7, "229668747847.apps.googleusercontent.com"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :try_start_1
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 122
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 123
    .local v5, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 124
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid response from server: "

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "status":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/menu/DeleteSearchTimelineItemListener;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Exception sending delete request"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "status":Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
