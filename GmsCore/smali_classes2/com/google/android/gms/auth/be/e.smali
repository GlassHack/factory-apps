.class public final Lcom/google/android/gms/auth/be/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/auth/be/h;

.field private final b:Lcom/google/android/gms/auth/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/a/c;Lcom/google/android/gms/auth/be/h;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/a/c;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/e;->b:Lcom/google/android/gms/auth/a/c;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/h;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/e;->a:Lcom/google/android/gms/auth/be/h;

    .line 39
    return-void
.end method

.method private static a(Lcom/google/protobuf/nano/j;)Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/protobuf/nano/j;->e()I

    move-result v0

    new-array v0, v0, [B

    .line 124
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/b;->a([BII)Lcom/google/protobuf/nano/b;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 126
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 127
    const-string v0, "application/octet-stream"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 128
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)[B
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/auth/be/e;->a:Lcom/google/android/gms/auth/be/h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/auth/be/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/auth/be/e;->a:Lcom/google/android/gms/auth/be/h;

    invoke-interface {p3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    const-string v4, "d2dClient"

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/auth/be/h;->a(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lorg/apache/http/Header;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/setup/d2d/b/b;)Lcom/google/android/gms/auth/setup/d2d/b/c;
    .locals 5

    .prologue
    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/be/e;->a(Lcom/google/protobuf/nano/j;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/auth/be/e;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v3

    .line 54
    const/4 v1, 0x0

    .line 56
    :try_start_1
    sget-object v0, Lcom/google/android/gms/auth/b/a;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/gms/auth/be/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 60
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/c;-><init>()V

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/b/c;
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "Failed to encode proto"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/c;-><init>()V

    .line 48
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 49
    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 50
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    const-string v2, "D2DClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse protobuf from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/c;-><init>()V

    .line 64
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 65
    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 66
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0

    .line 68
    :catch_2
    move-exception v0

    .line 69
    const-string v1, "D2DClient"

    const-string v2, "Network error calling getBootstrapChallenges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/c;-><init>()V

    .line 71
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 72
    const/4 v2, 0x3

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 73
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/b/k;)Lcom/google/android/gms/auth/setup/d2d/b/l;
    .locals 5

    .prologue
    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/be/e;->a(Lcom/google/protobuf/nano/j;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/be/e;->b:Lcom/google/android/gms/auth/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/a/c;->a()Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;->a()Ljava/lang/String;

    move-result-object v3

    .line 93
    const/4 v1, 0x0

    .line 95
    :try_start_1
    sget-object v0, Lcom/google/android/gms/auth/b/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/gms/auth/be/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 99
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/l;-><init>()V

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/b/l;
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Failed to encode proto"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/l;-><init>()V

    .line 87
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 88
    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 89
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    const-string v2, "D2DClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse protobuf from server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/l;-><init>()V

    .line 104
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 105
    const/4 v2, 0x2

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 106
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 109
    const-string v1, "D2DClient"

    const-string v2, "Network error calling exchangeBootstrapCredentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/l;-><init>()V

    .line 112
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    .line 113
    const/4 v2, 0x3

    iput v2, v1, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    .line 114
    iput-object v1, v0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    goto :goto_0
.end method
