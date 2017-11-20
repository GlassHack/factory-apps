.class final Lcom/google/maps/api/android/lib6/gmm6/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/c/n;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/o;->a:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/o;->a:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/o;->a:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/android/gms/maps/internal/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/o;->a:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/android/gms/maps/internal/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/ad;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/o;->a:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->b(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/em;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/em;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method
