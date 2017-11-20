.class public abstract Lcom/google/android/youtube/core/converter/http/av;
.super Lcom/google/android/youtube/core/converter/http/fo;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    .line 33
    const-string v1, "/errors"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/aw;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/aw;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 39
    const-string v1, "/errors/error"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ax;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ax;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 51
    const-string v1, "/errors/error/domain"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ay;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ay;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 57
    const-string v1, "/errors/error/code"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/az;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/az;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 63
    const-string v1, "/errors/error/location"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ba;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/ba;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 69
    const-string v1, "/errors/error/internalReason"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/bb;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/bb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/p;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/youtube/core/converter/http/av;->c:Lcom/google/android/youtube/core/converter/c;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/fo;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    .line 79
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/converter/l;)Lcom/google/android/youtube/core/converter/http/av;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/youtube/core/converter/http/bc;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/converter/http/bc;-><init>(Lcom/google/android/youtube/core/converter/l;)V

    return-object v0
.end method

.method private static a(ILorg/apache/http/Header;)Z
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x190

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_1

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 112
    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;
    .locals 5

    .prologue
    .line 83
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 85
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/converter/http/av;->a(ILorg/apache/http/Header;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/av;->b:Lcom/google/android/youtube/core/converter/l;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/av;->c:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/youtube/core/converter/l;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/google/android/youtube/core/async/GDataResponseException;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/async/GDataResponseException;-><init>(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 108
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 103
    :cond_0
    const/16 v0, 0x191

    if-ne v2, v0, :cond_1

    const-string v0, "NoLinkedYouTubeAccount"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataResponseException;->createYouTubeSignupRequired(ILjava/lang/String;)Lcom/google/android/youtube/core/async/GDataResponseException;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/converter/http/fo;->a(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/HttpResponseException;

    move-result-object v0

    goto :goto_0
.end method
