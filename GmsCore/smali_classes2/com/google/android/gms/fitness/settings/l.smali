.class public final Lcom/google/android/gms/fitness/settings/l;
.super Lcom/google/android/gms/fitness/settings/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/fitness/settings/a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/settings/m;)Lcom/google/android/gms/fitness/settings/n;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v2, "https"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "www.googleapis.com"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "/oauth2/v3/RevokeToken"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "revocation_handle"

    iget-object v4, p1, Lcom/google/android/gms/fitness/settings/m;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OAuth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/google/android/gms/fitness/settings/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/settings/l;->a(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/google/android/gms/fitness/settings/n;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/settings/n;-><init>()V

    .line 46
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/gms/fitness/settings/n;->c:Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    return-object v1

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/google/android/gms/fitness/settings/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/settings/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    new-instance v1, Lcom/google/android/gms/fitness/settings/d;

    invoke-direct {v1, v0}, Lcom/google/android/gms/fitness/settings/d;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/gms/fitness/settings/m;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/settings/l;->a(Lcom/google/android/gms/fitness/settings/m;)Lcom/google/android/gms/fitness/settings/n;

    move-result-object v0

    return-object v0
.end method
