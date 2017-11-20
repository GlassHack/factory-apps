.class public abstract Lcom/google/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected A:Ljava/util/concurrent/BlockingQueue;

.field protected B:I

.field protected C:I

.field protected D:Ljava/lang/Thread;

.field protected E:Ljava/lang/Thread;

.field F:Z

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:J

.field protected K:J

.field protected L:I

.field protected M:I

.field protected N:I

.field protected O:I

.field protected P:I

.field private final a:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:I

.field protected f:Ljava/net/Socket;

.field protected g:I

.field protected volatile h:Z

.field protected i:Z

.field protected j:I

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:I

.field protected final p:Ljava/util/ArrayList;

.field protected q:Ljava/util/List;

.field protected final r:Ljava/util/Map;

.field protected s:Ljavax/net/ssl/SSLSocketFactory;

.field protected t:Z

.field protected u:J

.field protected v:J

.field protected w:Ljava/util/Map;

.field x:Ljava/lang/Class;

.field y:Ljava/lang/reflect/Method;

.field z:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const-string v0, "mtalk.google.com"

    iput-object v0, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    .line 185
    const/16 v0, 0x146c

    iput v0, p0, Lcom/google/b/a/a;->e:I

    .line 217
    iput-boolean v1, p0, Lcom/google/b/a/a;->h:Z

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->a:Ljava/lang/Object;

    .line 223
    iput-boolean v1, p0, Lcom/google/b/a/a;->i:Z

    .line 225
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/b/a/a;->j:I

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/b/a/a;->n:I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    .line 259
    iput-boolean v1, p0, Lcom/google/b/a/a;->t:Z

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->w:Ljava/util/Map;

    .line 280
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    .line 282
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/b/a/a;->B:I

    .line 286
    const v0, 0x36ee80

    iput v0, p0, Lcom/google/b/a/a;->C:I

    .line 291
    iput-boolean v1, p0, Lcom/google/b/a/a;->F:Z

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a;->P:I

    .line 1352
    return-void
.end method

