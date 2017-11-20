.class Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;
    .param p2, "x0"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "x1"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;->this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 163
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    .line 165
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v1, "http.cookiespec-registry"

    .line 168
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 166
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v1, "http.auth.credentials-provider"

    .line 171
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 169
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 152
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->access$100()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 153
    new-instance v1, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;->this$0:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 155
    return-object v0
.end method
