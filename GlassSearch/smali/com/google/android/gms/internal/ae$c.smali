.class Lcom/google/android/gms/internal/ae$c;
.super Lcom/google/android/gms/internal/aj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic uB:Lcom/google/android/gms/internal/ae;

.field private uC:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ae;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-direct {p0}, Lcom/google/android/gms/internal/aj$a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/internal/ae$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae$c;-><init>(Lcom/google/android/gms/internal/ae;)V

    return-void
.end method

.method private aE(I)Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ae;->bM()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->j(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->j(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ae;->b(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/common/api/BaseImplementation$b;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->i(Lcom/google/android/gms/internal/ae;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->i(Lcom/google/android/gms/internal/ae;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/BaseImplementation$b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ae;->b(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ae;->bL()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/ae$a;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ae$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/common/api/BaseImplementation$b;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;DZ)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "Deprecated callback: \"onStatusreceived\""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/ae$c;->b(JI)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/ae$c;->b(JI)V

    goto :goto_0
.end method

.method public aA(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ae$c;->bN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "ICastDeviceControllerListener.onDisconnected: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->aY(I)V

    goto :goto_0
.end method

.method public aB(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bL()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ae$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ae$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/BaseImplementation$b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Lcom/google/android/gms/common/api/BaseImplementation$b;)Lcom/google/android/gms/common/api/BaseImplementation$b;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aC(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae$c;->aE(I)Z

    goto :goto_0
.end method

.method public aD(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae$c;->aE(I)Z

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/ab;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "onApplicationStatusChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->f(Lcom/google/android/gms/internal/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ae$c$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ae$c$3;-><init>(Lcom/google/android/gms/internal/ae$c;Lcom/google/android/gms/internal/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/ag;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "onDeviceStatusChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->f(Lcom/google/android/gms/internal/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ae$c$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ae$c$2;-><init>(Lcom/google/android/gms/internal/ae$c;Lcom/google/android/gms/internal/ag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;[B)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bN()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v1}, Lcom/google/android/gms/internal/ae;->c(Lcom/google/android/gms/internal/ae;)V

    goto :goto_0
.end method

.method public bO()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ae;->bK()Lcom/google/android/gms/internal/ak;

    move-result-object v0

    const-string v1, "Receive (type=text, ns=%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ak;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->f(Lcom/google/android/gms/internal/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ae$c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ae$c$4;-><init>(Lcom/google/android/gms/internal/ae$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onApplicationDisconnected(I)V
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ae;->b(Lcom/google/android/gms/internal/ae;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ae$c;->aE(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->e(Lcom/google/android/gms/internal/ae;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ae$c;->uB:Lcom/google/android/gms/internal/ae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ae;->f(Lcom/google/android/gms/internal/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ae$c$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ae$c$1;-><init>(Lcom/google/android/gms/internal/ae$c;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
