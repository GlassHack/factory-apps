.class public final Lcom/google/android/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private final a:Lcom/google/android/g/a;

.field private final b:Lcom/google/android/g/h;

.field private final c:Landroid/content/ContentResolver;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/g/f;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/f/a;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/f/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/g/f;->e:Ljava/lang/ThreadLocal;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz p3, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/g/a;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/g/f;->a:Lcom/google/android/g/a;

    .line 148
    new-instance v0, Lcom/google/android/g/h;

    iget-object v1, p0, Lcom/google/android/g/f;->a:Lcom/google/android/g/a;

    invoke-direct {v0, p0, v1, p4, v6}, Lcom/google/android/g/h;-><init>(Lcom/google/android/g/f;Lcom/google/android/g/a;Lcom/google/android/f/a;B)V

    iput-object v0, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/g/f;->c:Landroid/content/ContentResolver;

    .line 150
    iput-object p2, p0, Lcom/google/android/g/f;->d:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/g/f;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getSchemeNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 159
    instance-of v2, v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v2, :cond_1

    .line 160
    new-instance v2, Lcom/google/android/g/j;

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {v2, p0, v1, v6}, Lcom/google/android/g/j;-><init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/LayeredSocketFactory;B)V

    move-object v1, v2

    .line 164
    :goto_1
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v5}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v5

    invoke-direct {v2, v0, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v2, Lcom/google/android/g/k;

    invoke-direct {v2, p0, v1, v6}, Lcom/google/android/g/k;-><init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/SocketFactory;B)V

    move-object v1, v2

    goto :goto_1

    .line 166
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/g/f;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/g/f;->e:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 18

    .prologue
    .line 221
    const/4 v15, -0x1

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/g/f;->e:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/g/f;->c:Landroid/content/ContentResolver;

    const-string v3, "http_stats"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 232
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 233
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/g/h;->a(Lcom/google/android/g/h;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 236
    if-nez v14, :cond_1

    const/4 v3, 0x0

    .line 237
    :goto_0
    if-eqz v3, :cond_0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 241
    sub-long v10, v12, v16

    .line 242
    new-instance v2, Lcom/google/android/g/b/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/g/f;->d:Ljava/lang/String;

    invoke-direct/range {v2 .. v13}, Lcom/google/android/g/b/a;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V

    .line 245
    invoke-interface {v14, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    move-object v3, v14

    .line 251
    :goto_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 259
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v16

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/g/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    if-ltz v4, :cond_3

    const/4 v2, 0x1

    .line 263
    :goto_2
    const v5, 0x318fa

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/g/f;->d:Ljava/lang/String;

    aput-object v6, v8, v4

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {v5, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    :goto_3
    return-object v3

    .line 236
    :cond_1
    :try_start_2
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    goto :goto_0

    .line 248
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/g/h;->a(Lcom/google/android/g/h;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 262
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 264
    :catch_0
    move-exception v2

    .line 265
    const-string v4, "GoogleHttpClient"

    const-string v5, "Error recording stats"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 258
    :catchall_0
    move-exception v2

    .line 259
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/g/f;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_4
    const/4 v3, 0x0

    .line 263
    const v6, 0x318fa

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/g/f;->d:Ljava/lang/String;

    aput-object v5, v7, v4

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    :goto_4
    throw v2

    .line 264
    :catch_1
    move-exception v3

    .line 265
    const-string v4, "GoogleHttpClient"

    const-string v5, "Error recording stats"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2

    .prologue
    .line 506
    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 514
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 516
    return-object v0

    .line 510
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2

    .prologue
    .line 317
    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 325
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 327
    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/g/f;->a:Lcom/google/android/g/a;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/g/a;->a(Ljava/lang/String;I)V

    .line 398
    return-void
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 380
    iget-object v6, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v3

    new-instance v0, Lcom/google/android/g/i;

    iget-object v1, v6, Lcom/google/android/g/h;->c:Lcom/google/android/g/f;

    iget-object v4, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    const/4 v5, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/g/i;-><init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;B)V

    iget-object v1, v6, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    iget-object v2, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v3, v2}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/g/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 387
    iget-object v6, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v3

    new-instance v0, Lcom/google/android/g/i;

    iget-object v1, v6, Lcom/google/android/g/h;->c:Lcom/google/android/g/f;

    iget-object v4, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    const/4 v5, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/g/i;-><init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;B)V

    iget-object v1, v6, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    iget-object v2, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v3, v2}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/google/android/g/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 366
    iget-object v6, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    new-instance v0, Lcom/google/android/g/i;

    iget-object v1, v6, Lcom/google/android/g/h;->c:Lcom/google/android/g/f;

    iget-object v4, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/g/i;-><init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;B)V

    iget-object v1, v6, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    iget-object v2, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {p1, v2}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/g/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 373
    iget-object v6, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    new-instance v0, Lcom/google/android/g/i;

    iget-object v1, v6, Lcom/google/android/g/h;->c:Lcom/google/android/g/f;

    iget-object v4, v6, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/g/i;-><init>(Lcom/google/android/g/f;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;B)V

    iget-object v1, v6, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    invoke-virtual {v1, p1, v0, p3}, Lcom/google/android/g/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v3, v4}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/g/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v1, v2, v0}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lcom/google/android/f/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/g/f;->b:Lcom/google/android/g/h;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/g/h;->a:Lcom/google/android/g/a;

    invoke-static {p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v3, v4}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/f/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/google/android/g/a;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/g/h;->b:Lcom/google/android/f/a;

    invoke-static {v1, v2, v0}, Lcom/google/android/f/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lcom/google/android/f/a;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/g/f;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5

    .prologue
    .line 280
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/google/android/g/f;->c:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/google/android/g/b/c;->a(Landroid/content/ContentResolver;)Lcom/google/android/g/b/c;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Lcom/google/android/g/b/c;->a(Ljava/lang/String;)Lcom/google/android/g/b/d;

    move-result-object v1

    .line 284
    invoke-virtual {v1, v0}, Lcom/google/android/g/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    if-nez v2, :cond_0

    .line 287
    const-string v2, "GoogleHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Blocked by "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/g/b/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Lcom/google/android/g/g;

    invoke-direct {v0, v1}, Lcom/google/android/g/g;-><init>(Lcom/google/android/g/b/d;)V

    throw v0

    .line 289
    :cond_0
    if-ne v2, v0, :cond_1

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 294
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    invoke-static {p1}, Lcom/google/android/g/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 301
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 305
    invoke-direct {p0, v1, p2}, Lcom/google/android/g/f;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad URL from rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/g/b/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/g/f;->a:Lcom/google/android/g/a;

    invoke-virtual {v0}, Lcom/google/android/g/a;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public final getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/g/f;->a:Lcom/google/android/g/a;

    invoke-virtual {v0}, Lcom/google/android/g/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
