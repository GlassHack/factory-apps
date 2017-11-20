.class public final Lcom/google/maps/api/android/lib6/c/dm;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static d:Lcom/google/maps/api/android/lib6/b/h;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/c/dq;

.field private final b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->a:Lcom/google/maps/api/android/lib6/c/dq;
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


# virtual methods
.method public final declared-synchronized a()Lcom/google/maps/api/android/lib6/b/h;
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/c/dm;->d:Lcom/google/maps/api/android/lib6/b/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/maps/api/android/lib6/c/g;->a()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/e;->a(Landroid/content/Context;)Lcom/google/maps/api/android/lib6/b/e;

    new-instance v3, Lcom/google/maps/api/android/lib6/b/i;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/b/i;-><init>()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/b/i;->a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/b/i;->b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    const-string v4, "2.11.0"

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/b/i;->c(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/i;->a()Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/i;->b()Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/ae;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/b/i;->d(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/b/i;->a(Z)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/b/i;->a(I)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/b/i;->e(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/i;->c()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v1

    new-instance v2, Lcom/google/maps/api/android/lib6/c/dn;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/maps/api/android/lib6/c/dn;-><init>(B)V

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/h;->m()V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/b/h;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/f;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->c(Ljava/lang/String;)V

    const-string v0, "SYSTEM"

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/h;->n()V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    sput-object v1, Lcom/google/maps/api/android/lib6/c/dm;->d:Lcom/google/maps/api/android/lib6/b/h;

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/c/dm;->d:Lcom/google/maps/api/android/lib6/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/c/dq;)V
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    const-string v1, "Listener is null."

    invoke-static {p1, v1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/dm;->a:Lcom/google/maps/api/android/lib6/c/dq;

    if-nez v1, :cond_0

    :goto_0
    const-string v1, "Listener already set."

    invoke-static {v0, v1}, Lcom/google/c/a/cj;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dm;->a:Lcom/google/maps/api/android/lib6/c/dq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->c:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/c/dm;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dm;->a:Lcom/google/maps/api/android/lib6/c/dq;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/dq;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/dm;->b()V

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/c/dm;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
