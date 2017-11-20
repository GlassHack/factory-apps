.class public final Lcom/google/android/youtube/core/converter/http/au;
.super Lcom/google/android/youtube/core/converter/http/bq;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/utils/m;

.field public final b:Lcom/google/android/youtube/core/async/GDataRequest$Version;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/m;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/bq;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V

    .line 33
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/m;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->a:Lcom/google/android/youtube/core/utils/m;

    .line 34
    const-string v0, "gdataVersion can\'t be empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->b:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/m;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/converter/http/bq;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V

    .line 41
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/m;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->a:Lcom/google/android/youtube/core/utils/m;

    .line 42
    const-string v0, "gdataVersion can\'t be empty"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->b:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 43
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/converter/http/bq;->b(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 49
    const-string v1, "GData-Version"

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/au;->b:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method private b(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->a:Lcom/google/android/youtube/core/utils/m;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    .line 58
    :goto_0
    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    const-string v1, "on-behalf-of"

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/au;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/au;->a:Lcom/google/android/youtube/core/utils/m;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/m;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/au;->b(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/au;->a(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
