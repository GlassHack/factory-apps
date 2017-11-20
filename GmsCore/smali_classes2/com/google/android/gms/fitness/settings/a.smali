.class public abstract Lcom/google/android/gms/fitness/settings/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/settings/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method protected static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    array-length v0, v1

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 35
    :goto_0
    if-lez v0, :cond_0

    .line 36
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    array-length v0, v1

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/settings/a;->b(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;

    move-result-object v2

    .line 48
    iput-wide v0, v2, Lcom/google/android/gms/fitness/settings/c;->b:J

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    iput-wide v0, v2, Lcom/google/android/gms/fitness/settings/c;->a:J

    .line 50
    return-object v2
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    .line 63
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 67
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/settings/a;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/google/android/gms/fitness/settings/b;)Lcom/google/android/gms/fitness/settings/c;
.end method
