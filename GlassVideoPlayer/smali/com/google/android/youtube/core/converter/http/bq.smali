.class public Lcom/google/android/youtube/core/converter/http/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# static fields
.field private static synthetic a:[I


# instance fields
.field public final c:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

.field public final d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "deviceAuthorizer can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 47
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->c:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 49
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "deviceAuthorizer can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 55
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->c:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 57
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 59
    const-string v0, "contentType can\'t be null or empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/converter/http/bq;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->values()[Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->OAUTH2:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/google/android/youtube/core/converter/http/bq;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/z;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bq;->b(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/z;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->f:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->supportsPayload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content not allowed [method="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/bq;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bq;->a(Lcom/google/android/youtube/core/async/z;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 70
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->c:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    if-eqz v0, :cond_1

    .line 79
    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    const-string v1, "X-GData-Device"

    iget-object v3, p0, Lcom/google/android/youtube/core/converter/http/bq;->c:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-interface {v3, v0}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_3

    .line 87
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/bq;->a()[I

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authType:Lcom/google/android/youtube/core/model/UserAuth$AuthType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/UserAuth$AuthType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported authorization method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleLogin auth=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "Authorization"

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->f:[B

    if-eqz v0, :cond_4

    .line 101
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/z;->f:[B

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bq;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    .line 105
    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 107
    :cond_4
    return-object v2

    .line 93
    :pswitch_1
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/youtube/core/async/z;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
