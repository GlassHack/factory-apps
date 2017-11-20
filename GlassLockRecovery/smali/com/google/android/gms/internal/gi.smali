.class public Lcom/google/android/gms/internal/gi;
.super Lcom/google/android/gms/common/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/gb;",
        ">;"
    }
.end annotation


# instance fields
.field private final Qt:Lcom/google/android/gms/internal/gf;

.field private final Qu:Lcom/google/android/gms/internal/gd;

.field private Qv:Z

.field private final to:Ljava/lang/Object;

.field private final vz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gf;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gf;

    iput-object v0, p0, Lcom/google/android/gms/internal/gi;->Qt:Lcom/google/android/gms/internal/gf;

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qt:Lcom/google/android/gms/internal/gf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gf;->a(Lcom/google/android/gms/internal/gi;)V

    new-instance v0, Lcom/google/android/gms/internal/gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    return-void
.end method

.method private c(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    return-void
.end method

.method private c(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->gr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gb;

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
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

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Service was disconnected.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    goto :goto_0
.end method

.method private d(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->gr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gb;

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/he;->toByteArray(Lcom/google/android/gms/internal/he;)[B

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gg;[B)V
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

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "PlayLoggerImpl"

    const-string v1, "Service was disconnected.  Will try caching."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0
.end method

.method private gr()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->h(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->gp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gd$a;

    iget-object v1, v0, Lcom/google/android/gms/internal/gd$a;->Ql:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->cM()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gb;

    iget-object v5, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/gd$a;->Qj:Lcom/google/android/gms/internal/gg;

    iget-object v0, v0, Lcom/google/android/gms/internal/gd$a;->Ql:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->toByteArray(Lcom/google/android/gms/internal/he;)[B

    move-result-object v0

    invoke-interface {v1, v5, v6, v0}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gg;[B)V
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
    iget-object v1, v0, Lcom/google/android/gms/internal/gd$a;->Qj:Lcom/google/android/gms/internal/gg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/gms/internal/gd$a;->Qk:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_3
    move-object v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->cM()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gb;

    iget-object v5, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gg;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/gd$a;->Qj:Lcom/google/android/gms/internal/gg;

    iget-object v0, v0, Lcom/google/android/gms/internal/gd$a;->Qk:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gb;

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->vz:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/gg;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->f(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->d(Lcom/google/android/gms/internal/gg;Lcom/google/android/gms/internal/gc;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->c(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->d(Lcom/google/android/gms/internal/gg;Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected ba(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gb$a;->aZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    move-result-object v0

    return-object v0
.end method

.method public getCacheCapacity()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->getCapacity()I

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

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->getSize()I

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

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.internal.IPlayLogService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.playlog.service.START"

    return-object v0
.end method

.method protected synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gi;->ba(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gb;

    move-result-object v0

    return-object v0
.end method

.method public isCacheEmpty()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->isEmpty()Z

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

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->isFull()Z

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

.method m(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gi;->Qv:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gi;->gr()V

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

.method public setCacheCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qu:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gd;->dM(I)V

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

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qt:Lcom/google/android/gms/internal/gf;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gf;->l(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->connect()V

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

    iget-object v1, p0, Lcom/google/android/gms/internal/gi;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gi;->Qt:Lcom/google/android/gms/internal/gf;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gf;->l(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gi;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
