.class public final Lcom/android/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/d/j;


# static fields
.field protected static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field protected final b:Lcom/android/d/a/j;

.field protected final c:Lcom/android/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/d/ab;->b:Z

    sput-boolean v0, Lcom/android/d/a/a;->a:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcom/android/d/a/a;->d:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcom/android/d/a/a;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/android/d/a/j;)V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/android/d/a/b;

    sget v1, Lcom/android/d/a/a;->e:I

    invoke-direct {v0, v1}, Lcom/android/d/a/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/d/a/a;-><init>(Lcom/android/d/a/j;Lcom/android/d/a/b;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/android/d/a/j;Lcom/android/d/a/b;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/d/a/a;->b:Lcom/android/d/a/j;

    .line 79
    iput-object p2, p0, Lcom/android/d/a/a;->c:Lcom/android/d/a/b;

    .line 80
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 244
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 245
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lcom/android/d/p;Lcom/android/d/aa;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/android/d/p;->o()Lcom/android/d/x;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/android/d/p;->n()I

    move-result v1

    .line 179
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/d/x;->a(Lcom/android/d/aa;)V
    :try_end_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(Ljava/lang/String;)V

    .line 186
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/d/p;->a(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    new-instance v2, Lcom/android/d/a/l;

    iget-object v0, p0, Lcom/android/d/a/a;->c:Lcom/android/d/a/b;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/android/d/a/l;-><init>(Lcom/android/d/a/b;I)V

    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/d/y;

    invoke-direct {v0}, Lcom/android/d/y;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v0

    .line 228
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/android/d/a/a;->c:Lcom/android/d/a/b;

    invoke-virtual {v3, v1}, Lcom/android/d/a/b;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/android/d/a/l;->close()V

    throw v0

    .line 219
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/d/a/a;->c:Lcom/android/d/a/b;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/android/d/a/b;->a(I)[B

    move-result-object v1

    .line 221
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 222
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/d/a/l;->write([BII)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v2}, Lcom/android/d/a/l;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 228
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 234
    :goto_2
    iget-object v3, p0, Lcom/android/d/a/a;->c:Lcom/android/d/a/b;

    invoke-virtual {v3, v1}, Lcom/android/d/a/b;->a([B)V

    .line 235
    invoke-virtual {v2}, Lcom/android/d/a/l;->close()V

    return-object v0

    .line 232
    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/d/ab;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/d/p;)Lcom/android/d/m;
    .locals 12

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 86
    :goto_0
    const/4 v3, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-virtual {p1}, Lcom/android/d/p;->e()Lcom/android/d/c;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/d/c;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "If-None-Match"

    iget-object v8, v4, Lcom/android/d/c;->b:Ljava/lang/String;

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v8, v4, Lcom/android/d/c;->c:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    new-instance v5, Ljava/util/Date;

    iget-wide v8, v4, Lcom/android/d/c;->c:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v4, "If-Modified-Since"

    invoke-static {v5}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    iget-object v4, p0, Lcom/android/d/a/a;->b:Lcom/android/d/a/j;

    invoke-interface {v4, p1, v0}, Lcom/android/d/a/j;->a(Lcom/android/d/p;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 94
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 95
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 97
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/android/d/a/a;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v1

    .line 99
    const/16 v0, 0x130

    if-ne v5, v0, :cond_3

    .line 100
    new-instance v0, Lcom/android/d/m;

    const/16 v5, 0x130

    invoke-virtual {p1}, Lcom/android/d/p;->e()Lcom/android/d/c;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    const/4 v8, 0x1

    invoke-direct {v0, v5, v4, v1, v8}, Lcom/android/d/m;-><init>(I[BLjava/util/Map;Z)V

    .line 121
    :goto_2
    return-object v0

    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/android/d/p;->e()Lcom/android/d/c;

    move-result-object v4

    iget-object v4, v4, Lcom/android/d/c;->a:[B

    goto :goto_1

    .line 106
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 107
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/d/a/a;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 115
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 116
    sget-boolean v0, Lcom/android/d/a/a;->a:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/d/a/a;->d:I

    int-to-long v10, v0

    cmp-long v0, v8, v10

    if-lez v0, :cond_5

    :cond_4
    const-string v10, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v0

    const/4 v8, 0x2

    if-eqz v2, :cond_8

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    aput-object v0, v11, v8

    const/4 v0, 0x3

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/android/d/p;->o()Lcom/android/d/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/d/x;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v0

    invoke-static {v10, v11}, Lcom/android/d/ab;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_5
    const/16 v0, 0xc8

    if-lt v5, v0, :cond_6

    const/16 v0, 0x12b

    if-le v5, v0, :cond_9

    .line 119
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 123
    :catch_0
    move-exception v0

    const-string v0, "socket"

    new-instance v1, Lcom/android/d/z;

    invoke-direct {v1}, Lcom/android/d/z;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/d/a/a;->a(Ljava/lang/String;Lcom/android/d/p;Lcom/android/d/aa;)V

    goto/16 :goto_0

    .line 111
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    new-array v2, v0, [B

    goto :goto_3

    .line 116
    :cond_8
    const-string v0, "null"

    goto :goto_4

    .line 121
    :cond_9
    new-instance v0, Lcom/android/d/m;

    const/4 v4, 0x0

    invoke-direct {v0, v5, v2, v1, v4}, Lcom/android/d/m;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 125
    :catch_1
    move-exception v0

    const-string v0, "connection"

    new-instance v1, Lcom/android/d/z;

    invoke-direct {v1}, Lcom/android/d/z;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/android/d/a/a;->a(Ljava/lang/String;Lcom/android/d/p;Lcom/android/d/aa;)V

    goto/16 :goto_0

    .line 126
    :catch_2
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/d/p;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catch_3
    move-exception v0

    .line 129
    if-eqz v3, :cond_b

    .line 132
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 136
    const-string v3, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/d/p;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/android/d/ab;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    if-eqz v2, :cond_d

    .line 138
    new-instance v3, Lcom/android/d/m;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/android/d/m;-><init>(I[BLjava/util/Map;Z)V

    .line 140
    const/16 v1, 0x191

    if-eq v0, v1, :cond_a

    const/16 v1, 0x193

    if-ne v0, v1, :cond_c

    .line 142
    :cond_a
    const-string v0, "auth"

    new-instance v1, Lcom/android/d/a;

    invoke-direct {v1, v3}, Lcom/android/d/a;-><init>(Lcom/android/d/m;)V

    invoke-static {v0, p1, v1}, Lcom/android/d/a/a;->a(Ljava/lang/String;Lcom/android/d/p;Lcom/android/d/aa;)V

    goto/16 :goto_0

    .line 134
    :cond_b
    new-instance v1, Lcom/android/d/n;

    invoke-direct {v1, v0}, Lcom/android/d/n;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_c
    new-instance v0, Lcom/android/d/y;

    invoke-direct {v0, v3}, Lcom/android/d/y;-><init>(Lcom/android/d/m;)V

    throw v0

    .line 149
    :cond_d
    new-instance v0, Lcom/android/d/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/d/l;-><init>(B)V

    throw v0
.end method
