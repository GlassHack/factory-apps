.class public abstract Lcom/google/android/youtube/core/converter/http/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/b;


# static fields
.field public static final a:Lcom/google/android/youtube/core/converter/http/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/youtube/core/converter/http/bf;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/bf;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/converter/http/be;->a:Lcom/google/android/youtube/core/converter/http/be;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    .prologue
    .line 88
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/be;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty response body"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/converter/http/be;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;
    .locals 3

    .prologue
    .line 92
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 94
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public b(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/be;->c(Lorg/apache/http/HttpResponse;)V

    .line 55
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/converter/http/be;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/android/youtube/core/converter/http/be;->d(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/be;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    throw v0

    .line 84
    :cond_0
    return-void
.end method
