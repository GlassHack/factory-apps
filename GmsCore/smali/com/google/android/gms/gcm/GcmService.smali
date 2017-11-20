.class public Lcom/google/android/gms/gcm/GcmService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static a:I

.field static b:Lorg/apache/http/client/HttpClient;

.field static c:Lcom/google/android/gms/gcm/GcmService;

.field static d:Ljava/util/concurrent/Semaphore;

.field static e:Ljava/lang/String;

.field static p:Ljava/util/LinkedList;

.field static q:Ljava/text/SimpleDateFormat;

.field private static final t:J

.field private static u:I


# instance fields
.field f:Ljava/lang/String;

.field g:Lcom/google/android/gms/gcm/g;

.field h:Lcom/google/android/gms/gcm/ai;

.field i:Lcom/google/android/gms/gcm/au;

.field j:Lcom/google/android/gms/gcm/b;

.field k:Lcom/google/android/gms/gcm/ay;

.field l:Z

.field m:Lcom/google/android/gms/gcm/bf;

.field n:Lcom/google/android/gms/gcm/ab;

.field o:I

.field private r:Landroid/os/Handler;

.field private s:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/gcm/GcmService;->a:I

    .line 117
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->d:Ljava/util/concurrent/Semaphore;

    .line 120
    const-string v0, "0"

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/gcm/GcmService;->t:J

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    .line 167
    const/16 v0, 0x7d0

    sput v0, Lcom/google/android/gms/gcm/GcmService;->u:I

    .line 620
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->q:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->r:Landroid/os/Handler;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/GcmService;->l:Z

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmService;
    .locals 2

    .prologue
    .line 170
    sget v0, Lcom/google/android/gms/gcm/GcmService;->u:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;J)Lcom/google/android/gms/gcm/GcmService;
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/gcm/GcmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 185
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->d:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;I)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/google/android/gms/common/security/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Lcom/google/android/gms/common/net/SSLSessionCache;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a(ILcom/google/android/gms/common/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 547
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/gcm/ad;

    invoke-direct {v1, p0}, Lcom/google/android/gms/gcm/ad;-><init>(Lcom/google/android/gms/gcm/GcmService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 382
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Lcom/google/android/gms/gcm/GcmService;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ay;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GcmService;->stopSelf(I)V

    .line 329
    :cond_0
    return-void
.end method

.method static a(Ljava/io/PrintWriter;I)V
    .locals 3

    .prologue
    .line 666
    sget-object v1, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 667
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 668
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_0

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_1
    return-void

    :cond_0
    move p1, v0

    .line 672
    goto :goto_0

    .line 673
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 624
    sget-object v1, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 625
    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, -0x2

    .line 628
    :goto_0
    sget-object v2, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gms/gcm/GcmService;->q:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 630
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_1

    .line 631
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 633
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    const-string v0, "GCM"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    const-string v0, "GCM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_2
    return-void

    .line 625
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    iget-object v0, v0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->e()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 337
    const-string v0, "gcm_http_old"

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 338
    sget-object v0, Lcom/google/android/gms/common/security/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 342
    sget v0, Lcom/google/android/gms/gcm/GcmService;->a:I

    if-ne v2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->b:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 343
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->b:Lorg/apache/http/client/HttpClient;

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    sput v2, Lcom/google/android/gms/gcm/GcmService;->a:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 349
    const-string v0, "GCM"

    const-string v2, "Using fallback http"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Lcom/google/android/d/c/a;

    const-string v2, "Android-GCM/1.3"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 352
    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->b:Lorg/apache/http/client/HttpClient;

    goto :goto_0

    .line 354
    :cond_2
    const-string v0, "GCM"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    const-string v0, "GCM"

    const-string v2, "Initializing new http client"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_3
    new-instance v0, Lcom/google/android/gms/http/GoogleHttpClient;

    const-string v2, "Android-GCM/1.3"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 359
    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->b:Lorg/apache/http/client/HttpClient;

    .line 361
    const-string v1, "GCM"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "GCM"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 388
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->b(Landroid/content/Context;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Context;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->b()V

    .line 391
    invoke-static {p0}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/at;->a()V

    .line 392
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->c()V

    .line 393
    return-void
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    const-string v0, "0"

    sget-object v1, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "android_id"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    .line 521
    :cond_0
    const-string v0, "0"

    sget-object v1, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 6

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->d(Landroid/content/Context;)V

    .line 560
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->b(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/g;->a(Lorg/apache/http/client/HttpClient;)V

    invoke-static {p0}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/at;->a(Lorg/apache/http/client/HttpClient;)V

    .line 562
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ab;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    .line 563
    new-instance v1, Lcom/google/android/gms/common/b/a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    .line 564
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 565
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->h(Landroid/content/Context;)I

    move-result v0

    .line 566
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    sget-object v4, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/gcm/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->b(Landroid/content/Context;)V

    .line 570
    const-string v3, "0"

    sget-object v4, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 617
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 576
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 577
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ab;->d()V

    .line 579
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 584
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 585
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ab;->b()I

    move-result v0

    .line 589
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    sget-object v4, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/gcm/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {v2}, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a(Landroid/content/ContentResolver;)V

    .line 593
    const-string v2, "gcm_enable_registration2"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/google/android/gms/gcm/PushMessagingRegistrarProxy;->a:I

    .line 598
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    const-string v3, "gtalk_rmq_ack_interval"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/b;->a(I)V

    .line 602
    const-string v2, "gtalk_ssl_handshake_timeout_ms"

    const v3, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 605
    invoke-static {p0, v2}, Lcom/google/android/gms/gcm/GcmService;->a(Landroid/content/Context;I)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 607
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/gcm/b;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 609
    const-string v2, "gtalk_hostname"

    const-string v3, "mtalk.google.com"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    iput-object v1, v2, Lcom/google/android/gms/gcm/b;->d:Ljava/lang/String;

    .line 614
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    iput v0, v1, Lcom/google/android/gms/gcm/b;->e:I

    .line 616
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/au;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 533
    const-class v1, Lcom/google/android/gms/gcm/GcmService;

    monitor-enter v1

    :try_start_0
    const-string v0, "0"

    sget-object v2, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {p0}, Lcom/google/android/gms/gcm/GcmService;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 535
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    monitor-exit v1

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/gcm/GcmService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 642
    const-string v0, "Status: not provisioned"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    iget v0, v0, Lcom/google/android/gms/gcm/b;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 646
    const-string v0, "Disabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/ai;->a(Ljava/io/PrintWriter;)V

    .line 652
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/au;->a(Ljava/io/PrintWriter;)V

    .line 661
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/gcm/d;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/gcm/d;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cell tower: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/gcm/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 654
    const-string v0, "Connecting"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/au;->a(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 658
    :cond_4
    const-string v0, "Not connected"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/au;->a(Ljava/io/PrintWriter;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 690
    invoke-virtual {p0, p2}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/io/PrintWriter;)V

    .line 691
    const/16 v0, 0xc8

    invoke-static {p2, v0}, Lcom/google/android/gms/gcm/GcmService;->a(Ljava/io/PrintWriter;I)V

    .line 692
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->a()Lcom/google/android/gms/gcm/nts/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string v0, "GcmNetworkManager unavailable."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 221
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 223
    const-string v0, "gcm_service_enable"

    invoke-static {p0, v0, v8}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/gcm/GcmService;->o:I

    .line 226
    invoke-static {p0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 227
    invoke-static {p0}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/Context;)V

    .line 229
    iget v0, p0, Lcom/google/android/gms/gcm/GcmService;->o:I

    if-ne v0, v9, :cond_0

    .line 307
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    .line 236
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->s:Landroid/os/PowerManager;

    .line 238
    new-instance v0, Lcom/google/android/gms/gcm/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    .line 239
    new-instance v0, Lcom/google/android/gms/gcm/ay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/ay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    .line 241
    new-instance v0, Lcom/google/android/gms/gcm/ai;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/ai;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/au;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    .line 242
    invoke-static {}, Lcom/google/android/gms/gcm/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Lcom/google/android/gms/gcm/bf;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/bf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->m:Lcom/google/android/gms/gcm/bf;

    .line 246
    :cond_1
    new-instance v0, Lcom/google/android/gms/gcm/g;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->r:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->m:Lcom/google/android/gms/gcm/bf;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/gcm/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/gcm/bf;Lcom/google/android/gms/gcm/ay;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/android/gms/gcm/au;)V

    .line 250
    new-instance v0, Lcom/google/android/gms/gcm/b;

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    iget-object v4, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    iget-object v5, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    iget-object v6, p0, Lcom/google/android/gms/gcm/GcmService;->m:Lcom/google/android/gms/gcm/bf;

    iget-object v7, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/gcm/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/gcm/ay;Lcom/google/android/gms/gcm/ai;Lcom/google/android/gms/gcm/au;Lcom/google/android/gms/gcm/g;Lcom/google/android/gms/gcm/bf;Lcom/google/android/gms/gcm/ab;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/au;->a()V

    .line 260
    sput-object p0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.intent.action.MCS_HEARTBEAT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v1, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/gcm/GcmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/google/android/gms/gcm/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    :cond_2
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/gcm/GcmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    const-string v2, "plugged"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 295
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    if-eq v0, v8, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v8

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/g;->a(Z)V

    .line 298
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v0, "com.google.android.gms.gcm.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v0, "com.google.android.gms.gcm.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/gcm/GcmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->c()V

    .line 306
    sget-object v0, Lcom/google/android/gms/gcm/GcmService;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 295
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/gcm/GcmService;->c:Lcom/google/android/gms/gcm/GcmService;

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    iget-object v0, v0, Lcom/google/android/gms/gcm/au;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->c()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->h:Lcom/google/android/gms/gcm/ai;

    iget-object v0, v0, Lcom/google/android/gms/gcm/ai;->a:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->c()V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GcmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/g;->a()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    if-eqz v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->a()V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmService;->k:Lcom/google/android/gms/gcm/ay;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/ay;->a()V

    .line 217
    :cond_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 401
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "GCM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GcmService start "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "gcm_service_enable"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/gcm/GcmService;->o:I

    :cond_0
    iget v3, p0, Lcom/google/android/gms/gcm/GcmService;->o:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ab;->d()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GcmService;->stopSelf()V

    .line 404
    :cond_2
    :goto_1
    return v0

    .line 401
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->b()V

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    invoke-virtual {v3, p0, p1}, Lcom/google/android/gms/gcm/au;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "com.google.android.gcm.intent.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->a(I)V

    move v0, v1

    goto :goto_1

    :cond_8
    const-string v3, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "success"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->b()V

    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 402
    :catch_0
    move-exception v1

    .line 403
    const-string v2, "GCM"

    const-string v3, "Failed to start GCM"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 401
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->n:Lcom/google/android/gms/gcm/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/ab;->d()V

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmService;->j:Lcom/google/android/gms/gcm/b;

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/b;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmService;->a()V

    :cond_a
    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->a(I)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->stopSelf(I)V

    goto/16 :goto_1

    :cond_c
    if-nez p1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/au;->a(Z)V

    :cond_d
    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->a(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    if-nez v3, :cond_f

    invoke-virtual {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->stopSelf(I)V

    goto/16 :goto_1

    :cond_f
    const-string v3, "com.google.android.gcm.intent.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->g:Lcom/google/android/gms/gcm/g;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/gcm/g;->a(Landroid/content/Intent;)V

    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->a(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->f:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/gcm/GcmService;->i:Lcom/google/android/gms/gcm/au;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/au;->a(Z)V

    :cond_11
    invoke-direct {p0, p3}, Lcom/google/android/gms/gcm/GcmService;->a(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_1
.end method
