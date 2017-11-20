.class public Lcom/google/android/gms/internal/su;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/sn;",
        ">;"
    }
.end annotation


# instance fields
.field private final aIp:Lcom/google/android/gms/internal/sr;

.field private final aIq:Lcom/google/android/gms/internal/sp;

.field private aIr:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mQ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/sr;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sr;

    iput-object v0, p0, Lcom/google/android/gms/internal/su;->aIp:Lcom/google/android/gms/internal/sr;

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIp:Lcom/google/android/gms/internal/sr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/sr;->a(Lcom/google/android/gms/internal/su;)V

    new-instance v0, Lcom/google/android/gms/internal/sp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    return-void
.end method

.method private c(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/sp;->a(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    return-void
.end method

.method private c(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/sp;->a(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/su;->rQ()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/sn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send log event.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Service was disconnected.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    goto :goto_0
.end method

.method private d(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/su;->rQ()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/xt;->toByteArray(Lcom/google/android/gms/internal/xt;)[B

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/sn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ss;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send log event.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Service was disconnected.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0
.end method

.method private rQ()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->J(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->rO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sp$a;

    iget-object v1, v0, Lcom/google/android/gms/internal/sp$a;->aIg:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->jh()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/sn;

    iget-object v5, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/sp$a;->aIe:Lcom/google/android/gms/internal/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/sp$a;->aIg:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    invoke-static {v0}, Lcom/google/android/gms/internal/xt;->toByteArray(Lcom/google/android/gms/internal/xt;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/internal/sn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ss;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Couldn\'t send cached log events to AndroidLog service.  Retaining in memory cache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/google/android/gms/internal/sp$a;->aIe:Lcom/google/android/gms/internal/ss;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ss;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/sp$a;->aIf:Lcom/google/android/gms/internal/so;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_3
    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->jh()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/sn;

    iget-object v5, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/sn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ss;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/sp$a;->aIe:Lcom/google/android/gms/internal/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/sp$a;->aIf:Lcom/google/android/gms/internal/so;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->jh()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sn;

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/sn;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ss;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method W(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/su;->rQ()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x675cf0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->f(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->d(Lcom/google/android/gms/internal/ss;Lcom/google/android/gms/internal/so;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/su;->aIr:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->c(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/su;->d(Lcom/google/android/gms/internal/ss;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method protected dC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/sn;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/sn$a;->dB(Landroid/os/IBinder;)Lcom/google/android/gms/internal/sn;

    move-result-object v0

    return-object v0
.end method

.method public getCacheCapacity()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->getCapacity()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheSize()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->getSize()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCacheEmpty()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCacheFull()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/sp;->isFull()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected synthetic q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/su;->dC(Landroid/os/IBinder;)Lcom/google/android/gms/internal/sn;

    move-result-object v0

    return-object v0
.end method

.method public setCacheCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIq:Lcom/google/android/gms/internal/sp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/sp;->jM(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIp:Lcom/google/android/gms/internal/sr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sr;->V(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->connect()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/su;->mQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/su;->aIp:Lcom/google/android/gms/internal/sr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/sr;->V(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/su;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
