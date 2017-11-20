.class public final Lcom/google/maps/api/android/lib6/c/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/p;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/maps/api/android/lib6/b/h;

.field private final d:Lcom/google/g/a/d;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Ljava/util/concurrent/Future;

.field private final g:Ljava/util/Random;

.field private h:I

.field private volatile i:Lcom/google/android/gms/maps/auth/d;

.field private j:J

.field private k:Z

.field private final l:Ljava/lang/Runnable;

.field private final m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/c/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/h;Lcom/google/g/a/d;Ljava/util/Random;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->k:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cf;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/cf;-><init>(Lcom/google/maps/api/android/lib6/c/ce;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/maps/api/android/lib6/c/cg;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/cg;-><init>(Lcom/google/maps/api/android/lib6/c/ce;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->m:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ce;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/c/ce;->d:Lcom/google/g/a/d;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/c/ce;->g:Ljava/util/Random;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/c/ce;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a(Ljava/io/FileInputStream;)Landroid/util/Pair;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/c/ce;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    :cond_0
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_1
    throw v0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/ce;Lcom/google/android/gms/maps/auth/d;)Lcom/google/android/gms/maps/auth/d;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ce;->i:Lcom/google/android/gms/maps/auth/d;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/h;)Lcom/google/maps/api/android/lib6/c/ce;
    .locals 7

    new-instance v4, Lcom/google/g/a/d;

    invoke-direct {v4}, Lcom/google/g/a/d;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v0, Lcom/google/maps/api/android/lib6/c/ce;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/maps/api/android/lib6/c/ce;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/maps/api/android/lib6/b/h;Lcom/google/g/a/d;Ljava/util/Random;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/c/ce;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/c/ce;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    const-string v1, "_m_t"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    const-string v1, "_m_t"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    invoke-virtual {v1, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/c/ce;)V
    .locals 10

    const/4 v4, -0x1

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/br;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->i:Lcom/google/android/gms/maps/auth/d;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "API_KEY"

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ce;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/auth/d;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->i:Lcom/google/android/gms/maps/auth/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    const-string v1, "ERROR_CODE"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v1

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->d()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->g()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->i:Lcom/google/android/gms/maps/auth/d;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->i:Lcom/google/android/gms/maps/auth/d;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->g:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    mul-double/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    const-wide v4, 0x40c3880000000000L    # 10000.0

    const-wide v6, 0x3ff999999999999aL    # 1.6

    iget v8, p0, Lcom/google/maps/api/android/lib6/c/ce;->h:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(J)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->h:I

    goto :goto_1

    :cond_0
    const-string v1, "API_TOKEN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v1, "VALIDITY_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VALIDITY_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_3
    invoke-direct {p0, v4, v2, v3}, Lcom/google/maps/api/android/lib6/c/ce;->b(Ljava/lang/String;J)V

    invoke-direct {p0, v4, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    const-string v1, "EXPIRY_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->g()V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized b(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->h:I

    const-wide/32 v0, 0x493e0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/c/ce;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/c/ce;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Authorization failure.  Please see https://developers.google.com/maps/documentation/android/start for how to correctly set up the map."

    invoke-static {v7, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/f;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ensure that the following correspond to what is in the API Console:\n\tAPI Key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\tPackage Name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tCertificate Fingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/maps/api/android/lib6/c/bq;->a(ILjava/lang/String;)V

    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/c/ce;->k:Z

    goto :goto_0

    :cond_1
    const-string v3, ":"

    invoke-static {v3}, Lcom/google/c/a/ca;->a(Ljava/lang/String;)Lcom/google/c/a/ca;

    move-result-object v3

    const-string v4, "The length may not be less than 1"

    invoke-static {v6, v4}, Lcom/google/c/a/cj;->a(ZLjava/lang/Object;)V

    new-instance v4, Lcom/google/c/a/ct;

    new-instance v5, Lcom/google/c/a/cu;

    invoke-direct {v5}, Lcom/google/c/a/cu;-><init>()V

    invoke-direct {v4, v5}, Lcom/google/c/a/ct;-><init>(Lcom/google/c/a/cy;)V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/c/a/cw;

    invoke-direct {v5, v4, v0}, Lcom/google/c/a/cw;-><init>(Lcom/google/c/a/ct;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Lcom/google/c/a/ca;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private e()Landroid/util/Pair;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    const-string v1, "_m_t"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/c/ce;->a(Ljava/io/FileInputStream;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.maps.auth.ApiTokenService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->g()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/h;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->j:J

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->c:Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/ce;->a(Ljava/lang/String;J)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->e()Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/c/ce;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0, v0, v2, v3}, Lcom/google/maps/api/android/lib6/c/ce;->b(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized run()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/ce;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/ce;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/maps/api/android/lib6/c/ch;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/c/ch;-><init>(Lcom/google/maps/api/android/lib6/c/ce;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/ce;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/ch;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
