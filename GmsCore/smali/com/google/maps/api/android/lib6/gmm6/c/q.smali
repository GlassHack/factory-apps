.class public final Lcom/google/maps/api/android/lib6/gmm6/c/q;
.super Lcom/google/maps/api/android/lib6/gmm6/o/h;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/x;
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Landroid/os/Handler;

.field private d:Lcom/google/android/gms/maps/internal/ap;

.field private e:Lcom/google/android/gms/maps/internal/ap;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/c/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/h;-><init>()V

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->f:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->g:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->h:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->i:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->j:Z

    const-string v0, "Handler is null"

    invoke-static {p1, v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/c/y;Landroid/os/Handler;)Lcom/google/maps/api/android/lib6/gmm6/c/q;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/q;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/q;-><init>(Landroid/os/Handler;)V

    invoke-interface {p0, v0}, Lcom/google/maps/api/android/lib6/c/y;->a(Lcom/google/maps/api/android/lib6/gmm6/o/h;)V

    return-object v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/internal/ap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->d:Lcom/google/android/gms/maps/internal/ap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Z)Z
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->i:Z

    iput-boolean p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->j:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->d:Lcom/google/android/gms/maps/internal/ap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e:Lcom/google/android/gms/maps/internal/ap;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/maps/internal/ap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e:Lcom/google/android/gms/maps/internal/ap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/q;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->d:Lcom/google/android/gms/maps/internal/ap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->d:Lcom/google/android/gms/maps/internal/ap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->d:Lcom/google/android/gms/maps/internal/ap;

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e:Lcom/google/android/gms/maps/internal/ap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e:Lcom/google/android/gms/maps/internal/ap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/q;->e:Lcom/google/android/gms/maps/internal/ap;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/ap;

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/ap;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method
