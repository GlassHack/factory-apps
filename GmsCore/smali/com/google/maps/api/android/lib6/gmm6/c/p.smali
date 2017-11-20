.class final Lcom/google/maps/api/android/lib6/gmm6/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/ei;

.field private synthetic b:Lcom/google/maps/api/android/lib6/gmm6/c/n;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/n;Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->a:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/android/gms/maps/internal/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->a(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/android/gms/maps/internal/ad;

    move-result-object v0

    new-instance v2, Lcom/google/maps/api/android/lib6/c/eh;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->a:Lcom/google/maps/api/android/lib6/c/ei;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

    iget-object v5, v5, Lcom/google/maps/api/android/lib6/gmm6/c/n;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d(Lcom/google/maps/api/android/lib6/gmm6/c/m;)Lcom/google/maps/api/android/lib6/c/bu;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/c/eh;-><init>(Lcom/google/maps/api/android/lib6/c/el;Lcom/google/maps/api/android/lib6/c/ei;Lcom/google/maps/api/android/lib6/c/bu;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/maps/internal/ad;->a(Lcom/google/android/gms/maps/model/a/j;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->b:Lcom/google/maps/api/android/lib6/gmm6/c/n;

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

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/p;->a:Lcom/google/maps/api/android/lib6/c/ei;

    invoke-interface {v0, v3}, Lcom/google/maps/api/android/lib6/c/em;->a(Lcom/google/maps/api/android/lib6/c/ei;)V
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
