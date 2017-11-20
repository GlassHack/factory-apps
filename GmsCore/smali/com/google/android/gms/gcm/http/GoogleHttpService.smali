.class public Lcom/google/android/gms/gcm/http/GoogleHttpService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/gcm/http/a;

.field private b:Lcom/google/android/gms/playlog/b;

.field private final c:Lcom/google/android/gms/http/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/gms/gcm/http/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/http/c;-><init>(Lcom/google/android/gms/gcm/http/GoogleHttpService;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->c:Lcom/google/android/gms/http/h;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/http/GoogleHttpService;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v3, 0x2

    const-wide/16 v6, 0x1

    .line 31
    invoke-static {}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a()Lcom/google/android/gms/common/analytics/a/d;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/gcm/http/d;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/http/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/http/d;->a(Ljava/lang/String;)Lcom/google/android/gms/gcm/http/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/http/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const-string v0, "GCM.VHTTP"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GCM.VHTTP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v2, "block"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP request blocked due to server rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/common/analytics/a/d;)V

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "GCM.HTTP"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http rule: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez v2, :cond_3

    const-string v2, "block"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "rewrite"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "rewrite"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "rewrite"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/gcm/http/a;->a(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "temporary_blocked"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP request blocked due to http moratorium: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/common/analytics/a/d;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "temporary_blocked"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "GCM.HTTP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP request blocked due to automatic backoff: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/common/analytics/a/d;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "block"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method private static a()Lcom/google/android/gms/common/analytics/a/d;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/gms/common/analytics/a/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/analytics/a/d;-><init>()V

    .line 184
    new-instance v1, Lcom/google/android/gms/common/analytics/a/b;

    invoke-direct {v1}, Lcom/google/android/gms/common/analytics/a/b;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    .line 185
    iget-object v1, v0, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    .line 186
    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/analytics/a/d;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->b:Lcom/google/android/gms/playlog/b;

    const-string v1, "GmsHttp"

    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/playlog/b;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/http/GoogleHttpService;Ljava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v6, 0x3

    .line 31
    invoke-static {}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a()Lcom/google/android/gms/common/analytics/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    iget-boolean v0, v2, Lcom/google/android/gms/gcm/http/a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/gcm/http/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v2, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    if-lez p2, :cond_3

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x1ad

    if-eq p2, v0, :cond_3

    :try_start_0
    iget-object v0, v2, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/gcm/nts/m;->b(Landroid/content/Context;)V

    :cond_1
    const/16 v0, 0x190

    if-lt p2, v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/common/analytics/a/d;->c:Lcom/google/android/gms/common/analytics/a/b;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a(Lcom/google/android/gms/common/analytics/a/d;)V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, v2, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/http/b;

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v5, 0x64

    if-lt v0, v5, :cond_4

    const-string v0, "GCM.HTTP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Backoff lookup map has grown too big. Not considering for backoff newly failing url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Lcom/google/android/gms/gcm/http/b;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Lcom/google/android/gms/gcm/http/b;-><init>(Lcom/google/android/gms/gcm/http/a;B)V

    iget-object v2, v2, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v2, v0, Lcom/google/android/gms/gcm/http/b;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/gcm/http/b;->a:I

    iget v2, v0, Lcom/google/android/gms/gcm/http/b;->a:I

    if-ne v2, v6, :cond_7

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c1940000000000L    # 9000.0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/google/android/gms/gcm/http/b;->b:I

    :cond_6
    :goto_1
    iput p2, v0, Lcom/google/android/gms/gcm/http/b;->d:I

    monitor-exit v4

    goto :goto_0

    :cond_7
    iget v2, v0, Lcom/google/android/gms/gcm/http/b;->a:I

    if-le v2, v6, :cond_6

    iget v2, v0, Lcom/google/android/gms/gcm/http/b;->b:I

    int-to-long v2, v2

    iget v5, v0, Lcom/google/android/gms/gcm/http/b;->a:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v0, Lcom/google/android/gms/gcm/http/b;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v5, v0, Lcom/google/android/gms/gcm/http/b;->b:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/gms/gcm/http/b;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 222
    const-string v0, "\nGoogleHttpService stats:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    const-string v1, "BackoffStatuses:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "failureCount: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/gcm/http/b;

    iget v1, v1, Lcom/google/android/gms/gcm/http/b;->a:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", currentBackoff: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/http/b;

    iget v0, v0, Lcom/google/android/gms/gcm/http/b;->b:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 84
    const-string v0, "GCM.HTTP"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "GCM.HTTP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Binding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->c:Lcom/google/android/gms/http/h;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    const-string v0, "GCM.HTTP"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "GCM.HTTP"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-static {}, Lcom/google/android/gms/gcm/http/a;->a()Lcom/google/android/gms/gcm/http/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    const-string v0, "gcm_hc_backoff"

    invoke-static {p0, v0, v4, v5}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, v1, Lcom/google/android/gms/gcm/http/a;->d:Z

    if-eq v2, v0, :cond_1

    iput-boolean v0, v1, Lcom/google/android/gms/gcm/http/a;->d:Z

    iget-object v0, v1, Lcom/google/android/gms/gcm/http/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->a:Lcom/google/android/gms/gcm/http/a;

    const-string v1, "gcm_hc_duration"

    const-wide/16 v2, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/gcm/http/a;->e:J

    .line 103
    new-instance v0, Lcom/google/android/gms/playlog/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/playlog/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->b:Lcom/google/android/gms/playlog/b;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->b:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->k()V

    .line 105
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/gcm/http/GoogleHttpService;->b:Lcom/google/android/gms/playlog/b;

    iget-object v0, v0, Lcom/google/android/gms/playlog/b;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/internal/i;->l()V

    .line 111
    const-string v0, "GCM.HTTP"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "GCM.HTTP"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x2

    return v0
.end method