.method private static a(Lcom/google/protobuf/a/b;)I
    .locals 1

    .prologue
    .line 563
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/a/b;->k()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 567
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 415
    iget v0, p0, Lcom/google/b/a/a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 418
    :cond_0
    iput p1, p0, Lcom/google/b/a/a;->P:I

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/b/a/a;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/b/a/a;->K:J

    .line 422
    iget-object v1, p0, Lcom/google/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-nez v0, :cond_1

    .line 424
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 426
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    .line 427
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Closing connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    iput-boolean v5, p0, Lcom/google/b/a/a;->i:Z

    .line 431
    :try_start_2
    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 432
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/b/a/a;->u:J

    .line 435
    iget-object v0, p0, Lcom/google/b/a/a;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 436
    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/google/b/a/a/d;

    invoke-direct {v1}, Lcom/google/b/a/a/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    const-string v0, "Waiting for reader thread to finish"

    invoke-virtual {p0, v0, v4}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    iget-object v0, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 444
    :try_start_3
    iget-object v0, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 450
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/google/b/a/a;->t:Z

    if-eqz v0, :cond_5

    .line 451
    iget-wide v0, p0, Lcom/google/b/a/a;->J:J

    invoke-virtual {p0}, Lcom/google/b/a/a;->l()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/b/a/a;->J:J

    .line 456
    :cond_5
    :try_start_4
    iget-boolean v0, p0, Lcom/google/b/a/a;->t:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/b/a/a;->a(ILjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    const-string v1, "Error closing"

    invoke-virtual {p0, v1, v0}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/b/a/a;)V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x10

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting a new connection to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/b/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/b/a/a;->t:Z

    iget v0, p0, Lcom/google/b/a/a;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/a;->H:I

    :try_start_0
    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/google/b/a/a;->s:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget v1, p0, Lcom/google/b/a/a;->B:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/b/a/a;->x:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "setUseSessionTickets"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/b/a/a;->y:Ljava/lang/reflect/Method;

    const-string v2, "setHostname"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/b/a/a;->z:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/google/b/a/a;->x:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/google/b/a/a;->y:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/b/a/a;->y:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/google/b/a/a;->z:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/b/a/a;->z:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v1, "Enabled SNI and Tickets"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    iget v3, p0, Lcom/google/b/a/a;->e:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lcom/google/b/a/a;->B:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot verify SSL socket without session"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :catch_0
    move-exception v0

    invoke-direct {p0, v7, v6}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout error connecting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    return-void

    :catch_1
    move-exception v2

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/google/b/a/a;->y:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/b/a/a;->z:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v7, v6}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket error connecting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    :try_start_6
    const-string v1, "Tickets failed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_1

    :catch_3
    move-exception v1

    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tickets or SNI failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error connecting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_3
    :try_start_8
    const-string v1, "SNI failed"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :cond_4
    :try_start_9
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    iget-object v3, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot verify hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    const-string v1, "Unexpected error connecting "

    invoke-virtual {p0, v1, v0}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    :try_start_a
    iput-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/io/OutputStream;)Lcom/google/protobuf/a/c;

    move-result-object v1

    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/a/b;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a/b;

    move-result-object v0

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/google/protobuf/a/c;->a(B)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/b/a/a;->m:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/b/a/a;->n:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/b/a/a;->o:I

    invoke-direct {p0}, Lcom/google/b/a/a;->o()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/b/a/b;

    invoke-direct {v3, p0, v0}, Lcom/google/b/a/b;-><init>(Lcom/google/b/a/a;Lcom/google/protobuf/a/b;)V

    const-string v0, "GCMReader"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/b/a/a;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_6
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v0, :cond_1

    :try_start_b
    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a/f;

    iget-boolean v2, p0, Lcom/google/b/a/a;->F:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/b/a/a;->F:Z

    new-instance v2, Lcom/google/b/a/a/j;

    invoke-direct {v2}, Lcom/google/b/a/a/j;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(Lcom/google/protobuf/a/c;Lcom/google/protobuf/a/f;)Z

    invoke-virtual {p0}, Lcom/google/b/a/a;->d()V

    :cond_7
    instance-of v2, v0, Lcom/google/b/a/a/j;

    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/google/b/a/a/d;

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/google/b/a/a;->a(Lcom/google/protobuf/a/f;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    :cond_8
    :try_start_c
    iget-boolean v2, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v1, v0}, Lcom/google/b/a/a;->a(Lcom/google/protobuf/a/c;Lcom/google/protobuf/a/f;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_6

    :catch_8
    move-exception v0

    iget-boolean v1, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    const-string v1, "Error writing "

    invoke-virtual {p0, v1, v0}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    const-string v1, "Unexpected error "

    invoke-virtual {p0, v1, v0}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/google/b/a/a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/b/a/a;Lcom/google/protobuf/a/b;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->k()B

    move-result v1

    iput v1, p0, Lcom/google/b/a/a;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    :goto_0
    iget-boolean v1, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/b/a/a;->c()V

    invoke-static {p1}, Lcom/google/b/a/a;->a(Lcom/google/protobuf/a/b;)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/b/a/a;->b()V

    iget-boolean v1, p0, Lcom/google/b/a/a;->h:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    const-string v2, "Error connectin "

    invoke-virtual {p0, v2, v1}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-gez v3, :cond_2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Graceful close (FIN) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FIN "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Error reading messages"

    invoke-virtual {p0, v2, v1}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v2, 0x13

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v2

    iget v1, p0, Lcom/google/b/a/a;->N:I

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/b/a/a;->N:I

    const/16 v1, 0x80

    if-le v2, v1, :cond_3

    iget v1, p0, Lcom/google/b/a/a;->N:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/a/a;->N:I

    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [B

    if-lez v2, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/protobuf/a/b;->c(I)[B

    move-result-object v1

    :cond_4
    int-to-byte v4, v3

    invoke-static {v4, v1}, Lcom/google/b/a/f;->a(B[B)Lcom/google/protobuf/a/f;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "CH-IN: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/google/b/a/f;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, p0, Lcom/google/b/a/a;->L:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/a/a;->L:I

    instance-of v1, v7, Lcom/google/b/a/a/e;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    check-cast v0, Lcom/google/b/a/a/e;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/b/a/a;->n:I

    iget v6, p0, Lcom/google/b/a/a;->o:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V

    :goto_2
    instance-of v1, v7, Lcom/google/b/a/a/n;

    if-eqz v1, :cond_7

    check-cast v7, Lcom/google/b/a/a/n;

    invoke-direct {p0, v7}, Lcom/google/b/a/a;->b(Lcom/google/b/a/a/n;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v8, v10

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-static {v7}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/b/a/a;->n:I

    iget v6, p0, Lcom/google/b/a/a;->o:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    if-nez v8, :cond_8

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    instance-of v1, v7, Lcom/google/b/a/a/j;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/b/a/a/h;

    invoke-direct {v1}, Lcom/google/b/a/a/h;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    :cond_9
    instance-of v1, v7, Lcom/google/b/a/a/d;

    if-eqz v1, :cond_a

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget v1, p0, Lcom/google/b/a/a;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/a/a;->n:I

    instance-of v1, v7, Lcom/google/b/a/a/e;

    if-eqz v1, :cond_e

    move-object v0, v7

    check-cast v0, Lcom/google/b/a/a/e;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/b/a/a/e;->p:Z

    if-eqz v1, :cond_e

    move v1, v10

    :goto_3
    iget v3, p0, Lcom/google/b/a/a;->n:I

    iget v4, p0, Lcom/google/b/a/a;->m:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/b/a/a;->j:I

    if-ge v3, v4, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    invoke-static {}, Lcom/google/b/a/f;->a()Lcom/google/b/a/a/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    :cond_c
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v7}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/google/b/a/f;->c(Lcom/google/protobuf/a/f;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;I)V

    instance-of v1, v7, Lcom/google/b/a/a/l;

    if-eqz v1, :cond_d

    move-object v0, v7

    check-cast v0, Lcom/google/b/a/a/l;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/b/a/a/l;->b:Lcom/google/b/a/a/g;

    if-eqz v1, :cond_d

    iget v2, v1, Lcom/google/b/a/a/g;->a:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_d

    iget-object v1, v1, Lcom/google/b/a/a/g;->b:Lcom/google/protobuf/a/a;

    new-instance v7, Lcom/google/b/a/a/q;

    invoke-direct {v7}, Lcom/google/b/a/a/q;-><init>()V

    invoke-virtual {v1}, Lcom/google/protobuf/a/a;->b()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v7, v1, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    iget-object v1, v7, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/google/b/a/a;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/b/a/a;->a()V

    :cond_d
    invoke-virtual {p0, v7}, Lcom/google/b/a/a;->b(Lcom/google/protobuf/a/f;)V

    goto/16 :goto_0

    :cond_e
    move v1, v9

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 859
    if-eqz p1, :cond_0

    .line 860
    iget-object v2, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    monitor-enter v2

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 868
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 870
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 872
    iget-object v3, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v3

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/e;

    .line 874
    iget v5, v0, Lcom/google/b/a/e;->a:I

    if-lt p2, v5, :cond_1

    .line 875
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 862
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 880
    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 882
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 883
    invoke-direct {p0, v2}, Lcom/google/b/a/a;->c(Ljava/util/List;)V

    .line 893
    :cond_2
    iget-object v3, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    monitor-enter v3

    .line 894
    :try_start_3
    iget-object v0, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 896
    if-lt p2, v0, :cond_5

    .line 897
    if-nez v2, :cond_4

    .line 901
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v5, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 910
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 913
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    move-object v1, v2

    .line 916
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 917
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 942
    if-eqz p1, :cond_0

    .line 943
    invoke-virtual {p0, p1}, Lcom/google/b/a/a;->a(Ljava/lang/String;)V

    .line 947
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 948
    :goto_0
    if-lez v0, :cond_1

    .line 949
    invoke-virtual {p0, p2}, Lcom/google/b/a/a;->b(Ljava/util/List;)V

    .line 953
    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 954
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 955
    iget-object v2, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    monitor-enter v2

    .line 956
    :try_start_0
    iget-object v3, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 947
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 958
    :cond_3
    return-void
.end method

.method private declared-synchronized a(Lcom/google/protobuf/a/c;Lcom/google/protobuf/a/f;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1012
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-direct {p0, v1}, Lcom/google/b/a/a;->c(Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1018
    :try_start_1
    iget v1, p0, Lcom/google/b/a/a;->n:I

    iget v3, p0, Lcom/google/b/a/a;->m:I

    if-le v1, v3, :cond_0

    .line 1019
    iget v1, p0, Lcom/google/b/a/a;->n:I

    invoke-static {p2, v1}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;I)V

    .line 1020
    iget v1, p0, Lcom/google/b/a/a;->n:I

    iput v1, p0, Lcom/google/b/a/a;->m:I

    .line 1022
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/google/b/a/a;->c(Lcom/google/protobuf/a/f;)V

    .line 1025
    invoke-static {p2}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;)B

    move-result v1

    invoke-virtual {p2}, Lcom/google/protobuf/a/f;->b()I

    move-result v7

    invoke-virtual {p1, v1}, Lcom/google/protobuf/a/c;->a(B)V

    invoke-virtual {p1, v7}, Lcom/google/protobuf/a/c;->c(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/c;)V

    invoke-virtual {p1}, Lcom/google/protobuf/a/c;->a()V

    .line 1026
    iget v1, p0, Lcom/google/b/a/a;->O:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/google/b/a/a;->O:I

    .line 1027
    iget v1, p0, Lcom/google/b/a/a;->M:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/a/a;->M:I

    .line 1029
    invoke-virtual {p0, p2}, Lcom/google/b/a/a;->a(Lcom/google/protobuf/a/f;)V

    .line 1031
    invoke-static {p2}, Lcom/google/b/a/f;->a(Lcom/google/protobuf/a/f;)B

    move-result v3

    .line 1032
    instance-of v1, p2, Lcom/google/b/a/a/e;

    if-eqz v1, :cond_1

    .line 1033
    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p2

    check-cast v0, Lcom/google/b/a/a/e;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/b/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/b/a/a;->n:I

    iget v6, p0, Lcom/google/b/a/a;->o:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V

    .line 1042
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CH-OUT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/b/a/f;->a(Ljava/lang/String;Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1045
    monitor-exit p0

    return v8

    .line 1022
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1012
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1038
    :cond_1
    const/4 v2, 0x1

    :try_start_4
    invoke-static {p2}, Lcom/google/b/a/f;->b(Lcom/google/protobuf/a/f;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/b/a/a;->n:I

    iget v6, p0, Lcom/google/b/a/a;->o:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/b/a/a;->a(ZILjava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private b(Lcom/google/b/a/a/n;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1195
    iget-object v1, p1, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    .line 1197
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/google/b/a/a/f;->a:I

    if-eqz v2, :cond_0

    .line 1198
    iget v0, v1, Lcom/google/b/a/a/f;->a:I

    .line 1199
    invoke-virtual {p0, p1}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a/n;)V

    .line 1200
    iget v0, p0, Lcom/google/b/a/a;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/a;->I:I

    .line 1201
    const/4 v0, 0x0

    .line 1227
    :goto_0
    return v0

    .line 1204
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/b/a/a;->P:I

    .line 1205
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/b/a/a;->K:J

    .line 1207
    iget v1, p0, Lcom/google/b/a/a;->G:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/a/a;->G:I

    .line 1208
    iput-boolean v0, p0, Lcom/google/b/a/a;->t:Z

    .line 1209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/b/a/a;->v:J

    .line 1212
    iget-object v1, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    iget v2, p0, Lcom/google/b/a/a;->C:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1216
    :cond_1
    iput-boolean v0, p0, Lcom/google/b/a/a;->i:Z

    .line 1219
    iget-object v1, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    monitor-enter v1

    .line 1220
    :try_start_0
    iget-object v2, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-virtual {p0, p1}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a/n;)V

    goto :goto_0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1075
    iget v0, p0, Lcom/google/b/a/a;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/a;->o:I

    .line 1080
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1081
    new-instance v0, Lcom/google/b/a/e;

    iget v1, p0, Lcom/google/b/a/a;->o:I

    invoke-direct {v0, v1, p1}, Lcom/google/b/a/e;-><init>(ILjava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1083
    :try_start_0
    iget-object v2, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :cond_0
    const/4 v0, 0x0

    .line 1092
    iget-object v1, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    monitor-enter v1

    .line 1093
    :try_start_1
    iget-object v2, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    .line 1095
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    .line 1097
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1099
    iget-object v1, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    monitor-enter v1

    .line 1100
    if-eqz v0, :cond_2

    .line 1101
    :try_start_2
    iget-object v2, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    iget v3, p0, Lcom/google/b/a/a;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1105
    iget v0, p0, Lcom/google/b/a/a;->o:I

    return v0

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1097
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1103
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/util/List;)V
    .locals 5

    .prologue
    .line 923
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 927
    iget-object v2, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v2

    .line 928
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/e;

    .line 929
    iget-object v4, v0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 930
    iget-object v4, v0, Lcom/google/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_0
    iget-object v4, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    invoke-virtual {p0, v1}, Lcom/google/b/a/a;->a(Ljava/util/List;)V

    .line 937
    return-void
.end method

.method private o()V
    .locals 7

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/google/b/a/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1120
    iget-object v1, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    monitor-enter v1

    .line 1121
    :try_start_1
    iget-object v0, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1122
    iget-object v3, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1116
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1124
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/b/a/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1125
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    iget-object v0, p0, Lcom/google/b/a/a;->k:Ljava/lang/String;

    .line 1128
    iget-object v1, p0, Lcom/google/b/a/a;->l:Ljava/lang/String;

    .line 1129
    new-instance v2, Lcom/google/b/a/a/m;

    invoke-direct {v2}, Lcom/google/b/a/a/m;-><init>()V

    .line 1131
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/m;->a(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1132
    const-string v3, "mcs.android.com"

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/m;->b(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1134
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->d(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1135
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "android-"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/b/a/a/m;->f(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1138
    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/google/b/a/a/m;->a(J)Lcom/google/b/a/a/m;

    .line 1140
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->c(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1141
    invoke-virtual {v2, v1}, Lcom/google/b/a/a/m;->e(Ljava/lang/String;)Lcom/google/b/a/a/m;

    .line 1142
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(I)Lcom/google/b/a/a/m;

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(Z)Lcom/google/b/a/a/m;

    .line 1148
    iget v0, p0, Lcom/google/b/a/a;->P:I

    if-lez v0, :cond_1

    .line 1150
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 1151
    const-string v1, "ERR"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1152
    iget v1, p0, Lcom/google/b/a/a;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1153
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    .line 1155
    :cond_1
    iget-wide v0, p0, Lcom/google/b/a/a;->K:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 1156
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 1157
    const-string v1, "CT"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1158
    iget-wide v4, p0, Lcom/google/b/a/a;->K:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1159
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    .line 1161
    :cond_2
    iget v0, p0, Lcom/google/b/a/a;->I:I

    if-lez v0, :cond_3

    .line 1162
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 1163
    const-string v1, "CONERR"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1164
    iget v1, p0, Lcom/google/b/a/a;->I:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1165
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    .line 1167
    :cond_3
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    .line 1168
    const-string v1, "CONOK"

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->a(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1169
    iget v1, p0, Lcom/google/b/a/a;->G:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a/a/r;->b(Ljava/lang/String;)Lcom/google/b/a/a/r;

    .line 1170
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->a(Lcom/google/b/a/a/r;)Lcom/google/b/a/a/m;

    .line 1172
    iget-object v0, p0, Lcom/google/b/a/a;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1173
    invoke-virtual {v2, v0}, Lcom/google/b/a/a/m;->g(Ljava/lang/String;)Lcom/google/b/a/a/m;

    goto :goto_1

    .line 1176
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/b/a/a;->a(Lcom/google/b/a/a/m;)V

    .line 1179
    iget-object v1, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 1180
    :try_start_3
    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1181
    invoke-virtual {p0, v2}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    .line 1182
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/b/a/a;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a/f;

    .line 1236
    invoke-virtual {p0, v0}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1238
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 510
    iput p1, p0, Lcom/google/b/a/a;->j:I

    .line 512
    return-void
.end method

.method protected a(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    return-void
.end method

.method protected a(Lcom/google/b/a/a/m;)V
    .locals 0

    .prologue
    .line 1189
    return-void
.end method

.method protected abstract a(Lcom/google/b/a/a/n;)V
.end method

.method protected a(Lcom/google/protobuf/a/f;)V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Send message  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/b/a/a;->k:Ljava/lang/String;

    .line 496
    iput-object p2, p0, Lcom/google/b/a/a;->l:Ljava/lang/String;

    .line 497
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/google/b/a/a;->w:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/google/b/a/a;->s:Ljavax/net/ssl/SSLSocketFactory;

    .line 1315
    return-void
.end method

.method public a(ZILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 1394
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 1298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/b/a/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/b/a/d;-><init>(Lcom/google/b/a/a;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1303
    return-void
.end method

.method protected abstract b(Lcom/google/protobuf/a/f;)V
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/b/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 757
    return-void
.end method

.method protected c(Lcom/google/protobuf/a/f;)V
    .locals 0

    .prologue
    .line 1004
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method

.method public final d(Lcom/google/protobuf/a/f;)V
    .locals 2

    .prologue
    .line 484
    iget-object v1, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/google/b/a/a;->A:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/b/a/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/google/b/a/a;->i:Z

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    .line 527
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x2

    goto :goto_0

    .line 527
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/google/b/a/a;->B:I

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-nez v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 732
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a;->F:Z

    .line 735
    new-instance v0, Lcom/google/b/a/a/j;

    invoke-direct {v0}, Lcom/google/b/a/a/j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/google/b/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1277
    :try_start_0
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v0, :cond_0

    .line 1278
    monitor-exit v1

    .line 1287
    :goto_0
    return-void

    .line 1280
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    .line 1281
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    iget-object v0, p0, Lcom/google/b/a/a;->s:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 1283
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/google/b/a/a;->s:Ljavax/net/ssl/SSLSocketFactory;

    .line 1286
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/b/a/c;

    invoke-direct {v1, p0}, Lcom/google/b/a/c;-><init>(Lcom/google/b/a/a;)V

    const-string v2, "GCMWriter"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/b/a/a;->D:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/b/a/a;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/google/b/a/a;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/b/a/a;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()J
    .locals 4

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/google/b/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/b/a/a;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/b/a/a;->v:J

    iget-wide v2, p0, Lcom/google/b/a/a;->u:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1329
    :cond_0
    const-wide/16 v0, -0x1

    .line 1331
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/b/a/a;->u:J

    iget-wide v2, p0, Lcom/google/b/a/a;->v:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final m()J
    .locals 4

    .prologue
    .line 1338
    iget-wide v0, p0, Lcom/google/b/a/a;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/b/a/a;->v:J

    iget-wide v2, p0, Lcom/google/b/a/a;->u:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/b/a/a;->v:J

    sub-long/2addr v0, v2

    .line 1341
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final n()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 1346
    const/4 v0, 0x0

    .line 1348
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    iget-boolean v1, p0, Lcom/google/b/a/a;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",port="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/b/a/a;->f:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nstreamId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",connects="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",connectAttempts="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",connectFailed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->I:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",packets="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->L:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->M:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/b/a/a;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 542
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a;->i:Z

    if-nez v1, :cond_1

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connecting="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 545
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pending="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/google/b/a/a;->u:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/b/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/b/a/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
