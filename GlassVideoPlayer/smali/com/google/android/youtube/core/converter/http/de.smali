.class public final Lcom/google/android/youtube/core/converter/http/de;
.super Lcom/google/android/youtube/core/converter/http/be;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    return-void
.end method

.method private d(Lorg/apache/http/HttpResponse;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/de;->c(Lorg/apache/http/HttpResponse;)V

    .line 24
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v1, "Location header not present"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/de;->d(Lorg/apache/http/HttpResponse;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
